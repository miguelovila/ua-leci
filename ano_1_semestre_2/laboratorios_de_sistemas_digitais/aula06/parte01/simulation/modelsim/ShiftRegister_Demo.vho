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

-- DATE "04/21/2022 10:05:43"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	shiftregister_demo IS
    PORT (
	sw : IN std_logic_vector(0 DOWNTO 0);
	clock_50 : IN std_logic;
	ledr : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END shiftregister_demo;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF shiftregister_demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_ledr : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqd|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \ledr[1]~output_o\ : std_logic;
SIGNAL \ledr[2]~output_o\ : std_logic;
SIGNAL \ledr[3]~output_o\ : std_logic;
SIGNAL \ledr[4]~output_o\ : std_logic;
SIGNAL \ledr[5]~output_o\ : std_logic;
SIGNAL \ledr[6]~output_o\ : std_logic;
SIGNAL \ledr[7]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \freqd|s_divcounter[0]~26_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[12]~51\ : std_logic;
SIGNAL \freqd|s_divcounter[13]~52_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[13]~53\ : std_logic;
SIGNAL \freqd|s_divcounter[14]~54_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[14]~55\ : std_logic;
SIGNAL \freqd|s_divcounter[15]~56_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[15]~57\ : std_logic;
SIGNAL \freqd|s_divcounter[16]~58_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[16]~59\ : std_logic;
SIGNAL \freqd|s_divcounter[17]~60_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[17]~61\ : std_logic;
SIGNAL \freqd|s_divcounter[18]~62_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[18]~63\ : std_logic;
SIGNAL \freqd|s_divcounter[19]~64_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[19]~65\ : std_logic;
SIGNAL \freqd|s_divcounter[20]~66_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[20]~67\ : std_logic;
SIGNAL \freqd|s_divcounter[21]~68_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[21]~69\ : std_logic;
SIGNAL \freqd|s_divcounter[22]~70_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[22]~71\ : std_logic;
SIGNAL \freqd|s_divcounter[23]~72_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[23]~73\ : std_logic;
SIGNAL \freqd|s_divcounter[24]~74_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[24]~75\ : std_logic;
SIGNAL \freqd|s_divcounter[25]~76_combout\ : std_logic;
SIGNAL \freqd|LessThan0~4_combout\ : std_logic;
SIGNAL \freqd|clkout~4_combout\ : std_logic;
SIGNAL \freqd|LessThan0~5_combout\ : std_logic;
SIGNAL \freqd|LessThan0~2_combout\ : std_logic;
SIGNAL \freqd|LessThan0~3_combout\ : std_logic;
SIGNAL \freqd|clkout~3_combout\ : std_logic;
SIGNAL \freqd|LessThan0~0_combout\ : std_logic;
SIGNAL \freqd|clkout~0_combout\ : std_logic;
SIGNAL \freqd|clkout~1_combout\ : std_logic;
SIGNAL \freqd|LessThan0~1_combout\ : std_logic;
SIGNAL \freqd|LessThan0~6_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[0]~27\ : std_logic;
SIGNAL \freqd|s_divcounter[1]~28_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[1]~29\ : std_logic;
SIGNAL \freqd|s_divcounter[2]~30_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[2]~31\ : std_logic;
SIGNAL \freqd|s_divcounter[3]~32_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[3]~33\ : std_logic;
SIGNAL \freqd|s_divcounter[4]~34_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[4]~35\ : std_logic;
SIGNAL \freqd|s_divcounter[5]~36_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[5]~37\ : std_logic;
SIGNAL \freqd|s_divcounter[6]~38_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[6]~39\ : std_logic;
SIGNAL \freqd|s_divcounter[7]~40_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[7]~41\ : std_logic;
SIGNAL \freqd|s_divcounter[8]~42_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[8]~43\ : std_logic;
SIGNAL \freqd|s_divcounter[9]~44_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[9]~45\ : std_logic;
SIGNAL \freqd|s_divcounter[10]~46_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[10]~47\ : std_logic;
SIGNAL \freqd|s_divcounter[11]~48_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[11]~49\ : std_logic;
SIGNAL \freqd|s_divcounter[12]~50_combout\ : std_logic;
SIGNAL \freqd|clkout~2_combout\ : std_logic;
SIGNAL \freqd|clkout~5_combout\ : std_logic;
SIGNAL \freqd|clkout~6_combout\ : std_logic;
SIGNAL \freqd|clkout~7_combout\ : std_logic;
SIGNAL \freqd|clkout~8_combout\ : std_logic;
SIGNAL \freqd|clkout~9_combout\ : std_logic;
SIGNAL \freqd|clkout~q\ : std_logic;
SIGNAL \freqd|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \shreg|sdataout[1]~feeder_combout\ : std_logic;
SIGNAL \shreg|sdataout[2]~feeder_combout\ : std_logic;
SIGNAL \shreg|sdataout[3]~feeder_combout\ : std_logic;
SIGNAL \shreg|sdataout[4]~feeder_combout\ : std_logic;
SIGNAL \shreg|sdataout[5]~feeder_combout\ : std_logic;
SIGNAL \shreg|sdataout[6]~feeder_combout\ : std_logic;
SIGNAL \shreg|sdataout[7]~feeder_combout\ : std_logic;
SIGNAL \shreg|sdataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freqd|s_divcounter\ : std_logic_vector(25 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sw <= sw;
ww_clock_50 <= clock_50;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);

\freqd|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqd|clkout~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(0),
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\ledr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(1),
	devoe => ww_devoe,
	o => \ledr[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\ledr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(2),
	devoe => ww_devoe,
	o => \ledr[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\ledr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(3),
	devoe => ww_devoe,
	o => \ledr[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\ledr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(4),
	devoe => ww_devoe,
	o => \ledr[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\ledr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(5),
	devoe => ww_devoe,
	o => \ledr[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\ledr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(6),
	devoe => ww_devoe,
	o => \ledr[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\ledr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \shreg|sdataout\(7),
	devoe => ww_devoe,
	o => \ledr[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G4
\clock_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X60_Y6_N6
\freqd|s_divcounter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[0]~26_combout\ = \freqd|s_divcounter\(0) $ (VCC)
-- \freqd|s_divcounter[0]~27\ = CARRY(\freqd|s_divcounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(0),
	datad => VCC,
	combout => \freqd|s_divcounter[0]~26_combout\,
	cout => \freqd|s_divcounter[0]~27\);

-- Location: LCCOMB_X60_Y6_N30
\freqd|s_divcounter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[12]~50_combout\ = (\freqd|s_divcounter\(12) & (\freqd|s_divcounter[11]~49\ $ (GND))) # (!\freqd|s_divcounter\(12) & (!\freqd|s_divcounter[11]~49\ & VCC))
-- \freqd|s_divcounter[12]~51\ = CARRY((\freqd|s_divcounter\(12) & !\freqd|s_divcounter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(12),
	datad => VCC,
	cin => \freqd|s_divcounter[11]~49\,
	combout => \freqd|s_divcounter[12]~50_combout\,
	cout => \freqd|s_divcounter[12]~51\);

-- Location: LCCOMB_X60_Y5_N0
\freqd|s_divcounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[13]~52_combout\ = (\freqd|s_divcounter\(13) & (!\freqd|s_divcounter[12]~51\)) # (!\freqd|s_divcounter\(13) & ((\freqd|s_divcounter[12]~51\) # (GND)))
-- \freqd|s_divcounter[13]~53\ = CARRY((!\freqd|s_divcounter[12]~51\) # (!\freqd|s_divcounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(13),
	datad => VCC,
	cin => \freqd|s_divcounter[12]~51\,
	combout => \freqd|s_divcounter[13]~52_combout\,
	cout => \freqd|s_divcounter[13]~53\);

-- Location: FF_X59_Y6_N21
\freqd|s_divcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \freqd|s_divcounter[13]~52_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(13));

-- Location: LCCOMB_X60_Y5_N2
\freqd|s_divcounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[14]~54_combout\ = (\freqd|s_divcounter\(14) & (\freqd|s_divcounter[13]~53\ $ (GND))) # (!\freqd|s_divcounter\(14) & (!\freqd|s_divcounter[13]~53\ & VCC))
-- \freqd|s_divcounter[14]~55\ = CARRY((\freqd|s_divcounter\(14) & !\freqd|s_divcounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(14),
	datad => VCC,
	cin => \freqd|s_divcounter[13]~53\,
	combout => \freqd|s_divcounter[14]~54_combout\,
	cout => \freqd|s_divcounter[14]~55\);

-- Location: FF_X60_Y5_N3
\freqd|s_divcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[14]~54_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(14));

-- Location: LCCOMB_X60_Y5_N4
\freqd|s_divcounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[15]~56_combout\ = (\freqd|s_divcounter\(15) & (!\freqd|s_divcounter[14]~55\)) # (!\freqd|s_divcounter\(15) & ((\freqd|s_divcounter[14]~55\) # (GND)))
-- \freqd|s_divcounter[15]~57\ = CARRY((!\freqd|s_divcounter[14]~55\) # (!\freqd|s_divcounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(15),
	datad => VCC,
	cin => \freqd|s_divcounter[14]~55\,
	combout => \freqd|s_divcounter[15]~56_combout\,
	cout => \freqd|s_divcounter[15]~57\);

-- Location: FF_X60_Y5_N5
\freqd|s_divcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[15]~56_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(15));

-- Location: LCCOMB_X60_Y5_N6
\freqd|s_divcounter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[16]~58_combout\ = (\freqd|s_divcounter\(16) & (\freqd|s_divcounter[15]~57\ $ (GND))) # (!\freqd|s_divcounter\(16) & (!\freqd|s_divcounter[15]~57\ & VCC))
-- \freqd|s_divcounter[16]~59\ = CARRY((\freqd|s_divcounter\(16) & !\freqd|s_divcounter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(16),
	datad => VCC,
	cin => \freqd|s_divcounter[15]~57\,
	combout => \freqd|s_divcounter[16]~58_combout\,
	cout => \freqd|s_divcounter[16]~59\);

-- Location: FF_X60_Y5_N7
\freqd|s_divcounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[16]~58_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(16));

-- Location: LCCOMB_X60_Y5_N8
\freqd|s_divcounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[17]~60_combout\ = (\freqd|s_divcounter\(17) & (!\freqd|s_divcounter[16]~59\)) # (!\freqd|s_divcounter\(17) & ((\freqd|s_divcounter[16]~59\) # (GND)))
-- \freqd|s_divcounter[17]~61\ = CARRY((!\freqd|s_divcounter[16]~59\) # (!\freqd|s_divcounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(17),
	datad => VCC,
	cin => \freqd|s_divcounter[16]~59\,
	combout => \freqd|s_divcounter[17]~60_combout\,
	cout => \freqd|s_divcounter[17]~61\);

-- Location: FF_X60_Y5_N9
\freqd|s_divcounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[17]~60_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(17));

-- Location: LCCOMB_X60_Y5_N10
\freqd|s_divcounter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[18]~62_combout\ = (\freqd|s_divcounter\(18) & (\freqd|s_divcounter[17]~61\ $ (GND))) # (!\freqd|s_divcounter\(18) & (!\freqd|s_divcounter[17]~61\ & VCC))
-- \freqd|s_divcounter[18]~63\ = CARRY((\freqd|s_divcounter\(18) & !\freqd|s_divcounter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(18),
	datad => VCC,
	cin => \freqd|s_divcounter[17]~61\,
	combout => \freqd|s_divcounter[18]~62_combout\,
	cout => \freqd|s_divcounter[18]~63\);

-- Location: FF_X60_Y5_N11
\freqd|s_divcounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[18]~62_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(18));

-- Location: LCCOMB_X60_Y5_N12
\freqd|s_divcounter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[19]~64_combout\ = (\freqd|s_divcounter\(19) & (!\freqd|s_divcounter[18]~63\)) # (!\freqd|s_divcounter\(19) & ((\freqd|s_divcounter[18]~63\) # (GND)))
-- \freqd|s_divcounter[19]~65\ = CARRY((!\freqd|s_divcounter[18]~63\) # (!\freqd|s_divcounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(19),
	datad => VCC,
	cin => \freqd|s_divcounter[18]~63\,
	combout => \freqd|s_divcounter[19]~64_combout\,
	cout => \freqd|s_divcounter[19]~65\);

-- Location: FF_X60_Y5_N13
\freqd|s_divcounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[19]~64_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(19));

-- Location: LCCOMB_X60_Y5_N14
\freqd|s_divcounter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[20]~66_combout\ = (\freqd|s_divcounter\(20) & (\freqd|s_divcounter[19]~65\ $ (GND))) # (!\freqd|s_divcounter\(20) & (!\freqd|s_divcounter[19]~65\ & VCC))
-- \freqd|s_divcounter[20]~67\ = CARRY((\freqd|s_divcounter\(20) & !\freqd|s_divcounter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(20),
	datad => VCC,
	cin => \freqd|s_divcounter[19]~65\,
	combout => \freqd|s_divcounter[20]~66_combout\,
	cout => \freqd|s_divcounter[20]~67\);

-- Location: FF_X60_Y5_N15
\freqd|s_divcounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[20]~66_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(20));

-- Location: LCCOMB_X60_Y5_N16
\freqd|s_divcounter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[21]~68_combout\ = (\freqd|s_divcounter\(21) & (!\freqd|s_divcounter[20]~67\)) # (!\freqd|s_divcounter\(21) & ((\freqd|s_divcounter[20]~67\) # (GND)))
-- \freqd|s_divcounter[21]~69\ = CARRY((!\freqd|s_divcounter[20]~67\) # (!\freqd|s_divcounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(21),
	datad => VCC,
	cin => \freqd|s_divcounter[20]~67\,
	combout => \freqd|s_divcounter[21]~68_combout\,
	cout => \freqd|s_divcounter[21]~69\);

-- Location: FF_X60_Y5_N17
\freqd|s_divcounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[21]~68_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(21));

-- Location: LCCOMB_X60_Y5_N18
\freqd|s_divcounter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[22]~70_combout\ = (\freqd|s_divcounter\(22) & (\freqd|s_divcounter[21]~69\ $ (GND))) # (!\freqd|s_divcounter\(22) & (!\freqd|s_divcounter[21]~69\ & VCC))
-- \freqd|s_divcounter[22]~71\ = CARRY((\freqd|s_divcounter\(22) & !\freqd|s_divcounter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(22),
	datad => VCC,
	cin => \freqd|s_divcounter[21]~69\,
	combout => \freqd|s_divcounter[22]~70_combout\,
	cout => \freqd|s_divcounter[22]~71\);

-- Location: FF_X60_Y5_N19
\freqd|s_divcounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[22]~70_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(22));

-- Location: LCCOMB_X60_Y5_N20
\freqd|s_divcounter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[23]~72_combout\ = (\freqd|s_divcounter\(23) & (!\freqd|s_divcounter[22]~71\)) # (!\freqd|s_divcounter\(23) & ((\freqd|s_divcounter[22]~71\) # (GND)))
-- \freqd|s_divcounter[23]~73\ = CARRY((!\freqd|s_divcounter[22]~71\) # (!\freqd|s_divcounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(23),
	datad => VCC,
	cin => \freqd|s_divcounter[22]~71\,
	combout => \freqd|s_divcounter[23]~72_combout\,
	cout => \freqd|s_divcounter[23]~73\);

-- Location: FF_X60_Y5_N21
\freqd|s_divcounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[23]~72_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(23));

-- Location: LCCOMB_X60_Y5_N22
\freqd|s_divcounter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[24]~74_combout\ = (\freqd|s_divcounter\(24) & (\freqd|s_divcounter[23]~73\ $ (GND))) # (!\freqd|s_divcounter\(24) & (!\freqd|s_divcounter[23]~73\ & VCC))
-- \freqd|s_divcounter[24]~75\ = CARRY((\freqd|s_divcounter\(24) & !\freqd|s_divcounter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(24),
	datad => VCC,
	cin => \freqd|s_divcounter[23]~73\,
	combout => \freqd|s_divcounter[24]~74_combout\,
	cout => \freqd|s_divcounter[24]~75\);

-- Location: FF_X60_Y5_N23
\freqd|s_divcounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[24]~74_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(24));

-- Location: LCCOMB_X60_Y5_N24
\freqd|s_divcounter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[25]~76_combout\ = \freqd|s_divcounter[24]~75\ $ (\freqd|s_divcounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqd|s_divcounter\(25),
	cin => \freqd|s_divcounter[24]~75\,
	combout => \freqd|s_divcounter[25]~76_combout\);

-- Location: FF_X60_Y5_N25
\freqd|s_divcounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[25]~76_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(25));

-- Location: LCCOMB_X60_Y5_N26
\freqd|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~4_combout\ = ((!\freqd|s_divcounter\(18) & !\freqd|s_divcounter\(17))) # (!\freqd|s_divcounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(18),
	datac => \freqd|s_divcounter\(17),
	datad => \freqd|s_divcounter\(23),
	combout => \freqd|LessThan0~4_combout\);

-- Location: LCCOMB_X60_Y5_N30
\freqd|clkout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~4_combout\ = (\freqd|s_divcounter\(19) & (\freqd|s_divcounter\(21) & (\freqd|s_divcounter\(20) & \freqd|s_divcounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(19),
	datab => \freqd|s_divcounter\(21),
	datac => \freqd|s_divcounter\(20),
	datad => \freqd|s_divcounter\(22),
	combout => \freqd|clkout~4_combout\);

-- Location: LCCOMB_X59_Y6_N2
\freqd|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~5_combout\ = ((!\freqd|s_divcounter\(24) & ((\freqd|LessThan0~4_combout\) # (!\freqd|clkout~4_combout\)))) # (!\freqd|s_divcounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(25),
	datab => \freqd|s_divcounter\(24),
	datac => \freqd|LessThan0~4_combout\,
	datad => \freqd|clkout~4_combout\,
	combout => \freqd|LessThan0~5_combout\);

-- Location: LCCOMB_X59_Y6_N10
\freqd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~2_combout\ = (((!\freqd|s_divcounter\(14)) # (!\freqd|s_divcounter\(15))) # (!\freqd|s_divcounter\(13))) # (!\freqd|s_divcounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(12),
	datab => \freqd|s_divcounter\(13),
	datac => \freqd|s_divcounter\(15),
	datad => \freqd|s_divcounter\(14),
	combout => \freqd|LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y6_N14
\freqd|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~3_combout\ = (!\freqd|s_divcounter\(24) & (!\freqd|s_divcounter\(18) & (!\freqd|s_divcounter\(16) & \freqd|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(24),
	datab => \freqd|s_divcounter\(18),
	datac => \freqd|s_divcounter\(16),
	datad => \freqd|LessThan0~2_combout\,
	combout => \freqd|LessThan0~3_combout\);

-- Location: LCCOMB_X60_Y6_N4
\freqd|clkout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~3_combout\ = (!\freqd|s_divcounter\(8) & (!\freqd|s_divcounter\(7) & (!\freqd|s_divcounter\(10) & !\freqd|s_divcounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(8),
	datab => \freqd|s_divcounter\(7),
	datac => \freqd|s_divcounter\(10),
	datad => \freqd|s_divcounter\(9),
	combout => \freqd|clkout~3_combout\);

-- Location: LCCOMB_X59_Y6_N26
\freqd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~0_combout\ = (!\freqd|s_divcounter\(11) & (!\freqd|s_divcounter\(18) & (!\freqd|s_divcounter\(16) & !\freqd|s_divcounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(11),
	datab => \freqd|s_divcounter\(18),
	datac => \freqd|s_divcounter\(16),
	datad => \freqd|s_divcounter\(24),
	combout => \freqd|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y6_N0
\freqd|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~0_combout\ = (\freqd|s_divcounter\(3) & (\freqd|s_divcounter\(1) & (\freqd|s_divcounter\(0) & \freqd|s_divcounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(3),
	datab => \freqd|s_divcounter\(1),
	datac => \freqd|s_divcounter\(0),
	datad => \freqd|s_divcounter\(2),
	combout => \freqd|clkout~0_combout\);

-- Location: LCCOMB_X60_Y6_N2
\freqd|clkout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~1_combout\ = (\freqd|s_divcounter\(5) & (\freqd|s_divcounter\(4) & \freqd|clkout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(5),
	datac => \freqd|s_divcounter\(4),
	datad => \freqd|clkout~0_combout\,
	combout => \freqd|clkout~1_combout\);

-- Location: LCCOMB_X59_Y6_N28
\freqd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~1_combout\ = (\freqd|clkout~3_combout\ & (\freqd|LessThan0~0_combout\ & ((!\freqd|clkout~1_combout\) # (!\freqd|s_divcounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|clkout~3_combout\,
	datab => \freqd|s_divcounter\(6),
	datac => \freqd|LessThan0~0_combout\,
	datad => \freqd|clkout~1_combout\,
	combout => \freqd|LessThan0~1_combout\);

-- Location: LCCOMB_X59_Y6_N30
\freqd|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~6_combout\ = (!\freqd|LessThan0~5_combout\ & (!\freqd|LessThan0~3_combout\ & !\freqd|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqd|LessThan0~5_combout\,
	datac => \freqd|LessThan0~3_combout\,
	datad => \freqd|LessThan0~1_combout\,
	combout => \freqd|LessThan0~6_combout\);

-- Location: FF_X60_Y6_N7
\freqd|s_divcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[0]~26_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(0));

-- Location: LCCOMB_X60_Y6_N8
\freqd|s_divcounter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[1]~28_combout\ = (\freqd|s_divcounter\(1) & (!\freqd|s_divcounter[0]~27\)) # (!\freqd|s_divcounter\(1) & ((\freqd|s_divcounter[0]~27\) # (GND)))
-- \freqd|s_divcounter[1]~29\ = CARRY((!\freqd|s_divcounter[0]~27\) # (!\freqd|s_divcounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(1),
	datad => VCC,
	cin => \freqd|s_divcounter[0]~27\,
	combout => \freqd|s_divcounter[1]~28_combout\,
	cout => \freqd|s_divcounter[1]~29\);

-- Location: FF_X60_Y6_N9
\freqd|s_divcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[1]~28_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(1));

-- Location: LCCOMB_X60_Y6_N10
\freqd|s_divcounter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[2]~30_combout\ = (\freqd|s_divcounter\(2) & (\freqd|s_divcounter[1]~29\ $ (GND))) # (!\freqd|s_divcounter\(2) & (!\freqd|s_divcounter[1]~29\ & VCC))
-- \freqd|s_divcounter[2]~31\ = CARRY((\freqd|s_divcounter\(2) & !\freqd|s_divcounter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(2),
	datad => VCC,
	cin => \freqd|s_divcounter[1]~29\,
	combout => \freqd|s_divcounter[2]~30_combout\,
	cout => \freqd|s_divcounter[2]~31\);

-- Location: FF_X60_Y6_N11
\freqd|s_divcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[2]~30_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(2));

-- Location: LCCOMB_X60_Y6_N12
\freqd|s_divcounter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[3]~32_combout\ = (\freqd|s_divcounter\(3) & (!\freqd|s_divcounter[2]~31\)) # (!\freqd|s_divcounter\(3) & ((\freqd|s_divcounter[2]~31\) # (GND)))
-- \freqd|s_divcounter[3]~33\ = CARRY((!\freqd|s_divcounter[2]~31\) # (!\freqd|s_divcounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(3),
	datad => VCC,
	cin => \freqd|s_divcounter[2]~31\,
	combout => \freqd|s_divcounter[3]~32_combout\,
	cout => \freqd|s_divcounter[3]~33\);

-- Location: FF_X60_Y6_N13
\freqd|s_divcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[3]~32_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(3));

-- Location: LCCOMB_X60_Y6_N14
\freqd|s_divcounter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[4]~34_combout\ = (\freqd|s_divcounter\(4) & (\freqd|s_divcounter[3]~33\ $ (GND))) # (!\freqd|s_divcounter\(4) & (!\freqd|s_divcounter[3]~33\ & VCC))
-- \freqd|s_divcounter[4]~35\ = CARRY((\freqd|s_divcounter\(4) & !\freqd|s_divcounter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(4),
	datad => VCC,
	cin => \freqd|s_divcounter[3]~33\,
	combout => \freqd|s_divcounter[4]~34_combout\,
	cout => \freqd|s_divcounter[4]~35\);

-- Location: FF_X60_Y6_N15
\freqd|s_divcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[4]~34_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(4));

-- Location: LCCOMB_X60_Y6_N16
\freqd|s_divcounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[5]~36_combout\ = (\freqd|s_divcounter\(5) & (!\freqd|s_divcounter[4]~35\)) # (!\freqd|s_divcounter\(5) & ((\freqd|s_divcounter[4]~35\) # (GND)))
-- \freqd|s_divcounter[5]~37\ = CARRY((!\freqd|s_divcounter[4]~35\) # (!\freqd|s_divcounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(5),
	datad => VCC,
	cin => \freqd|s_divcounter[4]~35\,
	combout => \freqd|s_divcounter[5]~36_combout\,
	cout => \freqd|s_divcounter[5]~37\);

-- Location: FF_X60_Y6_N17
\freqd|s_divcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[5]~36_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(5));

-- Location: LCCOMB_X60_Y6_N18
\freqd|s_divcounter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[6]~38_combout\ = (\freqd|s_divcounter\(6) & (\freqd|s_divcounter[5]~37\ $ (GND))) # (!\freqd|s_divcounter\(6) & (!\freqd|s_divcounter[5]~37\ & VCC))
-- \freqd|s_divcounter[6]~39\ = CARRY((\freqd|s_divcounter\(6) & !\freqd|s_divcounter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(6),
	datad => VCC,
	cin => \freqd|s_divcounter[5]~37\,
	combout => \freqd|s_divcounter[6]~38_combout\,
	cout => \freqd|s_divcounter[6]~39\);

-- Location: FF_X60_Y6_N19
\freqd|s_divcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[6]~38_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(6));

-- Location: LCCOMB_X60_Y6_N20
\freqd|s_divcounter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[7]~40_combout\ = (\freqd|s_divcounter\(7) & (!\freqd|s_divcounter[6]~39\)) # (!\freqd|s_divcounter\(7) & ((\freqd|s_divcounter[6]~39\) # (GND)))
-- \freqd|s_divcounter[7]~41\ = CARRY((!\freqd|s_divcounter[6]~39\) # (!\freqd|s_divcounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(7),
	datad => VCC,
	cin => \freqd|s_divcounter[6]~39\,
	combout => \freqd|s_divcounter[7]~40_combout\,
	cout => \freqd|s_divcounter[7]~41\);

-- Location: FF_X60_Y6_N21
\freqd|s_divcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[7]~40_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(7));

-- Location: LCCOMB_X60_Y6_N22
\freqd|s_divcounter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[8]~42_combout\ = (\freqd|s_divcounter\(8) & (\freqd|s_divcounter[7]~41\ $ (GND))) # (!\freqd|s_divcounter\(8) & (!\freqd|s_divcounter[7]~41\ & VCC))
-- \freqd|s_divcounter[8]~43\ = CARRY((\freqd|s_divcounter\(8) & !\freqd|s_divcounter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(8),
	datad => VCC,
	cin => \freqd|s_divcounter[7]~41\,
	combout => \freqd|s_divcounter[8]~42_combout\,
	cout => \freqd|s_divcounter[8]~43\);

-- Location: FF_X60_Y6_N23
\freqd|s_divcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[8]~42_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(8));

-- Location: LCCOMB_X60_Y6_N24
\freqd|s_divcounter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[9]~44_combout\ = (\freqd|s_divcounter\(9) & (!\freqd|s_divcounter[8]~43\)) # (!\freqd|s_divcounter\(9) & ((\freqd|s_divcounter[8]~43\) # (GND)))
-- \freqd|s_divcounter[9]~45\ = CARRY((!\freqd|s_divcounter[8]~43\) # (!\freqd|s_divcounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(9),
	datad => VCC,
	cin => \freqd|s_divcounter[8]~43\,
	combout => \freqd|s_divcounter[9]~44_combout\,
	cout => \freqd|s_divcounter[9]~45\);

-- Location: FF_X60_Y6_N25
\freqd|s_divcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[9]~44_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(9));

-- Location: LCCOMB_X60_Y6_N26
\freqd|s_divcounter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[10]~46_combout\ = (\freqd|s_divcounter\(10) & (\freqd|s_divcounter[9]~45\ $ (GND))) # (!\freqd|s_divcounter\(10) & (!\freqd|s_divcounter[9]~45\ & VCC))
-- \freqd|s_divcounter[10]~47\ = CARRY((\freqd|s_divcounter\(10) & !\freqd|s_divcounter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(10),
	datad => VCC,
	cin => \freqd|s_divcounter[9]~45\,
	combout => \freqd|s_divcounter[10]~46_combout\,
	cout => \freqd|s_divcounter[10]~47\);

-- Location: FF_X60_Y6_N27
\freqd|s_divcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[10]~46_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(10));

-- Location: LCCOMB_X60_Y6_N28
\freqd|s_divcounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[11]~48_combout\ = (\freqd|s_divcounter\(11) & (!\freqd|s_divcounter[10]~47\)) # (!\freqd|s_divcounter\(11) & ((\freqd|s_divcounter[10]~47\) # (GND)))
-- \freqd|s_divcounter[11]~49\ = CARRY((!\freqd|s_divcounter[10]~47\) # (!\freqd|s_divcounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(11),
	datad => VCC,
	cin => \freqd|s_divcounter[10]~47\,
	combout => \freqd|s_divcounter[11]~48_combout\,
	cout => \freqd|s_divcounter[11]~49\);

-- Location: FF_X60_Y6_N29
\freqd|s_divcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[11]~48_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(11));

-- Location: FF_X60_Y6_N31
\freqd|s_divcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[12]~50_combout\,
	sclr => \freqd|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(12));

-- Location: LCCOMB_X59_Y6_N22
\freqd|clkout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~2_combout\ = (\freqd|s_divcounter\(12) & (\freqd|s_divcounter\(14) & (\freqd|s_divcounter\(13) & !\freqd|s_divcounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(12),
	datab => \freqd|s_divcounter\(14),
	datac => \freqd|s_divcounter\(13),
	datad => \freqd|s_divcounter\(6),
	combout => \freqd|clkout~2_combout\);

-- Location: LCCOMB_X60_Y5_N28
\freqd|clkout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~5_combout\ = (\freqd|s_divcounter\(18) & (!\freqd|s_divcounter\(23) & (\freqd|s_divcounter\(24) & !\freqd|s_divcounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(18),
	datab => \freqd|s_divcounter\(23),
	datac => \freqd|s_divcounter\(24),
	datad => \freqd|s_divcounter\(25),
	combout => \freqd|clkout~5_combout\);

-- Location: LCCOMB_X59_Y6_N16
\freqd|clkout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~6_combout\ = (\freqd|s_divcounter\(16) & (!\freqd|s_divcounter\(15) & (\freqd|clkout~5_combout\ & !\freqd|s_divcounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(16),
	datab => \freqd|s_divcounter\(15),
	datac => \freqd|clkout~5_combout\,
	datad => \freqd|s_divcounter\(17),
	combout => \freqd|clkout~6_combout\);

-- Location: LCCOMB_X59_Y6_N6
\freqd|clkout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~7_combout\ = (\freqd|clkout~4_combout\ & (\freqd|s_divcounter\(11) & (\freqd|clkout~3_combout\ & \freqd|clkout~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|clkout~4_combout\,
	datab => \freqd|s_divcounter\(11),
	datac => \freqd|clkout~3_combout\,
	datad => \freqd|clkout~6_combout\,
	combout => \freqd|clkout~7_combout\);

-- Location: LCCOMB_X59_Y6_N24
\freqd|clkout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~8_combout\ = (\freqd|clkout~q\) # ((\freqd|clkout~2_combout\ & (\freqd|clkout~1_combout\ & \freqd|clkout~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|clkout~2_combout\,
	datab => \freqd|clkout~q\,
	datac => \freqd|clkout~1_combout\,
	datad => \freqd|clkout~7_combout\,
	combout => \freqd|clkout~8_combout\);

-- Location: LCCOMB_X59_Y6_N18
\freqd|clkout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~9_combout\ = (\freqd|clkout~8_combout\ & ((\freqd|LessThan0~1_combout\) # ((\freqd|LessThan0~5_combout\) # (\freqd|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|clkout~8_combout\,
	datab => \freqd|LessThan0~1_combout\,
	datac => \freqd|LessThan0~5_combout\,
	datad => \freqd|LessThan0~3_combout\,
	combout => \freqd|clkout~9_combout\);

-- Location: FF_X59_Y6_N19
\freqd|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|clkout~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|clkout~q\);

-- Location: CLKCTRL_G15
\freqd|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \freqd|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \freqd|clkout~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: FF_X88_Y72_N29
\shreg|sdataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	asdata => \sw[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(0));

-- Location: LCCOMB_X88_Y72_N18
\shreg|sdataout[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|sdataout[1]~feeder_combout\ = \shreg|sdataout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shreg|sdataout\(0),
	combout => \shreg|sdataout[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\shreg|sdataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	d => \shreg|sdataout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(1));

-- Location: LCCOMB_X88_Y72_N16
\shreg|sdataout[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|sdataout[2]~feeder_combout\ = \shreg|sdataout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shreg|sdataout\(1),
	combout => \shreg|sdataout[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\shreg|sdataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	d => \shreg|sdataout[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(2));

-- Location: LCCOMB_X88_Y72_N6
\shreg|sdataout[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|sdataout[3]~feeder_combout\ = \shreg|sdataout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shreg|sdataout\(2),
	combout => \shreg|sdataout[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\shreg|sdataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	d => \shreg|sdataout[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(3));

-- Location: LCCOMB_X88_Y72_N0
\shreg|sdataout[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|sdataout[4]~feeder_combout\ = \shreg|sdataout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shreg|sdataout\(3),
	combout => \shreg|sdataout[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\shreg|sdataout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	d => \shreg|sdataout[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(4));

-- Location: LCCOMB_X88_Y72_N2
\shreg|sdataout[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|sdataout[5]~feeder_combout\ = \shreg|sdataout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shreg|sdataout\(4),
	combout => \shreg|sdataout[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\shreg|sdataout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	d => \shreg|sdataout[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(5));

-- Location: LCCOMB_X88_Y72_N20
\shreg|sdataout[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|sdataout[6]~feeder_combout\ = \shreg|sdataout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shreg|sdataout\(5),
	combout => \shreg|sdataout[6]~feeder_combout\);

-- Location: FF_X88_Y72_N21
\shreg|sdataout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	d => \shreg|sdataout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(6));

-- Location: LCCOMB_X88_Y72_N22
\shreg|sdataout[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|sdataout[7]~feeder_combout\ = \shreg|sdataout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \shreg|sdataout\(6),
	combout => \shreg|sdataout[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\shreg|sdataout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|clkout~clkctrl_outclk\,
	d => \shreg|sdataout[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|sdataout\(7));

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;

ww_ledr(4) <= \ledr[4]~output_o\;

ww_ledr(5) <= \ledr[5]~output_o\;

ww_ledr(6) <= \ledr[6]~output_o\;

ww_ledr(7) <= \ledr[7]~output_o\;
END structure;


