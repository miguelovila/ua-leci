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

-- DATE "04/21/2022 12:01:06"

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

ENTITY 	combshiftunit_demo IS
    PORT (
	sw : IN std_logic_vector(11 DOWNTO 0);
	clock_50 : IN std_logic;
	key : IN std_logic_vector(2 DOWNTO 0);
	ledr : OUT std_logic_vector(7 DOWNTO 0)
	);
END combshiftunit_demo;

-- Design Ports Information
-- ledr[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF combshiftunit_demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_key : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \freqd|clkout~2_combout\ : std_logic;
SIGNAL \freqd|LessThan0~2_combout\ : std_logic;
SIGNAL \freqd|LessThan0~0_combout\ : std_logic;
SIGNAL \freqd|LessThan0~1_combout\ : std_logic;
SIGNAL \freqd|LessThan0~3_combout\ : std_logic;
SIGNAL \freqd|LessThan0~4_combout\ : std_logic;
SIGNAL \freqd|LessThan0~5_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[0]~27\ : std_logic;
SIGNAL \freqd|s_divcounter[1]~28_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[1]~29\ : std_logic;
SIGNAL \freqd|s_divcounter[2]~30_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[2]~31\ : std_logic;
SIGNAL \freqd|s_divcounter[3]~32_combout\ : std_logic;
SIGNAL \freqd|s_divcounter[3]~33\ : std_logic;
SIGNAL \freqd|s_divcounter[4]~34_combout\ : std_logic;
SIGNAL \freqd|clkout~0_combout\ : std_logic;
SIGNAL \freqd|clkout~1_combout\ : std_logic;
SIGNAL \freqd|clkout~3_combout\ : std_logic;
SIGNAL \freqd|clkout~4_combout\ : std_logic;
SIGNAL \freqd|clkout~5_combout\ : std_logic;
SIGNAL \freqd|clkout~6_combout\ : std_logic;
SIGNAL \freqd|clkout~7_combout\ : std_logic;
SIGNAL \freqd|clkout~8_combout\ : std_logic;
SIGNAL \freqd|clkout~feeder_combout\ : std_logic;
SIGNAL \freqd|clkout~q\ : std_logic;
SIGNAL \freqd|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \sw[11]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[10]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \shreg|RotateLeft0~1_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~9_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[6]~40_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[6]~31_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \shreg|ShiftRight0~1_combout\ : std_logic;
SIGNAL \shreg|ShiftRight0~2_combout\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \shreg|s_shiftreg[1]~6_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~2_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~7_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~5_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[1]~12_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[1]~7_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[1]~9_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[1]~8_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~2_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~3_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~10_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~11_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~13_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~14_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~15_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~6_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~7_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[6]~37_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[6]~32_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[6]~34_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[6]~33_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~35_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~36_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~38_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~39_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[5]~1_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \shreg|RotateLeft0~8_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~13_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~10_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~11_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~4_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~8_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~5_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~43_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~41_combout\ : std_logic;
SIGNAL \shreg|ShiftRight0~3_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~42_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~44_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[6]~2_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \shreg|RotateLeft0~12_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~4_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~14_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~47_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~9_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~1_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~10_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~0_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~6_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~45_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~46_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~48_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[7]~3_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \shreg|ShiftRight1~0_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~1_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~3_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~11_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~3_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~5_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~15_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~27_combout\ : std_logic;
SIGNAL \shreg|ShiftRight0~0_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~28_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~29_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~30_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~6_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~7_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~18_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~16_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~17_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~19_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~20_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \shreg|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~21_combout\ : std_logic;
SIGNAL \shreg|RotateRight0~8_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~22_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~23_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~24_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~25_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~26_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~0_combout\ : std_logic;
SIGNAL \shreg|RotateLeft0~2_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~4_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg~5_combout\ : std_logic;
SIGNAL \shreg|ShiftRight1~4_combout\ : std_logic;
SIGNAL \shreg|s_shiftreg[0]~0_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \freqd|s_divcounter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \shreg|s_shiftreg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freqd|ALT_INV_clkout~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sw <= sw;
ww_clock_50 <= clock_50;
ww_key <= key;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);

\freqd|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \freqd|clkout~q\);
\freqd|ALT_INV_clkout~clkctrl_outclk\ <= NOT \freqd|clkout~clkctrl_outclk\;
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
	i => \shreg|s_shiftreg\(0),
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
	i => \shreg|s_shiftreg\(1),
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
	i => \shreg|s_shiftreg\(2),
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
	i => \shreg|s_shiftreg\(3),
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
	i => \shreg|s_shiftreg\(4),
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
	i => \shreg|s_shiftreg\(5),
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
	i => \shreg|s_shiftreg\(6),
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
	i => \shreg|s_shiftreg\(7),
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

-- Location: LCCOMB_X66_Y7_N6
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

-- Location: LCCOMB_X66_Y7_N14
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

-- Location: LCCOMB_X66_Y7_N16
\freqd|s_divcounter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[5]~36_combout\ = (\freqd|s_divcounter\(5) & (!\freqd|s_divcounter[4]~35\)) # (!\freqd|s_divcounter\(5) & ((\freqd|s_divcounter[4]~35\) # (GND)))
-- \freqd|s_divcounter[5]~37\ = CARRY((!\freqd|s_divcounter[4]~35\) # (!\freqd|s_divcounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(5),
	datad => VCC,
	cin => \freqd|s_divcounter[4]~35\,
	combout => \freqd|s_divcounter[5]~36_combout\,
	cout => \freqd|s_divcounter[5]~37\);

-- Location: FF_X66_Y7_N17
\freqd|s_divcounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[5]~36_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(5));

-- Location: LCCOMB_X66_Y7_N18
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

-- Location: FF_X66_Y7_N19
\freqd|s_divcounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[6]~38_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(6));

-- Location: LCCOMB_X66_Y7_N20
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

-- Location: FF_X66_Y7_N21
\freqd|s_divcounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[7]~40_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(7));

-- Location: LCCOMB_X66_Y7_N22
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

-- Location: FF_X66_Y7_N23
\freqd|s_divcounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[8]~42_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(8));

-- Location: LCCOMB_X66_Y7_N24
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

-- Location: FF_X66_Y7_N25
\freqd|s_divcounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[9]~44_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(9));

-- Location: LCCOMB_X66_Y7_N26
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

-- Location: FF_X66_Y7_N27
\freqd|s_divcounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[10]~46_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(10));

-- Location: LCCOMB_X66_Y7_N28
\freqd|s_divcounter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[11]~48_combout\ = (\freqd|s_divcounter\(11) & (!\freqd|s_divcounter[10]~47\)) # (!\freqd|s_divcounter\(11) & ((\freqd|s_divcounter[10]~47\) # (GND)))
-- \freqd|s_divcounter[11]~49\ = CARRY((!\freqd|s_divcounter[10]~47\) # (!\freqd|s_divcounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(11),
	datad => VCC,
	cin => \freqd|s_divcounter[10]~47\,
	combout => \freqd|s_divcounter[11]~48_combout\,
	cout => \freqd|s_divcounter[11]~49\);

-- Location: FF_X66_Y7_N29
\freqd|s_divcounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[11]~48_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(11));

-- Location: LCCOMB_X66_Y7_N30
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

-- Location: FF_X66_Y7_N31
\freqd|s_divcounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[12]~50_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(12));

-- Location: LCCOMB_X66_Y6_N0
\freqd|s_divcounter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[13]~52_combout\ = (\freqd|s_divcounter\(13) & (!\freqd|s_divcounter[12]~51\)) # (!\freqd|s_divcounter\(13) & ((\freqd|s_divcounter[12]~51\) # (GND)))
-- \freqd|s_divcounter[13]~53\ = CARRY((!\freqd|s_divcounter[12]~51\) # (!\freqd|s_divcounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(13),
	datad => VCC,
	cin => \freqd|s_divcounter[12]~51\,
	combout => \freqd|s_divcounter[13]~52_combout\,
	cout => \freqd|s_divcounter[13]~53\);

-- Location: FF_X65_Y7_N15
\freqd|s_divcounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \freqd|s_divcounter[13]~52_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(13));

