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

-- DATE "04/11/2022 11:17:26"

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

ENTITY 	LoadCounter_Demo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END LoadCounter_Demo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LoadCounter_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst24|s_pulsedout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst24|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst24|s_dirtyin~0_combout\ : std_logic;
SIGNAL \inst24|s_dirtyin~q\ : std_logic;
SIGNAL \inst24|s_previousin~feeder_combout\ : std_logic;
SIGNAL \inst24|s_previousin~q\ : std_logic;
SIGNAL \inst24|Add0~9\ : std_logic;
SIGNAL \inst24|Add0~10_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~27_combout\ : std_logic;
SIGNAL \inst24|Add0~11\ : std_logic;
SIGNAL \inst24|Add0~12_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~1_combout\ : std_logic;
SIGNAL \inst24|Add0~13\ : std_logic;
SIGNAL \inst24|Add0~14_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~12_combout\ : std_logic;
SIGNAL \inst24|Add0~15\ : std_logic;
SIGNAL \inst24|Add0~16_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~13_combout\ : std_logic;
SIGNAL \inst24|Add0~17\ : std_logic;
SIGNAL \inst24|Add0~18_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~14_combout\ : std_logic;
SIGNAL \inst24|Add0~19\ : std_logic;
SIGNAL \inst24|Add0~20_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~15_combout\ : std_logic;
SIGNAL \inst24|Add0~21\ : std_logic;
SIGNAL \inst24|Add0~22_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~16_combout\ : std_logic;
SIGNAL \inst24|Add0~23\ : std_logic;
SIGNAL \inst24|Add0~24_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~8_combout\ : std_logic;
SIGNAL \inst24|Add0~25\ : std_logic;
SIGNAL \inst24|Add0~26_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~9_combout\ : std_logic;
SIGNAL \inst24|Add0~41\ : std_logic;
SIGNAL \inst24|Add0~42_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[21]~11_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~1_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~2_combout\ : std_logic;
SIGNAL \inst24|Add0~27\ : std_logic;
SIGNAL \inst24|Add0~28_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~17_combout\ : std_logic;
SIGNAL \inst24|Add0~29\ : std_logic;
SIGNAL \inst24|Add0~30_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~5_combout\ : std_logic;
SIGNAL \inst24|Add0~31\ : std_logic;
SIGNAL \inst24|Add0~32_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~6_combout\ : std_logic;
SIGNAL \inst24|Add0~33\ : std_logic;
SIGNAL \inst24|Add0~34_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~7_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~0_combout\ : std_logic;
SIGNAL \inst24|Add0~35\ : std_logic;
SIGNAL \inst24|Add0~36_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[18]~18_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~3_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~4_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[18]~2_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[18]~3_combout\ : std_logic;
SIGNAL \inst24|Add0~37\ : std_logic;
SIGNAL \inst24|Add0~38_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[19]~19_combout\ : std_logic;
SIGNAL \inst24|Add0~39\ : std_logic;
SIGNAL \inst24|Add0~40_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[20]~10_combout\ : std_logic;
SIGNAL \inst24|LessThan0~1_combout\ : std_logic;
SIGNAL \inst24|LessThan0~2_combout\ : std_logic;
SIGNAL \inst24|LessThan0~0_combout\ : std_logic;
SIGNAL \inst24|LessThan0~3_combout\ : std_logic;
SIGNAL \inst24|LessThan0~4_combout\ : std_logic;
SIGNAL \inst24|LessThan0~5_combout\ : std_logic;
SIGNAL \inst24|LessThan0~6_combout\ : std_logic;
SIGNAL \inst24|LessThan0~7_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[18]~0_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[22]~25_combout\ : std_logic;
SIGNAL \inst24|Add0~43\ : std_logic;
SIGNAL \inst24|Add0~44_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[22]~26_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt[18]~4_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~24_combout\ : std_logic;
SIGNAL \inst24|Add0~1\ : std_logic;
SIGNAL \inst24|Add0~2_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~20_combout\ : std_logic;
SIGNAL \inst24|Add0~3\ : std_logic;
SIGNAL \inst24|Add0~4_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~21_combout\ : std_logic;
SIGNAL \inst24|Add0~5\ : std_logic;
SIGNAL \inst24|Add0~6_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~22_combout\ : std_logic;
SIGNAL \inst24|Add0~7\ : std_logic;
SIGNAL \inst24|Add0~8_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt~23_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~5_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~6_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~7_combout\ : std_logic;
SIGNAL \inst24|s_pulsedout~q\ : std_logic;
SIGNAL \inst24|s_pulsedout~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|snum[0]~10_combout\ : std_logic;
SIGNAL \inst|snum[0]~11_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|snum[1]~4_cout\ : std_logic;
SIGNAL \inst|snum[1]~5_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|snum[3]~9_combout\ : std_logic;
SIGNAL \inst|snum[1]~6\ : std_logic;
SIGNAL \inst|snum[2]~7_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|snum[2]~8\ : std_logic;
SIGNAL \inst|snum[3]~12_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst2|decout_n[6]~0_combout\ : std_logic;
SIGNAL \inst2|decout_n[5]~1_combout\ : std_logic;
SIGNAL \inst2|decout_n[4]~2_combout\ : std_logic;
SIGNAL \inst2|decout_n[3]~3_combout\ : std_logic;
SIGNAL \inst2|decout_n[2]~4_combout\ : std_logic;
SIGNAL \inst2|decout_n[1]~5_combout\ : std_logic;
SIGNAL \inst2|decout_n[0]~6_combout\ : std_logic;
SIGNAL \inst24|s_debouncecnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst|snum\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst24|s_pulsedout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst24|s_pulsedout~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|decout_n[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|snum\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X89_Y37_N10
\inst24|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~0_combout\ = \inst24|s_debouncecnt\(0) $ (VCC)
-- \inst24|Add0~1\ = CARRY(\inst24|s_debouncecnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(0),
	datad => VCC,
	combout => \inst24|Add0~0_combout\,
	cout => \inst24|Add0~1\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X91_Y37_N0
\inst24|s_dirtyin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_dirtyin~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[0]~input_o\,
	combout => \inst24|s_dirtyin~0_combout\);

-- Location: FF_X90_Y37_N13
\inst24|s_dirtyin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst24|s_dirtyin~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_dirtyin~q\);