-- Location: LCCOMB_X66_Y6_N2
\freqd|s_divcounter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[14]~54_combout\ = (\freqd|s_divcounter\(14) & (\freqd|s_divcounter[13]~53\ $ (GND))) # (!\freqd|s_divcounter\(14) & (!\freqd|s_divcounter[13]~53\ & VCC))
-- \freqd|s_divcounter[14]~55\ = CARRY((\freqd|s_divcounter\(14) & !\freqd|s_divcounter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(14),
	datad => VCC,
	cin => \freqd|s_divcounter[13]~53\,
	combout => \freqd|s_divcounter[14]~54_combout\,
	cout => \freqd|s_divcounter[14]~55\);

-- Location: FF_X65_Y7_N9
\freqd|s_divcounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \freqd|s_divcounter[14]~54_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(14));

-- Location: LCCOMB_X66_Y6_N4
\freqd|s_divcounter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[15]~56_combout\ = (\freqd|s_divcounter\(15) & (!\freqd|s_divcounter[14]~55\)) # (!\freqd|s_divcounter\(15) & ((\freqd|s_divcounter[14]~55\) # (GND)))
-- \freqd|s_divcounter[15]~57\ = CARRY((!\freqd|s_divcounter[14]~55\) # (!\freqd|s_divcounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(15),
	datad => VCC,
	cin => \freqd|s_divcounter[14]~55\,
	combout => \freqd|s_divcounter[15]~56_combout\,
	cout => \freqd|s_divcounter[15]~57\);

-- Location: FF_X65_Y7_N29
\freqd|s_divcounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \freqd|s_divcounter[15]~56_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(15));

-- Location: LCCOMB_X66_Y6_N6
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

-- Location: FF_X65_Y7_N19
\freqd|s_divcounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \freqd|s_divcounter[16]~58_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(16));

-- Location: LCCOMB_X66_Y6_N8
\freqd|s_divcounter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|s_divcounter[17]~60_combout\ = (\freqd|s_divcounter\(17) & (!\freqd|s_divcounter[16]~59\)) # (!\freqd|s_divcounter\(17) & ((\freqd|s_divcounter[16]~59\) # (GND)))
-- \freqd|s_divcounter[17]~61\ = CARRY((!\freqd|s_divcounter[16]~59\) # (!\freqd|s_divcounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(17),
	datad => VCC,
	cin => \freqd|s_divcounter[16]~59\,
	combout => \freqd|s_divcounter[17]~60_combout\,
	cout => \freqd|s_divcounter[17]~61\);

-- Location: FF_X65_Y7_N13
\freqd|s_divcounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \freqd|s_divcounter[17]~60_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(17));

-- Location: LCCOMB_X66_Y6_N10
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

-- Location: FF_X66_Y6_N11
\freqd|s_divcounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[18]~62_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(18));

-- Location: LCCOMB_X66_Y6_N12
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

-- Location: FF_X66_Y6_N13
\freqd|s_divcounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[19]~64_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(19));

-- Location: LCCOMB_X66_Y6_N14
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

-- Location: FF_X66_Y6_N15
\freqd|s_divcounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[20]~66_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(20));

-- Location: LCCOMB_X66_Y6_N16
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

-- Location: FF_X66_Y6_N17
\freqd|s_divcounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[21]~68_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(21));

-- Location: LCCOMB_X66_Y6_N18
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

-- Location: FF_X66_Y6_N19
\freqd|s_divcounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[22]~70_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(22));

-- Location: LCCOMB_X66_Y6_N20
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

-- Location: FF_X66_Y6_N21
\freqd|s_divcounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[23]~72_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(23));

-- Location: LCCOMB_X66_Y6_N22
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

-- Location: FF_X66_Y6_N23
\freqd|s_divcounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[24]~74_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(24));

-- Location: LCCOMB_X66_Y6_N24
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

-- Location: FF_X66_Y6_N25
\freqd|s_divcounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[25]~76_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(25));

-- Location: LCCOMB_X66_Y6_N26
\freqd|clkout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~2_combout\ = (\freqd|s_divcounter\(19) & (\freqd|s_divcounter\(21) & (\freqd|s_divcounter\(20) & \freqd|s_divcounter\(22))))

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
	combout => \freqd|clkout~2_combout\);

-- Location: LCCOMB_X65_Y7_N26
\freqd|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~2_combout\ = (((!\freqd|s_divcounter\(15)) # (!\freqd|s_divcounter\(12))) # (!\freqd|s_divcounter\(14))) # (!\freqd|s_divcounter\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(13),
	datab => \freqd|s_divcounter\(14),
	datac => \freqd|s_divcounter\(12),
	datad => \freqd|s_divcounter\(15),
	combout => \freqd|LessThan0~2_combout\);

-- Location: LCCOMB_X66_Y7_N4
\freqd|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~0_combout\ = (!\freqd|s_divcounter\(8) & (!\freqd|s_divcounter\(9) & (!\freqd|s_divcounter\(10) & !\freqd|s_divcounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(8),
	datab => \freqd|s_divcounter\(9),
	datac => \freqd|s_divcounter\(10),
	datad => \freqd|s_divcounter\(7),
	combout => \freqd|LessThan0~0_combout\);

-- Location: LCCOMB_X65_Y7_N2
\freqd|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~1_combout\ = (\freqd|LessThan0~0_combout\ & (!\freqd|s_divcounter\(11) & ((!\freqd|clkout~1_combout\) # (!\freqd|s_divcounter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|LessThan0~0_combout\,
	datab => \freqd|s_divcounter\(11),
	datac => \freqd|s_divcounter\(6),
	datad => \freqd|clkout~1_combout\,
	combout => \freqd|LessThan0~1_combout\);

-- Location: LCCOMB_X65_Y7_N0
\freqd|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~3_combout\ = ((!\freqd|s_divcounter\(16) & ((\freqd|LessThan0~2_combout\) # (\freqd|LessThan0~1_combout\)))) # (!\freqd|s_divcounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(17),
	datab => \freqd|s_divcounter\(16),
	datac => \freqd|LessThan0~2_combout\,
	datad => \freqd|LessThan0~1_combout\,
	combout => \freqd|LessThan0~3_combout\);

-- Location: LCCOMB_X65_Y7_N10
\freqd|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~4_combout\ = (((!\freqd|s_divcounter\(18) & \freqd|LessThan0~3_combout\)) # (!\freqd|clkout~2_combout\)) # (!\freqd|s_divcounter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(23),
	datab => \freqd|s_divcounter\(18),
	datac => \freqd|clkout~2_combout\,
	datad => \freqd|LessThan0~3_combout\,
	combout => \freqd|LessThan0~4_combout\);

-- Location: LCCOMB_X65_Y7_N30
\freqd|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|LessThan0~5_combout\ = (\freqd|s_divcounter\(25) & ((\freqd|s_divcounter\(24)) # (!\freqd|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(25),
	datac => \freqd|s_divcounter\(24),
	datad => \freqd|LessThan0~4_combout\,
	combout => \freqd|LessThan0~5_combout\);

-- Location: FF_X66_Y7_N7
\freqd|s_divcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[0]~26_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(0));

-- Location: LCCOMB_X66_Y7_N8
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

-- Location: FF_X66_Y7_N9
\freqd|s_divcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[1]~28_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(1));

-- Location: LCCOMB_X66_Y7_N10
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

-- Location: FF_X66_Y7_N11
\freqd|s_divcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[2]~30_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(2));

-- Location: LCCOMB_X66_Y7_N12
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

-- Location: FF_X66_Y7_N13
\freqd|s_divcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[3]~32_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(3));

-- Location: FF_X66_Y7_N15
\freqd|s_divcounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|s_divcounter[4]~34_combout\,
	sclr => \freqd|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqd|s_divcounter\(4));

-- Location: LCCOMB_X66_Y7_N0
\freqd|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~0_combout\ = (\freqd|s_divcounter\(3) & (\freqd|s_divcounter\(0) & (\freqd|s_divcounter\(1) & \freqd|s_divcounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(3),
	datab => \freqd|s_divcounter\(0),
	datac => \freqd|s_divcounter\(1),
	datad => \freqd|s_divcounter\(2),
	combout => \freqd|clkout~0_combout\);

-- Location: LCCOMB_X66_Y7_N2
\freqd|clkout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~1_combout\ = (\freqd|s_divcounter\(4) & (\freqd|s_divcounter\(5) & \freqd|clkout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(4),
	datac => \freqd|s_divcounter\(5),
	datad => \freqd|clkout~0_combout\,
	combout => \freqd|clkout~1_combout\);

-- Location: LCCOMB_X65_Y7_N4
\freqd|clkout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~3_combout\ = ((!\freqd|s_divcounter\(24) & \freqd|LessThan0~4_combout\)) # (!\freqd|s_divcounter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqd|s_divcounter\(24),
	datac => \freqd|s_divcounter\(25),
	datad => \freqd|LessThan0~4_combout\,
	combout => \freqd|clkout~3_combout\);

-- Location: LCCOMB_X65_Y7_N14
\freqd|clkout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~4_combout\ = (\freqd|s_divcounter\(12) & (\freqd|s_divcounter\(14) & (\freqd|s_divcounter\(13) & !\freqd|s_divcounter\(6))))

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
	combout => \freqd|clkout~4_combout\);

-- Location: LCCOMB_X66_Y6_N28
\freqd|clkout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~5_combout\ = (\freqd|s_divcounter\(24) & (!\freqd|s_divcounter\(15) & (!\freqd|s_divcounter\(17) & \freqd|s_divcounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(24),
	datab => \freqd|s_divcounter\(15),
	datac => \freqd|s_divcounter\(17),
	datad => \freqd|s_divcounter\(11),
	combout => \freqd|clkout~5_combout\);

-- Location: LCCOMB_X66_Y6_N30
\freqd|clkout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~6_combout\ = (\freqd|s_divcounter\(18) & (!\freqd|s_divcounter\(23) & (\freqd|s_divcounter\(16) & \freqd|clkout~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|s_divcounter\(18),
	datab => \freqd|s_divcounter\(23),
	datac => \freqd|s_divcounter\(16),
	datad => \freqd|clkout~5_combout\,
	combout => \freqd|clkout~6_combout\);

-- Location: LCCOMB_X65_Y7_N16
\freqd|clkout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~7_combout\ = (\freqd|LessThan0~0_combout\ & (\freqd|clkout~2_combout\ & (\freqd|clkout~4_combout\ & \freqd|clkout~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|LessThan0~0_combout\,
	datab => \freqd|clkout~2_combout\,
	datac => \freqd|clkout~4_combout\,
	datad => \freqd|clkout~6_combout\,
	combout => \freqd|clkout~7_combout\);

-- Location: LCCOMB_X65_Y7_N20
\freqd|clkout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~8_combout\ = (\freqd|clkout~3_combout\ & ((\freqd|clkout~q\) # ((\freqd|clkout~1_combout\ & \freqd|clkout~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqd|clkout~1_combout\,
	datab => \freqd|clkout~q\,
	datac => \freqd|clkout~3_combout\,
	datad => \freqd|clkout~7_combout\,
	combout => \freqd|clkout~8_combout\);

-- Location: LCCOMB_X65_Y7_N24
\freqd|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \freqd|clkout~feeder_combout\ = \freqd|clkout~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqd|clkout~8_combout\,
	combout => \freqd|clkout~feeder_combout\);

-- Location: FF_X65_Y7_N25
\freqd|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \freqd|clkout~feeder_combout\,
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

-- Location: IOIBUF_X115_Y53_N15
\key[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\sw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\sw[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(11),
	o => \sw[11]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\sw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\sw[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(10),
	o => \sw[10]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\sw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X111_Y16_N16
\shreg|RotateLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~1_combout\ = (\sw[10]~input_o\ & ((\shreg|s_shiftreg\(2)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datac => \shreg|s_shiftreg\(4),
	datad => \shreg|s_shiftreg\(2),
	combout => \shreg|RotateLeft0~1_combout\);

-- Location: LCCOMB_X111_Y16_N28
\shreg|RotateLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~9_combout\ = (\sw[9]~input_o\ & (\shreg|RotateLeft0~1_combout\)) # (!\sw[9]~input_o\ & ((\shreg|RotateLeft0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shreg|RotateLeft0~1_combout\,
	datac => \sw[9]~input_o\,
	datad => \shreg|RotateLeft0~8_combout\,
	combout => \shreg|RotateLeft0~9_combout\);

-- Location: LCCOMB_X112_Y16_N0
\shreg|s_shiftreg[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[6]~40_combout\ = (\sw[11]~input_o\) # (!\key[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[6]~40_combout\);

-- Location: LCCOMB_X111_Y16_N24
\shreg|s_shiftreg[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[6]~31_combout\ = (\key[0]~input_o\ & ((\sw[11]~input_o\) # (\key[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[6]~31_combout\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X109_Y16_N30
\shreg|ShiftRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight0~1_combout\ = (!\sw[10]~input_o\ & ((\sw[9]~input_o\ & ((\shreg|s_shiftreg\(6)))) # (!\sw[9]~input_o\ & (\shreg|s_shiftreg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \shreg|s_shiftreg\(5),
	datad => \shreg|s_shiftreg\(6),
	combout => \shreg|ShiftRight0~1_combout\);

-- Location: LCCOMB_X108_Y16_N16
\shreg|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight0~2_combout\ = (\shreg|ShiftRight0~1_combout\) # ((\sw[10]~input_o\ & \shreg|s_shiftreg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datac => \shreg|ShiftRight0~1_combout\,
	datad => \shreg|s_shiftreg\(7),
	combout => \shreg|ShiftRight0~2_combout\);

-- Location: IOIBUF_X115_Y42_N15
\key[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(2),
	o => \key[2]~input_o\);

-- Location: LCCOMB_X112_Y16_N20
\shreg|s_shiftreg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[1]~6_combout\ = (!\key[1]~input_o\ & (((\key[2]~input_o\ & !\key[0]~input_o\)) # (!\sw[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datab => \key[0]~input_o\,
	datac => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[1]~6_combout\);

-- Location: LCCOMB_X113_Y16_N30
\shreg|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~2_combout\ = (\sw[10]~input_o\ & (\shreg|s_shiftreg\(3))) # (!\sw[10]~input_o\ & ((\shreg|s_shiftreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(3),
	datab => \sw[10]~input_o\,
	datad => \shreg|s_shiftreg\(1),
	combout => \shreg|ShiftRight1~2_combout\);

-- Location: LCCOMB_X110_Y16_N10
\shreg|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~7_combout\ = (\sw[9]~input_o\ & ((\shreg|ShiftRight1~6_combout\))) # (!\sw[9]~input_o\ & (\shreg|ShiftRight1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \shreg|ShiftRight1~2_combout\,
	datad => \shreg|ShiftRight1~6_combout\,
	combout => \shreg|ShiftRight1~7_combout\);

-- Location: LCCOMB_X109_Y16_N22
\shreg|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~5_combout\ = (\shreg|ShiftRight0~1_combout\) # ((\sw[10]~input_o\ & (!\sw[9]~input_o\ & \shreg|s_shiftreg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \shreg|ShiftRight0~1_combout\,
	datad => \shreg|s_shiftreg\(7),
	combout => \shreg|ShiftRight1~5_combout\);

-- Location: LCCOMB_X111_Y16_N22
\shreg|s_shiftreg[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[1]~12_combout\ = (\key[0]~input_o\) # ((\key[1]~input_o\) # (!\sw[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[1]~12_combout\);

-- Location: LCCOMB_X112_Y16_N22
\shreg|s_shiftreg[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[1]~7_combout\ = (\key[0]~input_o\ & \key[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[1]~7_combout\);

-- Location: LCCOMB_X111_Y16_N12
\shreg|s_shiftreg[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[1]~9_combout\ = (\key[0]~input_o\ & ((\sw[11]~input_o\) # (!\key[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[1]~9_combout\);

-- Location: LCCOMB_X111_Y16_N26
\shreg|s_shiftreg[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[1]~8_combout\ = (\key[0]~input_o\ & ((!\key[1]~input_o\))) # (!\key[0]~input_o\ & (!\sw[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[0]~input_o\,
	datac => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[1]~8_combout\);

-- Location: LCCOMB_X108_Y16_N14
\shreg|RotateRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~2_combout\ = (\sw[10]~input_o\ & ((\sw[9]~input_o\ & (\shreg|s_shiftreg\(0))) # (!\sw[9]~input_o\ & ((\shreg|s_shiftreg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[10]~input_o\,
	datac => \shreg|s_shiftreg\(0),
	datad => \shreg|s_shiftreg\(7),
	combout => \shreg|RotateRight0~2_combout\);

-- Location: LCCOMB_X109_Y16_N20
\shreg|RotateRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~3_combout\ = (\shreg|ShiftRight0~1_combout\) # (\shreg|RotateRight0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shreg|ShiftRight0~1_combout\,
	datad => \shreg|RotateRight0~2_combout\,
	combout => \shreg|RotateRight0~3_combout\);

-- Location: LCCOMB_X109_Y16_N2
\shreg|s_shiftreg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~10_combout\ = (\shreg|s_shiftreg[1]~9_combout\ & (((\shreg|RotateRight0~3_combout\) # (!\shreg|s_shiftreg[1]~8_combout\)))) # (!\shreg|s_shiftreg[1]~9_combout\ & (\shreg|ShiftLeft0~0_combout\ & (\shreg|s_shiftreg[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[1]~9_combout\,
	datab => \shreg|ShiftLeft0~0_combout\,
	datac => \shreg|s_shiftreg[1]~8_combout\,
	datad => \shreg|RotateRight0~3_combout\,
	combout => \shreg|s_shiftreg~10_combout\);

-- Location: LCCOMB_X109_Y16_N24
\shreg|s_shiftreg~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~11_combout\ = (\shreg|s_shiftreg[1]~7_combout\ & ((\shreg|s_shiftreg~10_combout\ & (\shreg|RotateLeft0~9_combout\)) # (!\shreg|s_shiftreg~10_combout\ & ((\shreg|RotateLeft0~7_combout\))))) # (!\shreg|s_shiftreg[1]~7_combout\ & 
-- (((\shreg|s_shiftreg~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|RotateLeft0~9_combout\,
	datab => \shreg|s_shiftreg[1]~7_combout\,
	datac => \shreg|RotateLeft0~7_combout\,
	datad => \shreg|s_shiftreg~10_combout\,
	combout => \shreg|s_shiftreg~11_combout\);

-- Location: LCCOMB_X109_Y16_N28
\shreg|s_shiftreg~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~13_combout\ = (\shreg|s_shiftreg[1]~6_combout\ & (((\shreg|s_shiftreg[1]~12_combout\)))) # (!\shreg|s_shiftreg[1]~6_combout\ & ((\shreg|s_shiftreg[1]~12_combout\ & ((\shreg|s_shiftreg~11_combout\))) # (!\shreg|s_shiftreg[1]~12_combout\ & 
-- (\shreg|ShiftRight1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|ShiftRight1~5_combout\,
	datab => \shreg|s_shiftreg[1]~6_combout\,
	datac => \shreg|s_shiftreg[1]~12_combout\,
	datad => \shreg|s_shiftreg~11_combout\,
	combout => \shreg|s_shiftreg~13_combout\);

-- Location: LCCOMB_X109_Y16_N18
\shreg|s_shiftreg~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~14_combout\ = (\shreg|s_shiftreg[1]~6_combout\ & ((\shreg|s_shiftreg~13_combout\ & ((\shreg|ShiftRight1~7_combout\))) # (!\shreg|s_shiftreg~13_combout\ & (\shreg|ShiftRight0~2_combout\)))) # (!\shreg|s_shiftreg[1]~6_combout\ & 
-- (((\shreg|s_shiftreg~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|ShiftRight0~2_combout\,
	datab => \shreg|s_shiftreg[1]~6_combout\,
	datac => \shreg|ShiftRight1~7_combout\,
	datad => \shreg|s_shiftreg~13_combout\,
	combout => \shreg|s_shiftreg~14_combout\);

-- Location: LCCOMB_X109_Y16_N16
\shreg|s_shiftreg~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~15_combout\ = (\sw[8]~input_o\ & (\sw[1]~input_o\)) # (!\sw[8]~input_o\ & ((\shreg|s_shiftreg~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \shreg|s_shiftreg~14_combout\,
	combout => \shreg|s_shiftreg~15_combout\);

-- Location: FF_X109_Y16_N17
\shreg|s_shiftreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(1));

-- Location: LCCOMB_X109_Y16_N4
\shreg|ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~0_combout\ = (!\sw[10]~input_o\ & ((\sw[9]~input_o\ & ((\shreg|s_shiftreg\(0)))) # (!\sw[9]~input_o\ & (\shreg|s_shiftreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \shreg|s_shiftreg\(1),
	datac => \sw[9]~input_o\,
	datad => \shreg|s_shiftreg\(0),
	combout => \shreg|ShiftLeft0~0_combout\);

-- Location: LCCOMB_X114_Y16_N26
\shreg|RotateLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~6_combout\ = (\sw[10]~input_o\ & ((\sw[9]~input_o\ & ((\shreg|s_shiftreg\(6)))) # (!\sw[9]~input_o\ & (\shreg|s_shiftreg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(7),
	datab => \sw[9]~input_o\,
	datac => \sw[10]~input_o\,
	datad => \shreg|s_shiftreg\(6),
	combout => \shreg|RotateLeft0~6_combout\);

-- Location: LCCOMB_X109_Y16_N14
\shreg|RotateLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~7_combout\ = (\shreg|ShiftLeft0~0_combout\) # (\shreg|RotateLeft0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shreg|ShiftLeft0~0_combout\,
	datad => \shreg|RotateLeft0~6_combout\,
	combout => \shreg|RotateLeft0~7_combout\);

-- Location: LCCOMB_X111_Y16_N6
\shreg|s_shiftreg[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[6]~37_combout\ = (\key[1]~input_o\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[0]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[6]~37_combout\);

-- Location: LCCOMB_X112_Y16_N14
\shreg|s_shiftreg[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[6]~32_combout\ = (\key[2]~input_o\ & !\key[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key[2]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[6]~32_combout\);

-- Location: LCCOMB_X112_Y16_N30
\shreg|s_shiftreg[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[6]~34_combout\ = (\key[1]~input_o\) # ((\key[2]~input_o\ & \sw[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datab => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[6]~34_combout\);

-- Location: LCCOMB_X112_Y16_N12
\shreg|s_shiftreg[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[6]~33_combout\ = (\key[1]~input_o\) # ((!\key[2]~input_o\ & !\sw[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[2]~input_o\,
	datac => \sw[11]~input_o\,
	datad => \key[1]~input_o\,
	combout => \shreg|s_shiftreg[6]~33_combout\);

-- Location: LCCOMB_X109_Y16_N0
\shreg|s_shiftreg~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~35_combout\ = (\shreg|s_shiftreg[6]~34_combout\ & ((\shreg|ShiftLeft0~0_combout\) # ((!\shreg|s_shiftreg[6]~33_combout\)))) # (!\shreg|s_shiftreg[6]~34_combout\ & (((\shreg|ShiftRight1~5_combout\ & \shreg|s_shiftreg[6]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~34_combout\,
	datab => \shreg|ShiftLeft0~0_combout\,
	datac => \shreg|ShiftRight1~5_combout\,
	datad => \shreg|s_shiftreg[6]~33_combout\,
	combout => \shreg|s_shiftreg~35_combout\);

-- Location: LCCOMB_X109_Y16_N26
\shreg|s_shiftreg~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~36_combout\ = (\shreg|s_shiftreg[6]~32_combout\ & ((\shreg|s_shiftreg~35_combout\ & (\shreg|s_shiftreg\(7))) # (!\shreg|s_shiftreg~35_combout\ & ((\shreg|ShiftRight0~2_combout\))))) # (!\shreg|s_shiftreg[6]~32_combout\ & 
-- (((\shreg|s_shiftreg~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~32_combout\,
	datab => \shreg|s_shiftreg\(7),
	datac => \shreg|ShiftRight0~2_combout\,
	datad => \shreg|s_shiftreg~35_combout\,
	combout => \shreg|s_shiftreg~36_combout\);

-- Location: LCCOMB_X109_Y16_N12
\shreg|s_shiftreg~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~38_combout\ = (\shreg|s_shiftreg[6]~31_combout\ & (\shreg|s_shiftreg[6]~37_combout\)) # (!\shreg|s_shiftreg[6]~31_combout\ & ((\shreg|s_shiftreg[6]~37_combout\ & (\shreg|s_shiftreg~36_combout\)) # (!\shreg|s_shiftreg[6]~37_combout\ & 
-- ((\shreg|RotateRight0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~31_combout\,
	datab => \shreg|s_shiftreg[6]~37_combout\,
	datac => \shreg|s_shiftreg~36_combout\,
	datad => \shreg|RotateRight0~3_combout\,
	combout => \shreg|s_shiftreg~38_combout\);

-- Location: LCCOMB_X109_Y16_N10
\shreg|s_shiftreg~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~39_combout\ = (\shreg|s_shiftreg[6]~31_combout\ & ((\shreg|s_shiftreg~38_combout\ & (\shreg|RotateLeft0~7_combout\)) # (!\shreg|s_shiftreg~38_combout\ & ((\shreg|ShiftRight1~7_combout\))))) # (!\shreg|s_shiftreg[6]~31_combout\ & 
-- (((\shreg|s_shiftreg~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~31_combout\,
	datab => \shreg|RotateLeft0~7_combout\,
	datac => \shreg|ShiftRight1~7_combout\,
	datad => \shreg|s_shiftreg~38_combout\,
	combout => \shreg|s_shiftreg~39_combout\);

-- Location: LCCOMB_X109_Y16_N8
\shreg|s_shiftreg[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[5]~1_combout\ = (\shreg|s_shiftreg[6]~40_combout\ & ((\shreg|s_shiftreg~39_combout\))) # (!\shreg|s_shiftreg[6]~40_combout\ & (\shreg|RotateLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|RotateLeft0~9_combout\,
	datab => \shreg|s_shiftreg[6]~40_combout\,
	datad => \shreg|s_shiftreg~39_combout\,
	combout => \shreg|s_shiftreg[5]~1_combout\);

-- Location: IOIBUF_X115_Y11_N8
\sw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: FF_X109_Y16_N9
\shreg|s_shiftreg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg[5]~1_combout\,
	asdata => \sw[5]~input_o\,
	sload => \sw[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(5));

-- Location: LCCOMB_X111_Y16_N18
\shreg|RotateLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~8_combout\ = (\sw[10]~input_o\ & (\shreg|s_shiftreg\(3))) # (!\sw[10]~input_o\ & ((\shreg|s_shiftreg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datac => \shreg|s_shiftreg\(3),
	datad => \shreg|s_shiftreg\(5),
	combout => \shreg|RotateLeft0~8_combout\);

-- Location: LCCOMB_X111_Y16_N0
\shreg|RotateLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~13_combout\ = (\sw[9]~input_o\ & ((\shreg|RotateLeft0~8_combout\))) # (!\sw[9]~input_o\ & (\shreg|RotateLeft0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \shreg|RotateLeft0~12_combout\,
	datad => \shreg|RotateLeft0~8_combout\,
	combout => \shreg|RotateLeft0~13_combout\);

-- Location: LCCOMB_X108_Y16_N12
\shreg|RotateLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~10_combout\ = (\sw[9]~input_o\ & ((\sw[10]~input_o\ & ((\shreg|s_shiftreg\(7)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \shreg|s_shiftreg\(1),
	datac => \sw[9]~input_o\,
	datad => \shreg|s_shiftreg\(7),
	combout => \shreg|RotateLeft0~10_combout\);

-- Location: LCCOMB_X108_Y16_N0
\shreg|RotateLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~11_combout\ = (\shreg|RotateLeft0~10_combout\) # ((\shreg|ShiftLeft0~1_combout\ & !\sw[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|ShiftLeft0~1_combout\,
	datac => \sw[9]~input_o\,
	datad => \shreg|RotateLeft0~10_combout\,
	combout => \shreg|RotateLeft0~11_combout\);

-- Location: LCCOMB_X108_Y16_N22
\shreg|RotateRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~4_combout\ = (\sw[10]~input_o\ & ((\sw[9]~input_o\ & (\shreg|s_shiftreg\(1))) # (!\sw[9]~input_o\ & ((\shreg|s_shiftreg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \shreg|s_shiftreg\(1),
	datac => \sw[9]~input_o\,
	datad => \shreg|s_shiftreg\(0),
	combout => \shreg|RotateRight0~4_combout\);

-- Location: LCCOMB_X108_Y16_N20
\shreg|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~8_combout\ = (!\sw[10]~input_o\ & ((\sw[9]~input_o\ & ((\shreg|s_shiftreg\(7)))) # (!\sw[9]~input_o\ & (\shreg|s_shiftreg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(6),
	datab => \sw[10]~input_o\,
	datac => \sw[9]~input_o\,
	datad => \shreg|s_shiftreg\(7),
	combout => \shreg|ShiftRight1~8_combout\);

-- Location: LCCOMB_X108_Y16_N28
\shreg|RotateRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~5_combout\ = (\shreg|RotateRight0~4_combout\) # (\shreg|ShiftRight1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \shreg|RotateRight0~4_combout\,
	datad => \shreg|ShiftRight1~8_combout\,
	combout => \shreg|RotateRight0~5_combout\);

-- Location: LCCOMB_X108_Y16_N4
\shreg|s_shiftreg~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~43_combout\ = (\shreg|s_shiftreg[6]~37_combout\ & (\shreg|s_shiftreg[6]~31_combout\)) # (!\shreg|s_shiftreg[6]~37_combout\ & ((\shreg|s_shiftreg[6]~31_combout\ & ((\shreg|RotateRight0~7_combout\))) # (!\shreg|s_shiftreg[6]~31_combout\ & 
-- (\shreg|RotateRight0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~37_combout\,
	datab => \shreg|s_shiftreg[6]~31_combout\,
	datac => \shreg|RotateRight0~5_combout\,
	datad => \shreg|RotateRight0~7_combout\,
	combout => \shreg|s_shiftreg~43_combout\);

-- Location: LCCOMB_X108_Y16_N26
\shreg|ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~2_combout\ = (\sw[9]~input_o\ & (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(1)))) # (!\sw[9]~input_o\ & (((\shreg|ShiftLeft0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \shreg|s_shiftreg\(1),
	datac => \sw[9]~input_o\,
	datad => \shreg|ShiftLeft0~1_combout\,
	combout => \shreg|ShiftLeft0~2_combout\);

-- Location: LCCOMB_X108_Y16_N8
\shreg|s_shiftreg~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~41_combout\ = (\shreg|s_shiftreg[6]~33_combout\ & ((\shreg|s_shiftreg[6]~34_combout\ & ((\shreg|ShiftLeft0~2_combout\))) # (!\shreg|s_shiftreg[6]~34_combout\ & (\shreg|ShiftRight1~8_combout\)))) # (!\shreg|s_shiftreg[6]~33_combout\ & 
-- (((\shreg|s_shiftreg[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~33_combout\,
	datab => \shreg|ShiftRight1~8_combout\,
	datac => \shreg|ShiftLeft0~2_combout\,
	datad => \shreg|s_shiftreg[6]~34_combout\,
	combout => \shreg|s_shiftreg~41_combout\);

-- Location: LCCOMB_X108_Y16_N24
\shreg|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight0~3_combout\ = (\sw[10]~input_o\ & (\shreg|s_shiftreg\(7))) # (!\sw[10]~input_o\ & ((\sw[9]~input_o\ & (\shreg|s_shiftreg\(7))) # (!\sw[9]~input_o\ & ((\shreg|s_shiftreg\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \shreg|s_shiftreg\(7),
	datac => \sw[9]~input_o\,
	datad => \shreg|s_shiftreg\(6),
	combout => \shreg|ShiftRight0~3_combout\);

-- Location: LCCOMB_X108_Y16_N18
\shreg|s_shiftreg~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~42_combout\ = (\shreg|s_shiftreg[6]~32_combout\ & ((\shreg|s_shiftreg~41_combout\ & (\shreg|s_shiftreg\(7))) # (!\shreg|s_shiftreg~41_combout\ & ((\shreg|ShiftRight0~3_combout\))))) # (!\shreg|s_shiftreg[6]~32_combout\ & 
-- (((\shreg|s_shiftreg~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~32_combout\,
	datab => \shreg|s_shiftreg\(7),
	datac => \shreg|s_shiftreg~41_combout\,
	datad => \shreg|ShiftRight0~3_combout\,
	combout => \shreg|s_shiftreg~42_combout\);

-- Location: LCCOMB_X108_Y16_N30
\shreg|s_shiftreg~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~44_combout\ = (\shreg|s_shiftreg[6]~37_combout\ & ((\shreg|s_shiftreg~43_combout\ & (\shreg|RotateLeft0~11_combout\)) # (!\shreg|s_shiftreg~43_combout\ & ((\shreg|s_shiftreg~42_combout\))))) # (!\shreg|s_shiftreg[6]~37_combout\ & 
-- (((\shreg|s_shiftreg~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[6]~37_combout\,
	datab => \shreg|RotateLeft0~11_combout\,
	datac => \shreg|s_shiftreg~43_combout\,
	datad => \shreg|s_shiftreg~42_combout\,
	combout => \shreg|s_shiftreg~44_combout\);

-- Location: LCCOMB_X109_Y16_N6
\shreg|s_shiftreg[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[6]~2_combout\ = (\shreg|s_shiftreg[6]~40_combout\ & ((\shreg|s_shiftreg~44_combout\))) # (!\shreg|s_shiftreg[6]~40_combout\ & (\shreg|RotateLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|RotateLeft0~13_combout\,
	datab => \shreg|s_shiftreg[6]~40_combout\,
	datad => \shreg|s_shiftreg~44_combout\,
	combout => \shreg|s_shiftreg[6]~2_combout\);

-- Location: IOIBUF_X115_Y10_N1
\sw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: FF_X109_Y16_N7
\shreg|s_shiftreg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg[6]~2_combout\,
	asdata => \sw[6]~input_o\,
	sload => \sw[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(6));

-- Location: LCCOMB_X111_Y16_N14
\shreg|RotateLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~12_combout\ = (\sw[10]~input_o\ & (\shreg|s_shiftreg\(4))) # (!\sw[10]~input_o\ & ((\shreg|s_shiftreg\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shreg|s_shiftreg\(4),
	datac => \sw[10]~input_o\,
	datad => \shreg|s_shiftreg\(6),
	combout => \shreg|RotateLeft0~12_combout\);

-- Location: LCCOMB_X114_Y16_N2
\shreg|RotateLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~4_combout\ = (\sw[10]~input_o\ & ((\shreg|s_shiftreg\(5)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(7),
	datac => \sw[10]~input_o\,
	datad => \shreg|s_shiftreg\(5),
	combout => \shreg|RotateLeft0~4_combout\);

-- Location: LCCOMB_X114_Y16_N12
\shreg|RotateLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~14_combout\ = (\sw[9]~input_o\ & (\shreg|RotateLeft0~12_combout\)) # (!\sw[9]~input_o\ & ((\shreg|RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \shreg|RotateLeft0~12_combout\,
	datad => \shreg|RotateLeft0~4_combout\,
	combout => \shreg|RotateLeft0~14_combout\);

-- Location: LCCOMB_X113_Y16_N0
\shreg|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~6_combout\ = (\sw[11]~input_o\ & ((\sw[9]~input_o\ & ((\shreg|ShiftLeft0~1_combout\))) # (!\sw[9]~input_o\ & (\shreg|RotateLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \shreg|RotateLeft0~0_combout\,
	datad => \shreg|ShiftLeft0~1_combout\,
	combout => \shreg|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X113_Y16_N22
\shreg|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~7_combout\ = (\shreg|ShiftLeft0~6_combout\) # ((!\sw[11]~input_o\ & \shreg|RotateLeft0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datac => \shreg|RotateLeft0~14_combout\,
	datad => \shreg|ShiftLeft0~6_combout\,
	combout => \shreg|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X114_Y16_N30
\shreg|s_shiftreg~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~47_combout\ = (\key[2]~input_o\) # ((!\sw[9]~input_o\ & (!\sw[11]~input_o\ & !\sw[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[11]~input_o\,
	datac => \sw[10]~input_o\,
	datad => \key[2]~input_o\,
	combout => \shreg|s_shiftreg~47_combout\);

-- Location: LCCOMB_X114_Y16_N14
\shreg|RotateRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~9_combout\ = (!\sw[9]~input_o\ & ((\sw[10]~input_o\ & ((\shreg|s_shiftreg\(1)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(7),
	datab => \sw[9]~input_o\,
	datac => \sw[10]~input_o\,
	datad => \shreg|s_shiftreg\(1),
	combout => \shreg|RotateRight0~9_combout\);

-- Location: LCCOMB_X113_Y16_N24
\shreg|RotateRight0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~1_combout\ = (\sw[10]~input_o\ & ((\shreg|s_shiftreg\(2)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \shreg|s_shiftreg\(0),
	datac => \sw[10]~input_o\,
	datad => \shreg|s_shiftreg\(2),
	combout => \shreg|RotateRight0~1_combout\);

-- Location: LCCOMB_X114_Y16_N8
\shreg|RotateRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~10_combout\ = (\shreg|RotateRight0~9_combout\) # ((\sw[9]~input_o\ & \shreg|RotateRight0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \shreg|RotateRight0~9_combout\,
	datad => \shreg|RotateRight0~1_combout\,
	combout => \shreg|RotateRight0~10_combout\);

-- Location: LCCOMB_X111_Y16_N30
\shreg|RotateRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~0_combout\ = (\sw[10]~input_o\ & ((\shreg|s_shiftreg\(6)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datac => \shreg|s_shiftreg\(4),
	datad => \shreg|s_shiftreg\(6),
	combout => \shreg|RotateRight0~0_combout\);

-- Location: LCCOMB_X111_Y16_N10
\shreg|RotateRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~6_combout\ = (\sw[10]~input_o\ & ((\shreg|s_shiftreg\(5)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datac => \shreg|s_shiftreg\(3),
	datad => \shreg|s_shiftreg\(5),
	combout => \shreg|RotateRight0~6_combout\);

-- Location: LCCOMB_X114_Y16_N10
\shreg|s_shiftreg~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~45_combout\ = (\sw[11]~input_o\ & ((\sw[9]~input_o\ & (\shreg|RotateRight0~0_combout\)) # (!\sw[9]~input_o\ & ((\shreg|RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[11]~input_o\,
	datac => \shreg|RotateRight0~0_combout\,
	datad => \shreg|RotateRight0~6_combout\,
	combout => \shreg|s_shiftreg~45_combout\);

-- Location: LCCOMB_X114_Y16_N0
\shreg|s_shiftreg~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~46_combout\ = (\key[0]~input_o\ & ((\shreg|s_shiftreg~45_combout\) # ((!\sw[11]~input_o\ & \shreg|RotateRight0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \sw[11]~input_o\,
	datac => \shreg|RotateRight0~10_combout\,
	datad => \shreg|s_shiftreg~45_combout\,
	combout => \shreg|s_shiftreg~46_combout\);

-- Location: LCCOMB_X114_Y16_N28
\shreg|s_shiftreg~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~48_combout\ = (\shreg|s_shiftreg~46_combout\) # ((\shreg|s_shiftreg\(7) & (!\key[0]~input_o\ & \shreg|s_shiftreg~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(7),
	datab => \key[0]~input_o\,
	datac => \shreg|s_shiftreg~47_combout\,
	datad => \shreg|s_shiftreg~46_combout\,
	combout => \shreg|s_shiftreg~48_combout\);

-- Location: LCCOMB_X113_Y16_N14
\shreg|s_shiftreg[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[7]~3_combout\ = (\key[1]~input_o\ & (\shreg|ShiftLeft0~7_combout\)) # (!\key[1]~input_o\ & ((\shreg|s_shiftreg~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|ShiftLeft0~7_combout\,
	datab => \key[1]~input_o\,
	datad => \shreg|s_shiftreg~48_combout\,
	combout => \shreg|s_shiftreg[7]~3_combout\);

-- Location: IOIBUF_X115_Y15_N1
\sw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: FF_X113_Y16_N15
\shreg|s_shiftreg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg[7]~3_combout\,
	asdata => \sw[7]~input_o\,
	sload => \sw[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(7));

-- Location: LCCOMB_X112_Y16_N8
\shreg|ShiftRight1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~0_combout\ = (\sw[9]~input_o\ & ((\sw[10]~input_o\ & (\shreg|s_shiftreg\(7))) # (!\sw[10]~input_o\ & ((\shreg|s_shiftreg\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \shreg|s_shiftreg\(7),
	datad => \shreg|s_shiftreg\(5),
	combout => \shreg|ShiftRight1~0_combout\);

-- Location: LCCOMB_X112_Y16_N26
\shreg|ShiftRight1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~1_combout\ = (\shreg|ShiftRight1~0_combout\) # ((!\sw[9]~input_o\ & \shreg|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[9]~input_o\,
	datac => \shreg|ShiftRight1~0_combout\,
	datad => \shreg|RotateRight0~0_combout\,
	combout => \shreg|ShiftRight1~1_combout\);

-- Location: LCCOMB_X112_Y16_N16
\shreg|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~3_combout\ = (\sw[9]~input_o\ & (\shreg|ShiftRight1~2_combout\)) # (!\sw[9]~input_o\ & ((\shreg|RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[9]~input_o\,
	datac => \shreg|ShiftRight1~2_combout\,
	datad => \shreg|RotateRight0~1_combout\,
	combout => \shreg|ShiftRight1~3_combout\);

-- Location: LCCOMB_X112_Y16_N10
\shreg|RotateRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~11_combout\ = (\sw[11]~input_o\ & ((\shreg|ShiftRight1~3_combout\))) # (!\sw[11]~input_o\ & (\shreg|ShiftRight1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[11]~input_o\,
	datac => \shreg|ShiftRight1~1_combout\,
	datad => \shreg|ShiftRight1~3_combout\,
	combout => \shreg|RotateRight0~11_combout\);

-- Location: LCCOMB_X113_Y16_N6
\shreg|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~4_combout\ = (!\sw[11]~input_o\ & ((\sw[9]~input_o\ & (\shreg|RotateLeft0~0_combout\)) # (!\sw[9]~input_o\ & ((\shreg|RotateLeft0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \shreg|RotateLeft0~0_combout\,
	datad => \shreg|RotateLeft0~1_combout\,
	combout => \shreg|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X114_Y16_N4
\shreg|RotateLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~3_combout\ = (!\sw[9]~input_o\ & ((\sw[10]~input_o\ & ((\shreg|s_shiftreg\(6)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \shreg|s_shiftreg\(0),
	datad => \shreg|s_shiftreg\(6),
	combout => \shreg|RotateLeft0~3_combout\);

-- Location: LCCOMB_X114_Y16_N16
\shreg|RotateLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~5_combout\ = (\shreg|RotateLeft0~3_combout\) # ((\sw[9]~input_o\ & \shreg|RotateLeft0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \shreg|RotateLeft0~3_combout\,
	datad => \shreg|RotateLeft0~4_combout\,
	combout => \shreg|RotateLeft0~5_combout\);

-- Location: LCCOMB_X113_Y16_N10
\shreg|RotateLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~15_combout\ = (\shreg|ShiftLeft0~4_combout\) # ((\sw[11]~input_o\ & \shreg|RotateLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datac => \shreg|ShiftLeft0~4_combout\,
	datad => \shreg|RotateLeft0~5_combout\,
	combout => \shreg|RotateLeft0~15_combout\);

-- Location: LCCOMB_X112_Y16_N4
\shreg|s_shiftreg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~27_combout\ = (\sw[11]~input_o\ & (\shreg|s_shiftreg\(7) & ((\key[2]~input_o\)))) # (!\sw[11]~input_o\ & (((\shreg|ShiftRight1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(7),
	datab => \sw[11]~input_o\,
	datac => \shreg|ShiftRight1~1_combout\,
	datad => \key[2]~input_o\,
	combout => \shreg|s_shiftreg~27_combout\);

-- Location: LCCOMB_X114_Y16_N18
\shreg|ShiftRight0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight0~0_combout\ = (!\sw[10]~input_o\ & !\sw[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[10]~input_o\,
	datad => \sw[9]~input_o\,
	combout => \shreg|ShiftRight0~0_combout\);

-- Location: LCCOMB_X113_Y16_N4
\shreg|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~5_combout\ = (\shreg|ShiftLeft0~4_combout\) # ((\sw[11]~input_o\ & (\shreg|s_shiftreg\(0) & \shreg|ShiftRight0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datab => \shreg|s_shiftreg\(0),
	datac => \shreg|ShiftRight0~0_combout\,
	datad => \shreg|ShiftLeft0~4_combout\,
	combout => \shreg|ShiftLeft0~5_combout\);

-- Location: LCCOMB_X112_Y16_N6
\shreg|s_shiftreg~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~28_combout\ = (\key[0]~input_o\ & (\key[1]~input_o\)) # (!\key[0]~input_o\ & ((\key[1]~input_o\ & ((\shreg|ShiftLeft0~5_combout\))) # (!\key[1]~input_o\ & (\shreg|s_shiftreg~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \key[1]~input_o\,
	datac => \shreg|s_shiftreg~27_combout\,
	datad => \shreg|ShiftLeft0~5_combout\,
	combout => \shreg|s_shiftreg~28_combout\);

-- Location: LCCOMB_X112_Y16_N24
\shreg|s_shiftreg~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~29_combout\ = (\key[0]~input_o\ & ((\shreg|s_shiftreg~28_combout\ & ((\shreg|RotateLeft0~15_combout\))) # (!\shreg|s_shiftreg~28_combout\ & (\shreg|RotateRight0~11_combout\)))) # (!\key[0]~input_o\ & (((\shreg|s_shiftreg~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|RotateRight0~11_combout\,
	datab => \key[0]~input_o\,
	datac => \shreg|RotateLeft0~15_combout\,
	datad => \shreg|s_shiftreg~28_combout\,
	combout => \shreg|s_shiftreg~29_combout\);

-- Location: LCCOMB_X111_Y16_N8
\shreg|s_shiftreg~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~30_combout\ = (\sw[8]~input_o\ & (\sw[4]~input_o\)) # (!\sw[8]~input_o\ & ((\shreg|s_shiftreg~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \shreg|s_shiftreg~29_combout\,
	combout => \shreg|s_shiftreg~30_combout\);

-- Location: FF_X111_Y16_N9
\shreg|s_shiftreg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(4));

-- Location: LCCOMB_X111_Y16_N4
\shreg|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~6_combout\ = (\sw[10]~input_o\ & (\shreg|s_shiftreg\(4))) # (!\sw[10]~input_o\ & ((\shreg|s_shiftreg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datac => \shreg|s_shiftreg\(4),
	datad => \shreg|s_shiftreg\(2),
	combout => \shreg|ShiftRight1~6_combout\);

-- Location: LCCOMB_X111_Y16_N20
\shreg|RotateRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~7_combout\ = (\sw[9]~input_o\ & ((\shreg|RotateRight0~6_combout\))) # (!\sw[9]~input_o\ & (\shreg|ShiftRight1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \shreg|ShiftRight1~6_combout\,
	datad => \shreg|RotateRight0~6_combout\,
	combout => \shreg|RotateRight0~7_combout\);

-- Location: LCCOMB_X108_Y16_N2
\shreg|s_shiftreg~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~18_combout\ = (\shreg|s_shiftreg[1]~12_combout\ & (\shreg|s_shiftreg[1]~6_combout\)) # (!\shreg|s_shiftreg[1]~12_combout\ & ((\shreg|s_shiftreg[1]~6_combout\ & ((\shreg|ShiftRight0~3_combout\))) # (!\shreg|s_shiftreg[1]~6_combout\ & 
-- (\shreg|ShiftRight1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[1]~12_combout\,
	datab => \shreg|s_shiftreg[1]~6_combout\,
	datac => \shreg|ShiftRight1~8_combout\,
	datad => \shreg|ShiftRight0~3_combout\,
	combout => \shreg|s_shiftreg~18_combout\);

-- Location: LCCOMB_X108_Y16_N6
\shreg|s_shiftreg~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~16_combout\ = (\shreg|s_shiftreg[1]~8_combout\ & ((\shreg|s_shiftreg[1]~9_combout\ & ((\shreg|RotateRight0~5_combout\))) # (!\shreg|s_shiftreg[1]~9_combout\ & (\shreg|ShiftLeft0~2_combout\)))) # (!\shreg|s_shiftreg[1]~8_combout\ & 
-- (\shreg|s_shiftreg[1]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[1]~8_combout\,
	datab => \shreg|s_shiftreg[1]~9_combout\,
	datac => \shreg|ShiftLeft0~2_combout\,
	datad => \shreg|RotateRight0~5_combout\,
	combout => \shreg|s_shiftreg~16_combout\);

-- Location: LCCOMB_X110_Y16_N28
\shreg|s_shiftreg~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~17_combout\ = (\shreg|s_shiftreg[1]~7_combout\ & ((\shreg|s_shiftreg~16_combout\ & (\shreg|RotateLeft0~13_combout\)) # (!\shreg|s_shiftreg~16_combout\ & ((\shreg|RotateLeft0~11_combout\))))) # (!\shreg|s_shiftreg[1]~7_combout\ & 
-- (((\shreg|s_shiftreg~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg[1]~7_combout\,
	datab => \shreg|RotateLeft0~13_combout\,
	datac => \shreg|RotateLeft0~11_combout\,
	datad => \shreg|s_shiftreg~16_combout\,
	combout => \shreg|s_shiftreg~17_combout\);

-- Location: LCCOMB_X110_Y16_N18
\shreg|s_shiftreg~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~19_combout\ = (\shreg|s_shiftreg[1]~12_combout\ & ((\shreg|s_shiftreg~18_combout\ & (\shreg|RotateRight0~7_combout\)) # (!\shreg|s_shiftreg~18_combout\ & ((\shreg|s_shiftreg~17_combout\))))) # (!\shreg|s_shiftreg[1]~12_combout\ & 
-- (((\shreg|s_shiftreg~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|RotateRight0~7_combout\,
	datab => \shreg|s_shiftreg[1]~12_combout\,
	datac => \shreg|s_shiftreg~18_combout\,
	datad => \shreg|s_shiftreg~17_combout\,
	combout => \shreg|s_shiftreg~19_combout\);

-- Location: LCCOMB_X110_Y16_N24
\shreg|s_shiftreg~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~20_combout\ = (\sw[8]~input_o\ & (\sw[2]~input_o\)) # (!\sw[8]~input_o\ & ((\shreg|s_shiftreg~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[2]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \shreg|s_shiftreg~19_combout\,
	combout => \shreg|s_shiftreg~20_combout\);

-- Location: FF_X110_Y16_N25
\shreg|s_shiftreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(2));

-- Location: LCCOMB_X108_Y16_N10
\shreg|ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~1_combout\ = (\sw[10]~input_o\ & ((\shreg|s_shiftreg\(0)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datac => \shreg|s_shiftreg\(2),
	datad => \shreg|s_shiftreg\(0),
	combout => \shreg|ShiftLeft0~1_combout\);

-- Location: LCCOMB_X113_Y16_N8
\shreg|ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftLeft0~3_combout\ = (!\sw[11]~input_o\ & ((\sw[9]~input_o\ & ((\shreg|ShiftLeft0~1_combout\))) # (!\sw[9]~input_o\ & (\shreg|RotateLeft0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[11]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \shreg|RotateLeft0~0_combout\,
	datad => \shreg|ShiftLeft0~1_combout\,
	combout => \shreg|ShiftLeft0~3_combout\);

-- Location: LCCOMB_X112_Y16_N28
\shreg|s_shiftreg~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~21_combout\ = (\sw[11]~input_o\ & ((\shreg|s_shiftreg\(7)) # (\key[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(7),
	datab => \key[0]~input_o\,
	datac => \sw[11]~input_o\,
	combout => \shreg|s_shiftreg~21_combout\);

-- Location: LCCOMB_X111_Y16_N2
\shreg|RotateRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateRight0~8_combout\ = (!\sw[11]~input_o\ & ((\sw[9]~input_o\ & (\shreg|RotateRight0~0_combout\)) # (!\sw[9]~input_o\ & ((\shreg|RotateRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datab => \sw[11]~input_o\,
	datac => \shreg|RotateRight0~0_combout\,
	datad => \shreg|RotateRight0~6_combout\,
	combout => \shreg|RotateRight0~8_combout\);

-- Location: LCCOMB_X114_Y16_N22
\shreg|s_shiftreg~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~22_combout\ = (\key[2]~input_o\) # ((!\sw[9]~input_o\ & !\sw[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[9]~input_o\,
	datac => \sw[10]~input_o\,
	datad => \key[2]~input_o\,
	combout => \shreg|s_shiftreg~22_combout\);

-- Location: LCCOMB_X114_Y16_N24
\shreg|s_shiftreg~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~23_combout\ = (\key[1]~input_o\ & (((\key[0]~input_o\)))) # (!\key[1]~input_o\ & ((\key[0]~input_o\ & ((\shreg|RotateRight0~10_combout\))) # (!\key[0]~input_o\ & (\shreg|s_shiftreg~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg~22_combout\,
	datab => \key[1]~input_o\,
	datac => \shreg|RotateRight0~10_combout\,
	datad => \key[0]~input_o\,
	combout => \shreg|s_shiftreg~23_combout\);

-- Location: LCCOMB_X113_Y16_N2
\shreg|s_shiftreg~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~24_combout\ = (\key[1]~input_o\ & (\shreg|s_shiftreg~21_combout\ & ((\shreg|s_shiftreg~23_combout\)))) # (!\key[1]~input_o\ & ((\shreg|RotateRight0~8_combout\) # ((\shreg|s_shiftreg~21_combout\ & \shreg|s_shiftreg~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \shreg|s_shiftreg~21_combout\,
	datac => \shreg|RotateRight0~8_combout\,
	datad => \shreg|s_shiftreg~23_combout\,
	combout => \shreg|s_shiftreg~24_combout\);

-- Location: LCCOMB_X113_Y16_N28
\shreg|s_shiftreg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~25_combout\ = (\key[1]~input_o\ & ((\shreg|ShiftLeft0~3_combout\) # ((\shreg|RotateLeft0~14_combout\ & \shreg|s_shiftreg~24_combout\)))) # (!\key[1]~input_o\ & (((\shreg|s_shiftreg~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \shreg|ShiftLeft0~3_combout\,
	datac => \shreg|RotateLeft0~14_combout\,
	datad => \shreg|s_shiftreg~24_combout\,
	combout => \shreg|s_shiftreg~25_combout\);

-- Location: LCCOMB_X113_Y16_N12
\shreg|s_shiftreg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~26_combout\ = (\sw[8]~input_o\ & (\sw[3]~input_o\)) # (!\sw[8]~input_o\ & ((\shreg|s_shiftreg~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[3]~input_o\,
	datac => \sw[8]~input_o\,
	datad => \shreg|s_shiftreg~25_combout\,
	combout => \shreg|s_shiftreg~26_combout\);

-- Location: FF_X113_Y16_N13
\shreg|s_shiftreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(3));

-- Location: LCCOMB_X113_Y16_N26
\shreg|RotateLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~0_combout\ = (\sw[10]~input_o\ & ((\shreg|s_shiftreg\(1)))) # (!\sw[10]~input_o\ & (\shreg|s_shiftreg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|s_shiftreg\(3),
	datab => \sw[10]~input_o\,
	datad => \shreg|s_shiftreg\(1),
	combout => \shreg|RotateLeft0~0_combout\);

-- Location: LCCOMB_X113_Y16_N20
\shreg|RotateLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|RotateLeft0~2_combout\ = (\sw[9]~input_o\ & (\shreg|RotateLeft0~0_combout\)) # (!\sw[9]~input_o\ & ((\shreg|RotateLeft0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|RotateLeft0~0_combout\,
	datac => \sw[9]~input_o\,
	datad => \shreg|RotateLeft0~1_combout\,
	combout => \shreg|RotateLeft0~2_combout\);

-- Location: LCCOMB_X114_Y16_N20
\shreg|s_shiftreg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~4_combout\ = (\key[0]~input_o\ & (((\shreg|RotateLeft0~5_combout\)))) # (!\key[0]~input_o\ & (\shreg|ShiftRight0~0_combout\ & (\shreg|s_shiftreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \shreg|ShiftRight0~0_combout\,
	datab => \key[0]~input_o\,
	datac => \shreg|s_shiftreg\(0),
	datad => \shreg|RotateLeft0~5_combout\,
	combout => \shreg|s_shiftreg~4_combout\);

-- Location: LCCOMB_X113_Y16_N18
\shreg|s_shiftreg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg~5_combout\ = (\sw[11]~input_o\ & (\key[0]~input_o\ & (\shreg|RotateLeft0~2_combout\))) # (!\sw[11]~input_o\ & (((\shreg|s_shiftreg~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[0]~input_o\,
	datab => \shreg|RotateLeft0~2_combout\,
	datac => \shreg|s_shiftreg~4_combout\,
	datad => \sw[11]~input_o\,
	combout => \shreg|s_shiftreg~5_combout\);

-- Location: LCCOMB_X112_Y16_N18
\shreg|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|ShiftRight1~4_combout\ = (\sw[11]~input_o\ & (\shreg|ShiftRight1~1_combout\)) # (!\sw[11]~input_o\ & ((\shreg|ShiftRight1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[11]~input_o\,
	datac => \shreg|ShiftRight1~1_combout\,
	datad => \shreg|ShiftRight1~3_combout\,
	combout => \shreg|ShiftRight1~4_combout\);

-- Location: LCCOMB_X113_Y16_N16
\shreg|s_shiftreg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \shreg|s_shiftreg[0]~0_combout\ = (\key[1]~input_o\ & (\shreg|s_shiftreg~5_combout\)) # (!\key[1]~input_o\ & ((\shreg|ShiftRight1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[1]~input_o\,
	datab => \shreg|s_shiftreg~5_combout\,
	datad => \shreg|ShiftRight1~4_combout\,
	combout => \shreg|s_shiftreg[0]~0_combout\);

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

-- Location: FF_X113_Y16_N17
\shreg|s_shiftreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqd|ALT_INV_clkout~clkctrl_outclk\,
	d => \shreg|s_shiftreg[0]~0_combout\,
	asdata => \sw[0]~input_o\,
	sload => \sw[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \shreg|s_shiftreg\(0));

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;

ww_ledr(4) <= \ledr[4]~output_o\;

ww_ledr(5) <= \ledr[5]~output_o\;

ww_ledr(6) <= \ledr[6]~output_o\;

ww_ledr(7) <= \ledr[7]~output_o\;
END structure;