-- Location: LCCOMB_X87_Y37_N0
\inst24|s_previousin~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_previousin~feeder_combout\ = \inst24|s_dirtyin~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst24|s_dirtyin~q\,
	combout => \inst24|s_previousin~feeder_combout\);

-- Location: FF_X87_Y37_N1
\inst24|s_previousin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_previousin~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_previousin~q\);

-- Location: LCCOMB_X89_Y37_N18
\inst24|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~8_combout\ = (\inst24|s_debouncecnt\(4) & ((GND) # (!\inst24|Add0~7\))) # (!\inst24|s_debouncecnt\(4) & (\inst24|Add0~7\ $ (GND)))
-- \inst24|Add0~9\ = CARRY((\inst24|s_debouncecnt\(4)) # (!\inst24|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(4),
	datad => VCC,
	cin => \inst24|Add0~7\,
	combout => \inst24|Add0~8_combout\,
	cout => \inst24|Add0~9\);

-- Location: LCCOMB_X89_Y37_N20
\inst24|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~10_combout\ = (\inst24|s_debouncecnt\(5) & (\inst24|Add0~9\ & VCC)) # (!\inst24|s_debouncecnt\(5) & (!\inst24|Add0~9\))
-- \inst24|Add0~11\ = CARRY((!\inst24|s_debouncecnt\(5) & !\inst24|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(5),
	datad => VCC,
	cin => \inst24|Add0~9\,
	combout => \inst24|Add0~10_combout\,
	cout => \inst24|Add0~11\);

-- Location: LCCOMB_X88_Y37_N10
\inst24|s_debouncecnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~27_combout\ = (\inst24|Add0~10_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|Add0~10_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~27_combout\);

-- Location: FF_X88_Y37_N11
\inst24|s_debouncecnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~27_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(5));

-- Location: LCCOMB_X89_Y37_N22
\inst24|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~12_combout\ = (\inst24|s_debouncecnt\(6) & ((GND) # (!\inst24|Add0~11\))) # (!\inst24|s_debouncecnt\(6) & (\inst24|Add0~11\ $ (GND)))
-- \inst24|Add0~13\ = CARRY((\inst24|s_debouncecnt\(6)) # (!\inst24|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(6),
	datad => VCC,
	cin => \inst24|Add0~11\,
	combout => \inst24|Add0~12_combout\,
	cout => \inst24|Add0~13\);

-- Location: LCCOMB_X88_Y37_N0
\inst24|s_debouncecnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~1_combout\ = (\inst24|s_debouncecnt[18]~0_combout\ & ((\inst24|Add0~12_combout\) # (!\inst24|s_previousin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_previousin~q\,
	datab => \inst24|Add0~12_combout\,
	datad => \inst24|s_debouncecnt[18]~0_combout\,
	combout => \inst24|s_debouncecnt~1_combout\);

-- Location: FF_X88_Y37_N1
\inst24|s_debouncecnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~1_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(6));

-- Location: LCCOMB_X89_Y37_N24
\inst24|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~14_combout\ = (\inst24|s_debouncecnt\(7) & (\inst24|Add0~13\ & VCC)) # (!\inst24|s_debouncecnt\(7) & (!\inst24|Add0~13\))
-- \inst24|Add0~15\ = CARRY((!\inst24|s_debouncecnt\(7) & !\inst24|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(7),
	datad => VCC,
	cin => \inst24|Add0~13\,
	combout => \inst24|Add0~14_combout\,
	cout => \inst24|Add0~15\);

-- Location: LCCOMB_X90_Y37_N20
\inst24|s_debouncecnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~12_combout\ = (\inst24|Add0~14_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Add0~14_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~12_combout\);

-- Location: FF_X90_Y37_N21
\inst24|s_debouncecnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~12_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(7));

-- Location: LCCOMB_X89_Y37_N26
\inst24|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~16_combout\ = (\inst24|s_debouncecnt\(8) & ((GND) # (!\inst24|Add0~15\))) # (!\inst24|s_debouncecnt\(8) & (\inst24|Add0~15\ $ (GND)))
-- \inst24|Add0~17\ = CARRY((\inst24|s_debouncecnt\(8)) # (!\inst24|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(8),
	datad => VCC,
	cin => \inst24|Add0~15\,
	combout => \inst24|Add0~16_combout\,
	cout => \inst24|Add0~17\);

-- Location: LCCOMB_X90_Y37_N18
\inst24|s_debouncecnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~13_combout\ = (\inst24|s_debouncecnt[18]~0_combout\ & ((\inst24|Add0~16_combout\) # (!\inst24|s_previousin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~16_combout\,
	datac => \inst24|s_debouncecnt[18]~0_combout\,
	datad => \inst24|s_previousin~q\,
	combout => \inst24|s_debouncecnt~13_combout\);

-- Location: FF_X90_Y37_N19
\inst24|s_debouncecnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~13_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(8));

-- Location: LCCOMB_X89_Y37_N28
\inst24|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~18_combout\ = (\inst24|s_debouncecnt\(9) & (\inst24|Add0~17\ & VCC)) # (!\inst24|s_debouncecnt\(9) & (!\inst24|Add0~17\))
-- \inst24|Add0~19\ = CARRY((!\inst24|s_debouncecnt\(9) & !\inst24|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(9),
	datad => VCC,
	cin => \inst24|Add0~17\,
	combout => \inst24|Add0~18_combout\,
	cout => \inst24|Add0~19\);

-- Location: LCCOMB_X88_Y37_N6
\inst24|s_debouncecnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~14_combout\ = (\inst24|s_debouncecnt[18]~0_combout\ & ((\inst24|Add0~18_combout\) # (!\inst24|s_previousin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Add0~18_combout\,
	datac => \inst24|s_previousin~q\,
	datad => \inst24|s_debouncecnt[18]~0_combout\,
	combout => \inst24|s_debouncecnt~14_combout\);

-- Location: FF_X88_Y37_N7
\inst24|s_debouncecnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~14_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(9));

-- Location: LCCOMB_X89_Y37_N30
\inst24|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~20_combout\ = (\inst24|s_debouncecnt\(10) & ((GND) # (!\inst24|Add0~19\))) # (!\inst24|s_debouncecnt\(10) & (\inst24|Add0~19\ $ (GND)))
-- \inst24|Add0~21\ = CARRY((\inst24|s_debouncecnt\(10)) # (!\inst24|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(10),
	datad => VCC,
	cin => \inst24|Add0~19\,
	combout => \inst24|Add0~20_combout\,
	cout => \inst24|Add0~21\);

-- Location: LCCOMB_X88_Y37_N8
\inst24|s_debouncecnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~15_combout\ = (\inst24|Add0~20_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|Add0~20_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~15_combout\);

-- Location: FF_X88_Y37_N9
\inst24|s_debouncecnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~15_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(10));

-- Location: LCCOMB_X89_Y36_N0
\inst24|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~22_combout\ = (\inst24|s_debouncecnt\(11) & (\inst24|Add0~21\ & VCC)) # (!\inst24|s_debouncecnt\(11) & (!\inst24|Add0~21\))
-- \inst24|Add0~23\ = CARRY((!\inst24|s_debouncecnt\(11) & !\inst24|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(11),
	datad => VCC,
	cin => \inst24|Add0~21\,
	combout => \inst24|Add0~22_combout\,
	cout => \inst24|Add0~23\);

-- Location: LCCOMB_X90_Y37_N16
\inst24|s_debouncecnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~16_combout\ = (\inst24|s_debouncecnt[18]~0_combout\ & ((\inst24|Add0~22_combout\) # (!\inst24|s_previousin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_previousin~q\,
	datac => \inst24|s_debouncecnt[18]~0_combout\,
	datad => \inst24|Add0~22_combout\,
	combout => \inst24|s_debouncecnt~16_combout\);

-- Location: FF_X90_Y37_N17
\inst24|s_debouncecnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~16_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(11));

-- Location: LCCOMB_X89_Y36_N2
\inst24|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~24_combout\ = (\inst24|s_debouncecnt\(12) & ((GND) # (!\inst24|Add0~23\))) # (!\inst24|s_debouncecnt\(12) & (\inst24|Add0~23\ $ (GND)))
-- \inst24|Add0~25\ = CARRY((\inst24|s_debouncecnt\(12)) # (!\inst24|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(12),
	datad => VCC,
	cin => \inst24|Add0~23\,
	combout => \inst24|Add0~24_combout\,
	cout => \inst24|Add0~25\);

-- Location: LCCOMB_X88_Y37_N4
\inst24|s_debouncecnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~8_combout\ = (\inst24|Add0~24_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|Add0~24_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~8_combout\);

-- Location: FF_X88_Y37_N5
\inst24|s_debouncecnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~8_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(12));

-- Location: LCCOMB_X89_Y36_N4
\inst24|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~26_combout\ = (\inst24|s_debouncecnt\(13) & (\inst24|Add0~25\ & VCC)) # (!\inst24|s_debouncecnt\(13) & (!\inst24|Add0~25\))
-- \inst24|Add0~27\ = CARRY((!\inst24|s_debouncecnt\(13) & !\inst24|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(13),
	datad => VCC,
	cin => \inst24|Add0~25\,
	combout => \inst24|Add0~26_combout\,
	cout => \inst24|Add0~27\);

-- Location: LCCOMB_X88_Y37_N30
\inst24|s_debouncecnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~9_combout\ = (\inst24|Add0~26_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|Add0~26_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~9_combout\);

-- Location: FF_X88_Y37_N31
\inst24|s_debouncecnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~9_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(13));

-- Location: LCCOMB_X89_Y36_N18
\inst24|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~40_combout\ = (\inst24|s_debouncecnt\(20) & ((GND) # (!\inst24|Add0~39\))) # (!\inst24|s_debouncecnt\(20) & (\inst24|Add0~39\ $ (GND)))
-- \inst24|Add0~41\ = CARRY((\inst24|s_debouncecnt\(20)) # (!\inst24|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(20),
	datad => VCC,
	cin => \inst24|Add0~39\,
	combout => \inst24|Add0~40_combout\,
	cout => \inst24|Add0~41\);

-- Location: LCCOMB_X89_Y36_N20
\inst24|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~42_combout\ = (\inst24|s_debouncecnt\(21) & (\inst24|Add0~41\ & VCC)) # (!\inst24|s_debouncecnt\(21) & (!\inst24|Add0~41\))
-- \inst24|Add0~43\ = CARRY((!\inst24|s_debouncecnt\(21) & !\inst24|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(21),
	datad => VCC,
	cin => \inst24|Add0~41\,
	combout => \inst24|Add0~42_combout\,
	cout => \inst24|Add0~43\);

-- Location: LCCOMB_X89_Y36_N24
\inst24|s_debouncecnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[21]~11_combout\ = (\inst24|Add0~42_combout\ & (\inst24|s_debouncecnt[18]~3_combout\ & \inst24|s_debouncecnt[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Add0~42_combout\,
	datac => \inst24|s_debouncecnt[18]~3_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt[21]~11_combout\);

-- Location: FF_X89_Y36_N25
\inst24|s_debouncecnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(21));

-- Location: LCCOMB_X88_Y37_N12
\inst24|s_pulsedout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~1_combout\ = (!\inst24|s_debouncecnt\(13) & (!\inst24|s_debouncecnt\(12) & (!\inst24|s_debouncecnt\(21) & !\inst24|s_debouncecnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(13),
	datab => \inst24|s_debouncecnt\(12),
	datac => \inst24|s_debouncecnt\(21),
	datad => \inst24|s_debouncecnt\(20),
	combout => \inst24|s_pulsedout~1_combout\);

-- Location: LCCOMB_X88_Y37_N2
\inst24|s_pulsedout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~2_combout\ = (!\inst24|s_debouncecnt\(9) & (!\inst24|s_debouncecnt\(10) & (!\inst24|s_debouncecnt\(7) & !\inst24|s_debouncecnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(9),
	datab => \inst24|s_debouncecnt\(10),
	datac => \inst24|s_debouncecnt\(7),
	datad => \inst24|s_debouncecnt\(8),
	combout => \inst24|s_pulsedout~2_combout\);

-- Location: LCCOMB_X89_Y36_N6
\inst24|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~28_combout\ = (\inst24|s_debouncecnt\(14) & ((GND) # (!\inst24|Add0~27\))) # (!\inst24|s_debouncecnt\(14) & (\inst24|Add0~27\ $ (GND)))
-- \inst24|Add0~29\ = CARRY((\inst24|s_debouncecnt\(14)) # (!\inst24|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(14),
	datad => VCC,
	cin => \inst24|Add0~27\,
	combout => \inst24|Add0~28_combout\,
	cout => \inst24|Add0~29\);

-- Location: LCCOMB_X88_Y37_N28
\inst24|s_debouncecnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~17_combout\ = (\inst24|s_debouncecnt[18]~0_combout\ & ((\inst24|Add0~28_combout\) # (!\inst24|s_previousin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_previousin~q\,
	datac => \inst24|s_debouncecnt[18]~0_combout\,
	datad => \inst24|Add0~28_combout\,
	combout => \inst24|s_debouncecnt~17_combout\);

-- Location: FF_X88_Y37_N29
\inst24|s_debouncecnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~17_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(14));

-- Location: LCCOMB_X89_Y36_N8
\inst24|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~30_combout\ = (\inst24|s_debouncecnt\(15) & (\inst24|Add0~29\ & VCC)) # (!\inst24|s_debouncecnt\(15) & (!\inst24|Add0~29\))
-- \inst24|Add0~31\ = CARRY((!\inst24|s_debouncecnt\(15) & !\inst24|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(15),
	datad => VCC,
	cin => \inst24|Add0~29\,
	combout => \inst24|Add0~30_combout\,
	cout => \inst24|Add0~31\);

-- Location: LCCOMB_X88_Y37_N26
\inst24|s_debouncecnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~5_combout\ = (\inst24|Add0~30_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|Add0~30_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~5_combout\);

-- Location: FF_X88_Y37_N27
\inst24|s_debouncecnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~5_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(15));

-- Location: LCCOMB_X89_Y36_N10
\inst24|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~32_combout\ = (\inst24|s_debouncecnt\(16) & ((GND) # (!\inst24|Add0~31\))) # (!\inst24|s_debouncecnt\(16) & (\inst24|Add0~31\ $ (GND)))
-- \inst24|Add0~33\ = CARRY((\inst24|s_debouncecnt\(16)) # (!\inst24|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(16),
	datad => VCC,
	cin => \inst24|Add0~31\,
	combout => \inst24|Add0~32_combout\,
	cout => \inst24|Add0~33\);

-- Location: LCCOMB_X88_Y37_N20
\inst24|s_debouncecnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~6_combout\ = (\inst24|Add0~32_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~32_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~6_combout\);

-- Location: FF_X88_Y37_N21
\inst24|s_debouncecnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~6_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(16));

-- Location: LCCOMB_X89_Y36_N12
\inst24|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~34_combout\ = (\inst24|s_debouncecnt\(17) & (\inst24|Add0~33\ & VCC)) # (!\inst24|s_debouncecnt\(17) & (!\inst24|Add0~33\))
-- \inst24|Add0~35\ = CARRY((!\inst24|s_debouncecnt\(17) & !\inst24|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(17),
	datad => VCC,
	cin => \inst24|Add0~33\,
	combout => \inst24|Add0~34_combout\,
	cout => \inst24|Add0~35\);

-- Location: LCCOMB_X89_Y36_N28
\inst24|s_debouncecnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~7_combout\ = (\inst24|Add0~34_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~34_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~7_combout\);

-- Location: FF_X89_Y36_N29
\inst24|s_debouncecnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~7_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(17));

-- Location: LCCOMB_X88_Y37_N22
\inst24|s_pulsedout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~0_combout\ = (!\inst24|s_debouncecnt\(15) & (!\inst24|s_debouncecnt\(6) & (!\inst24|s_debouncecnt\(16) & !\inst24|s_debouncecnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(15),
	datab => \inst24|s_debouncecnt\(6),
	datac => \inst24|s_debouncecnt\(16),
	datad => \inst24|s_debouncecnt\(17),
	combout => \inst24|s_pulsedout~0_combout\);

-- Location: LCCOMB_X89_Y36_N14
\inst24|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~36_combout\ = (\inst24|s_debouncecnt\(18) & ((GND) # (!\inst24|Add0~35\))) # (!\inst24|s_debouncecnt\(18) & (\inst24|Add0~35\ $ (GND)))
-- \inst24|Add0~37\ = CARRY((\inst24|s_debouncecnt\(18)) # (!\inst24|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(18),
	datad => VCC,
	cin => \inst24|Add0~35\,
	combout => \inst24|Add0~36_combout\,
	cout => \inst24|Add0~37\);

-- Location: LCCOMB_X90_Y37_N22
\inst24|s_debouncecnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[18]~18_combout\ = (\inst24|s_debouncecnt[18]~0_combout\ & (\inst24|s_debouncecnt[18]~3_combout\ & ((\inst24|Add0~36_combout\) # (!\inst24|s_previousin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt[18]~0_combout\,
	datab => \inst24|s_previousin~q\,
	datac => \inst24|s_debouncecnt[18]~3_combout\,
	datad => \inst24|Add0~36_combout\,
	combout => \inst24|s_debouncecnt[18]~18_combout\);

-- Location: FF_X90_Y37_N23
\inst24|s_debouncecnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(18));

-- Location: LCCOMB_X90_Y37_N6
\inst24|s_pulsedout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~3_combout\ = (!\inst24|s_debouncecnt\(18) & (!\inst24|s_debouncecnt\(11) & (!\inst24|s_debouncecnt\(19) & !\inst24|s_debouncecnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(18),
	datab => \inst24|s_debouncecnt\(11),
	datac => \inst24|s_debouncecnt\(19),
	datad => \inst24|s_debouncecnt\(14),
	combout => \inst24|s_pulsedout~3_combout\);

-- Location: LCCOMB_X88_Y37_N18
\inst24|s_pulsedout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~4_combout\ = (\inst24|s_pulsedout~1_combout\ & (\inst24|s_pulsedout~2_combout\ & (\inst24|s_pulsedout~0_combout\ & \inst24|s_pulsedout~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_pulsedout~1_combout\,
	datab => \inst24|s_pulsedout~2_combout\,
	datac => \inst24|s_pulsedout~0_combout\,
	datad => \inst24|s_pulsedout~3_combout\,
	combout => \inst24|s_pulsedout~4_combout\);

-- Location: LCCOMB_X88_Y37_N24
\inst24|s_debouncecnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[18]~2_combout\ = (\inst24|s_debouncecnt\(5)) # ((\inst24|s_debouncecnt\(0)) # ((!\inst24|s_pulsedout~4_combout\) # (!\inst24|s_pulsedout~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(5),
	datab => \inst24|s_debouncecnt\(0),
	datac => \inst24|s_pulsedout~5_combout\,
	datad => \inst24|s_pulsedout~4_combout\,
	combout => \inst24|s_debouncecnt[18]~2_combout\);

-- Location: LCCOMB_X88_Y37_N14
\inst24|s_debouncecnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[18]~3_combout\ = (((\inst24|s_debouncecnt\(22)) # (\inst24|s_debouncecnt[18]~2_combout\)) # (!\inst24|s_dirtyin~q\)) # (!\inst24|s_previousin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_previousin~q\,
	datab => \inst24|s_dirtyin~q\,
	datac => \inst24|s_debouncecnt\(22),
	datad => \inst24|s_debouncecnt[18]~2_combout\,
	combout => \inst24|s_debouncecnt[18]~3_combout\);

-- Location: LCCOMB_X89_Y36_N16
\inst24|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~38_combout\ = (\inst24|s_debouncecnt\(19) & (\inst24|Add0~37\ & VCC)) # (!\inst24|s_debouncecnt\(19) & (!\inst24|Add0~37\))
-- \inst24|Add0~39\ = CARRY((!\inst24|s_debouncecnt\(19) & !\inst24|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(19),
	datad => VCC,
	cin => \inst24|Add0~37\,
	combout => \inst24|Add0~38_combout\,
	cout => \inst24|Add0~39\);

-- Location: LCCOMB_X90_Y37_N8
\inst24|s_debouncecnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[19]~19_combout\ = (\inst24|s_debouncecnt[18]~0_combout\ & (\inst24|s_debouncecnt[18]~3_combout\ & ((\inst24|Add0~38_combout\) # (!\inst24|s_previousin~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt[18]~0_combout\,
	datab => \inst24|s_previousin~q\,
	datac => \inst24|s_debouncecnt[18]~3_combout\,
	datad => \inst24|Add0~38_combout\,
	combout => \inst24|s_debouncecnt[19]~19_combout\);

-- Location: FF_X90_Y37_N9
\inst24|s_debouncecnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(19));

-- Location: LCCOMB_X89_Y36_N30
\inst24|s_debouncecnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[20]~10_combout\ = (\inst24|Add0~40_combout\ & (\inst24|s_debouncecnt[18]~3_combout\ & \inst24|s_debouncecnt[18]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Add0~40_combout\,
	datac => \inst24|s_debouncecnt[18]~3_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt[20]~10_combout\);

-- Location: FF_X89_Y36_N31
\inst24|s_debouncecnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(20));

-- Location: LCCOMB_X90_Y37_N12
\inst24|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~1_combout\ = (\inst24|s_debouncecnt\(11) & \inst24|s_debouncecnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(11),
	datad => \inst24|s_debouncecnt\(9),
	combout => \inst24|LessThan0~1_combout\);

-- Location: LCCOMB_X90_Y37_N30
\inst24|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~2_combout\ = (\inst24|s_debouncecnt\(6) & ((\inst24|s_debouncecnt\(0)) # ((\inst24|s_debouncecnt\(5)) # (!\inst24|s_pulsedout~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(0),
	datab => \inst24|s_debouncecnt\(5),
	datac => \inst24|s_debouncecnt\(6),
	datad => \inst24|s_pulsedout~5_combout\,
	combout => \inst24|LessThan0~2_combout\);

-- Location: LCCOMB_X90_Y37_N28
\inst24|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~0_combout\ = (\inst24|s_debouncecnt\(18) & (\inst24|s_debouncecnt\(8) & (\inst24|s_debouncecnt\(19) & \inst24|s_debouncecnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(18),
	datab => \inst24|s_debouncecnt\(8),
	datac => \inst24|s_debouncecnt\(19),
	datad => \inst24|s_debouncecnt\(14),
	combout => \inst24|LessThan0~0_combout\);

-- Location: LCCOMB_X90_Y37_N4
\inst24|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~3_combout\ = (\inst24|LessThan0~1_combout\ & (\inst24|LessThan0~0_combout\ & ((\inst24|s_debouncecnt\(7)) # (\inst24|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LessThan0~1_combout\,
	datab => \inst24|s_debouncecnt\(7),
	datac => \inst24|LessThan0~2_combout\,
	datad => \inst24|LessThan0~0_combout\,
	combout => \inst24|LessThan0~3_combout\);

-- Location: LCCOMB_X91_Y37_N28
\inst24|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~4_combout\ = (\inst24|s_debouncecnt\(12)) # ((\inst24|s_debouncecnt\(13)) # ((\inst24|s_debouncecnt\(11) & \inst24|s_debouncecnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(11),
	datab => \inst24|s_debouncecnt\(12),
	datac => \inst24|s_debouncecnt\(13),
	datad => \inst24|s_debouncecnt\(10),
	combout => \inst24|LessThan0~4_combout\);

-- Location: LCCOMB_X91_Y37_N26
\inst24|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~5_combout\ = (\inst24|s_debouncecnt\(15)) # ((\inst24|s_debouncecnt\(16)) # ((\inst24|s_debouncecnt\(14) & \inst24|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(15),
	datab => \inst24|s_debouncecnt\(16),
	datac => \inst24|s_debouncecnt\(14),
	datad => \inst24|LessThan0~4_combout\,
	combout => \inst24|LessThan0~5_combout\);

-- Location: LCCOMB_X90_Y37_N2
\inst24|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~6_combout\ = (\inst24|s_debouncecnt\(19) & (\inst24|s_debouncecnt\(18) & ((\inst24|s_debouncecnt\(17)) # (\inst24|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(17),
	datab => \inst24|s_debouncecnt\(19),
	datac => \inst24|s_debouncecnt\(18),
	datad => \inst24|LessThan0~5_combout\,
	combout => \inst24|LessThan0~6_combout\);

-- Location: LCCOMB_X90_Y37_N0
\inst24|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|LessThan0~7_combout\ = (\inst24|s_debouncecnt\(20)) # ((\inst24|s_debouncecnt\(21)) # ((\inst24|LessThan0~3_combout\) # (\inst24|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(20),
	datab => \inst24|s_debouncecnt\(21),
	datac => \inst24|LessThan0~3_combout\,
	datad => \inst24|LessThan0~6_combout\,
	combout => \inst24|LessThan0~7_combout\);

-- Location: LCCOMB_X90_Y37_N26
\inst24|s_debouncecnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[18]~0_combout\ = (\inst24|s_dirtyin~q\ & ((!\inst24|LessThan0~7_combout\) # (!\inst24|s_debouncecnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(22),
	datac => \inst24|s_dirtyin~q\,
	datad => \inst24|LessThan0~7_combout\,
	combout => \inst24|s_debouncecnt[18]~0_combout\);

-- Location: LCCOMB_X90_Y37_N14
\inst24|s_debouncecnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[22]~25_combout\ = (\inst24|s_dirtyin~q\ & ((\inst24|s_debouncecnt\(22) & ((!\inst24|LessThan0~7_combout\))) # (!\inst24|s_debouncecnt\(22) & (\inst24|s_debouncecnt[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(22),
	datab => \inst24|s_dirtyin~q\,
	datac => \inst24|s_debouncecnt[18]~2_combout\,
	datad => \inst24|LessThan0~7_combout\,
	combout => \inst24|s_debouncecnt[22]~25_combout\);

-- Location: LCCOMB_X89_Y36_N22
\inst24|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~44_combout\ = \inst24|Add0~43\ $ (\inst24|s_debouncecnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst24|s_debouncecnt\(22),
	cin => \inst24|Add0~43\,
	combout => \inst24|Add0~44_combout\);

-- Location: LCCOMB_X90_Y37_N10
\inst24|s_debouncecnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[22]~26_combout\ = (\inst24|s_previousin~q\ & (((\inst24|s_debouncecnt[22]~25_combout\ & \inst24|Add0~44_combout\)))) # (!\inst24|s_previousin~q\ & (\inst24|s_debouncecnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt[18]~0_combout\,
	datab => \inst24|s_previousin~q\,
	datac => \inst24|s_debouncecnt[22]~25_combout\,
	datad => \inst24|Add0~44_combout\,
	combout => \inst24|s_debouncecnt[22]~26_combout\);

-- Location: FF_X90_Y37_N11
\inst24|s_debouncecnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(22));

-- Location: LCCOMB_X90_Y37_N24
\inst24|s_debouncecnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt[18]~4_combout\ = (\inst24|s_previousin~q\ & (\inst24|s_dirtyin~q\ & ((!\inst24|LessThan0~7_combout\) # (!\inst24|s_debouncecnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(22),
	datab => \inst24|s_previousin~q\,
	datac => \inst24|s_dirtyin~q\,
	datad => \inst24|LessThan0~7_combout\,
	combout => \inst24|s_debouncecnt[18]~4_combout\);

-- Location: LCCOMB_X88_Y37_N16
\inst24|s_debouncecnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~24_combout\ = (\inst24|Add0~0_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|Add0~0_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~24_combout\);

-- Location: FF_X88_Y37_N17
\inst24|s_debouncecnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~24_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(0));

-- Location: LCCOMB_X89_Y37_N12
\inst24|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~2_combout\ = (\inst24|s_debouncecnt\(1) & (\inst24|Add0~1\ & VCC)) # (!\inst24|s_debouncecnt\(1) & (!\inst24|Add0~1\))
-- \inst24|Add0~3\ = CARRY((!\inst24|s_debouncecnt\(1) & !\inst24|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(1),
	datad => VCC,
	cin => \inst24|Add0~1\,
	combout => \inst24|Add0~2_combout\,
	cout => \inst24|Add0~3\);

-- Location: LCCOMB_X89_Y37_N0
\inst24|s_debouncecnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~20_combout\ = (\inst24|Add0~2_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|Add0~2_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~20_combout\);

-- Location: FF_X89_Y37_N1
\inst24|s_debouncecnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~20_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(1));

-- Location: LCCOMB_X89_Y37_N14
\inst24|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~4_combout\ = (\inst24|s_debouncecnt\(2) & ((GND) # (!\inst24|Add0~3\))) # (!\inst24|s_debouncecnt\(2) & (\inst24|Add0~3\ $ (GND)))
-- \inst24|Add0~5\ = CARRY((\inst24|s_debouncecnt\(2)) # (!\inst24|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(2),
	datad => VCC,
	cin => \inst24|Add0~3\,
	combout => \inst24|Add0~4_combout\,
	cout => \inst24|Add0~5\);

-- Location: LCCOMB_X89_Y37_N2
\inst24|s_debouncecnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~21_combout\ = (\inst24|Add0~4_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst24|Add0~4_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~21_combout\);

-- Location: FF_X89_Y37_N3
\inst24|s_debouncecnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~21_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(2));

-- Location: LCCOMB_X89_Y37_N16
\inst24|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|Add0~6_combout\ = (\inst24|s_debouncecnt\(3) & (\inst24|Add0~5\ & VCC)) # (!\inst24|s_debouncecnt\(3) & (!\inst24|Add0~5\))
-- \inst24|Add0~7\ = CARRY((!\inst24|s_debouncecnt\(3) & !\inst24|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst24|s_debouncecnt\(3),
	datad => VCC,
	cin => \inst24|Add0~5\,
	combout => \inst24|Add0~6_combout\,
	cout => \inst24|Add0~7\);

-- Location: LCCOMB_X89_Y37_N4
\inst24|s_debouncecnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~22_combout\ = (\inst24|Add0~6_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Add0~6_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~22_combout\);

-- Location: FF_X89_Y37_N5
\inst24|s_debouncecnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~22_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(3));

-- Location: LCCOMB_X89_Y37_N6
\inst24|s_debouncecnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_debouncecnt~23_combout\ = (\inst24|Add0~8_combout\ & \inst24|s_debouncecnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|Add0~8_combout\,
	datad => \inst24|s_debouncecnt[18]~4_combout\,
	combout => \inst24|s_debouncecnt~23_combout\);

-- Location: FF_X89_Y37_N7
\inst24|s_debouncecnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_debouncecnt~23_combout\,
	ena => \inst24|s_debouncecnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_debouncecnt\(4));

-- Location: LCCOMB_X89_Y37_N8
\inst24|s_pulsedout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~5_combout\ = (!\inst24|s_debouncecnt\(4) & (!\inst24|s_debouncecnt\(1) & (!\inst24|s_debouncecnt\(3) & !\inst24|s_debouncecnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_debouncecnt\(4),
	datab => \inst24|s_debouncecnt\(1),
	datac => \inst24|s_debouncecnt\(3),
	datad => \inst24|s_debouncecnt\(2),
	combout => \inst24|s_pulsedout~5_combout\);

-- Location: LCCOMB_X87_Y37_N18
\inst24|s_pulsedout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~6_combout\ = (\inst24|s_dirtyin~q\ & (\inst24|s_previousin~q\ & (!\inst24|s_debouncecnt\(22) & \inst24|s_debouncecnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_dirtyin~q\,
	datab => \inst24|s_previousin~q\,
	datac => \inst24|s_debouncecnt\(22),
	datad => \inst24|s_debouncecnt\(0),
	combout => \inst24|s_pulsedout~6_combout\);

-- Location: LCCOMB_X87_Y37_N12
\inst24|s_pulsedout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|s_pulsedout~7_combout\ = (\inst24|s_pulsedout~5_combout\ & (\inst24|s_pulsedout~6_combout\ & (!\inst24|s_debouncecnt\(5) & \inst24|s_pulsedout~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|s_pulsedout~5_combout\,
	datab => \inst24|s_pulsedout~6_combout\,
	datac => \inst24|s_debouncecnt\(5),
	datad => \inst24|s_pulsedout~4_combout\,
	combout => \inst24|s_pulsedout~7_combout\);

-- Location: FF_X87_Y37_N13
\inst24|s_pulsedout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst24|s_pulsedout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|s_pulsedout~q\);

-- Location: CLKCTRL_G7
\inst24|s_pulsedout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst24|s_pulsedout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst24|s_pulsedout~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y53_N16
\inst|snum[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[0]~10_combout\ = (!\SW[0]~input_o\ & ((\SW[2]~input_o\ & (\SW[4]~input_o\)) # (!\SW[2]~input_o\ & ((!\inst|snum\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \inst|snum\(0),
	combout => \inst|snum[0]~10_combout\);

-- Location: LCCOMB_X114_Y53_N12
\inst|snum[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[0]~11_combout\ = (\SW[1]~input_o\ & (\inst|snum[0]~10_combout\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\inst|snum[0]~10_combout\)) # (!\SW[0]~input_o\ & ((\inst|snum\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|snum[0]~10_combout\,
	datac => \inst|snum\(0),
	datad => \SW[0]~input_o\,
	combout => \inst|snum[0]~11_combout\);

-- Location: FF_X114_Y53_N13
\inst|snum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|s_pulsedout~clkctrl_outclk\,
	d => \inst|snum[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(0));

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y53_N18
\inst|snum[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[1]~4_cout\ = CARRY(\inst|snum\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datad => VCC,
	cout => \inst|snum[1]~4_cout\);

-- Location: LCCOMB_X114_Y53_N20
\inst|snum[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[1]~5_combout\ = (\SW[3]~input_o\ & ((\inst|snum\(1) & (\inst|snum[1]~4_cout\ & VCC)) # (!\inst|snum\(1) & (!\inst|snum[1]~4_cout\)))) # (!\SW[3]~input_o\ & ((\inst|snum\(1) & (!\inst|snum[1]~4_cout\)) # (!\inst|snum\(1) & 
-- ((\inst|snum[1]~4_cout\) # (GND)))))
-- \inst|snum[1]~6\ = CARRY((\SW[3]~input_o\ & (!\inst|snum\(1) & !\inst|snum[1]~4_cout\)) # (!\SW[3]~input_o\ & ((!\inst|snum[1]~4_cout\) # (!\inst|snum\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|snum\(1),
	datad => VCC,
	cin => \inst|snum[1]~4_cout\,
	combout => \inst|snum[1]~5_combout\,
	cout => \inst|snum[1]~6\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X114_Y53_N30
\inst|snum[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[3]~9_combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|snum[3]~9_combout\);

-- Location: FF_X114_Y53_N21
\inst|snum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|s_pulsedout~clkctrl_outclk\,
	d => \inst|snum[1]~5_combout\,
	asdata => \SW[5]~input_o\,
	sclr => \SW[0]~input_o\,
	sload => \SW[2]~input_o\,
	ena => \inst|snum[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(1));

-- Location: LCCOMB_X114_Y53_N22
\inst|snum[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[2]~7_combout\ = ((\inst|snum\(2) $ (\SW[3]~input_o\ $ (!\inst|snum[1]~6\)))) # (GND)
-- \inst|snum[2]~8\ = CARRY((\inst|snum\(2) & ((\SW[3]~input_o\) # (!\inst|snum[1]~6\))) # (!\inst|snum\(2) & (\SW[3]~input_o\ & !\inst|snum[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(2),
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|snum[1]~6\,
	combout => \inst|snum[2]~7_combout\,
	cout => \inst|snum[2]~8\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X114_Y53_N23
\inst|snum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|s_pulsedout~clkctrl_outclk\,
	d => \inst|snum[2]~7_combout\,
	asdata => \SW[6]~input_o\,
	sclr => \SW[0]~input_o\,
	sload => \SW[2]~input_o\,
	ena => \inst|snum[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(2));

-- Location: LCCOMB_X114_Y53_N24
\inst|snum[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|snum[3]~12_combout\ = \SW[3]~input_o\ $ (\inst|snum[2]~8\ $ (\inst|snum\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \inst|snum\(3),
	cin => \inst|snum[2]~8\,
	combout => \inst|snum[3]~12_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y53_N25
\inst|snum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst24|s_pulsedout~clkctrl_outclk\,
	d => \inst|snum[3]~12_combout\,
	asdata => \SW[7]~input_o\,
	sclr => \SW[0]~input_o\,
	sload => \SW[2]~input_o\,
	ena => \inst|snum[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|snum\(3));

-- Location: LCCOMB_X107_Y72_N28
\inst2|decout_n[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[6]~0_combout\ = (\inst|snum\(0) & (!\inst|snum\(3) & (\inst|snum\(2) $ (!\inst|snum\(1))))) # (!\inst|snum\(0) & (!\inst|snum\(1) & (\inst|snum\(2) $ (!\inst|snum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[6]~0_combout\);

-- Location: LCCOMB_X107_Y72_N30
\inst2|decout_n[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[5]~1_combout\ = (\inst|snum\(0) & (\inst|snum\(3) $ (((\inst|snum\(1)) # (!\inst|snum\(2)))))) # (!\inst|snum\(0) & (!\inst|snum\(2) & (\inst|snum\(1) & !\inst|snum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[5]~1_combout\);

-- Location: LCCOMB_X114_Y53_N10
\inst2|decout_n[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[4]~2_combout\ = (\inst|snum\(1) & (!\inst|snum\(3) & ((\inst|snum\(0))))) # (!\inst|snum\(1) & ((\inst|snum\(2) & (!\inst|snum\(3))) # (!\inst|snum\(2) & ((\inst|snum\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(1),
	datab => \inst|snum\(3),
	datac => \inst|snum\(2),
	datad => \inst|snum\(0),
	combout => \inst2|decout_n[4]~2_combout\);

-- Location: LCCOMB_X114_Y53_N28
\inst2|decout_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[3]~3_combout\ = (\inst|snum\(1) & ((\inst|snum\(2) & ((\inst|snum\(0)))) # (!\inst|snum\(2) & (\inst|snum\(3) & !\inst|snum\(0))))) # (!\inst|snum\(1) & (!\inst|snum\(3) & (\inst|snum\(2) $ (\inst|snum\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(1),
	datab => \inst|snum\(3),
	datac => \inst|snum\(2),
	datad => \inst|snum\(0),
	combout => \inst2|decout_n[3]~3_combout\);

-- Location: LCCOMB_X107_Y72_N0
\inst2|decout_n[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[2]~4_combout\ = (\inst|snum\(2) & (\inst|snum\(3) & ((\inst|snum\(1)) # (!\inst|snum\(0))))) # (!\inst|snum\(2) & (!\inst|snum\(0) & (\inst|snum\(1) & !\inst|snum\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[2]~4_combout\);

-- Location: LCCOMB_X107_Y72_N2
\inst2|decout_n[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[1]~5_combout\ = (\inst|snum\(1) & ((\inst|snum\(0) & ((\inst|snum\(3)))) # (!\inst|snum\(0) & (\inst|snum\(2))))) # (!\inst|snum\(1) & (\inst|snum\(2) & (\inst|snum\(0) $ (\inst|snum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[1]~5_combout\);

-- Location: LCCOMB_X107_Y72_N12
\inst2|decout_n[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|decout_n[0]~6_combout\ = (\inst|snum\(2) & (!\inst|snum\(1) & (\inst|snum\(0) $ (!\inst|snum\(3))))) # (!\inst|snum\(2) & (\inst|snum\(0) & (\inst|snum\(1) $ (!\inst|snum\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|snum\(0),
	datab => \inst|snum\(2),
	datac => \inst|snum\(1),
	datad => \inst|snum\(3),
	combout => \inst2|decout_n[0]~6_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


