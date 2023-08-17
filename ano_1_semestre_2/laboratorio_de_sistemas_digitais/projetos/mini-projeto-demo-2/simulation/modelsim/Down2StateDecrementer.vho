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

-- DATE "05/19/2022 00:19:08"

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

ENTITY 	Down2StateDecrementer IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END Down2StateDecrementer;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Down2StateDecrementer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Hz2Lane|blink~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Hz1Lane|s_counter[0]~26_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \s_Key0~0_combout\ : std_logic;
SIGNAL \s_Key0~q\ : std_logic;
SIGNAL \DebounceKEY0|Add0~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|count~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|state~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|state~q\ : std_logic;
SIGNAL \DebounceKEY0|Add0~1\ : std_logic;
SIGNAL \DebounceKEY0|Add0~2_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~3\ : std_logic;
SIGNAL \DebounceKEY0|Add0~4_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~5\ : std_logic;
SIGNAL \DebounceKEY0|Add0~6_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~7\ : std_logic;
SIGNAL \DebounceKEY0|Add0~8_combout\ : std_logic;
SIGNAL \DebounceKEY0|count~5_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~9_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~9\ : std_logic;
SIGNAL \DebounceKEY0|Add0~10_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~11\ : std_logic;
SIGNAL \DebounceKEY0|Add0~12_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~13\ : std_logic;
SIGNAL \DebounceKEY0|Add0~14_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~15\ : std_logic;
SIGNAL \DebounceKEY0|Add0~16_combout\ : std_logic;
SIGNAL \DebounceKEY0|count~4_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~8_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~17\ : std_logic;
SIGNAL \DebounceKEY0|Add0~18_combout\ : std_logic;
SIGNAL \DebounceKEY0|count~3_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~19\ : std_logic;
SIGNAL \DebounceKEY0|Add0~20_combout\ : std_logic;
SIGNAL \DebounceKEY0|count~2_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~21\ : std_logic;
SIGNAL \DebounceKEY0|Add0~22_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~23\ : std_logic;
SIGNAL \DebounceKEY0|Add0~24_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~6_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~25\ : std_logic;
SIGNAL \DebounceKEY0|Add0~26_combout\ : std_logic;
SIGNAL \DebounceKEY0|count~1_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~27\ : std_logic;
SIGNAL \DebounceKEY0|Add0~28_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~29\ : std_logic;
SIGNAL \DebounceKEY0|Add0~30_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~31\ : std_logic;
SIGNAL \DebounceKEY0|Add0~32_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~5_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~7_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~33\ : std_logic;
SIGNAL \DebounceKEY0|Add0~34_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~35\ : std_logic;
SIGNAL \DebounceKEY0|Add0~36_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~37\ : std_logic;
SIGNAL \DebounceKEY0|Add0~38_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~39\ : std_logic;
SIGNAL \DebounceKEY0|Add0~40_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~41\ : std_logic;
SIGNAL \DebounceKEY0|Add0~42_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~43\ : std_logic;
SIGNAL \DebounceKEY0|Add0~44_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~45\ : std_logic;
SIGNAL \DebounceKEY0|Add0~46_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~47\ : std_logic;
SIGNAL \DebounceKEY0|Add0~48_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~49\ : std_logic;
SIGNAL \DebounceKEY0|Add0~50_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~51\ : std_logic;
SIGNAL \DebounceKEY0|Add0~52_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~53\ : std_logic;
SIGNAL \DebounceKEY0|Add0~54_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~55\ : std_logic;
SIGNAL \DebounceKEY0|Add0~56_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~57\ : std_logic;
SIGNAL \DebounceKEY0|Add0~58_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~59\ : std_logic;
SIGNAL \DebounceKEY0|Add0~60_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~61\ : std_logic;
SIGNAL \DebounceKEY0|Add0~62_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~1_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~2_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~3_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~4_combout\ : std_logic;
SIGNAL \DebounceKEY0|Equal0~10_combout\ : std_logic;
SIGNAL \DebounceKEY0|cleanOut~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|cleanOut~q\ : std_logic;
SIGNAL \Hz1Lane|s_counter[23]~73\ : std_logic;
SIGNAL \Hz1Lane|s_counter[24]~74_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[24]~75\ : std_logic;
SIGNAL \Hz1Lane|s_counter[25]~76_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~0_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~1_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~2_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~1_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~3_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~4_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~5_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~6_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan0~7_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~0_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[0]~27\ : std_logic;
SIGNAL \Hz1Lane|s_counter[1]~28_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[1]~29\ : std_logic;
SIGNAL \Hz1Lane|s_counter[2]~30_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[2]~31\ : std_logic;
SIGNAL \Hz1Lane|s_counter[3]~32_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[3]~33\ : std_logic;
SIGNAL \Hz1Lane|s_counter[4]~34_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[4]~35\ : std_logic;
SIGNAL \Hz1Lane|s_counter[5]~36_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[5]~37\ : std_logic;
SIGNAL \Hz1Lane|s_counter[6]~38_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[6]~39\ : std_logic;
SIGNAL \Hz1Lane|s_counter[7]~40_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[7]~41\ : std_logic;
SIGNAL \Hz1Lane|s_counter[8]~42_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[8]~43\ : std_logic;
SIGNAL \Hz1Lane|s_counter[9]~44_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[9]~45\ : std_logic;
SIGNAL \Hz1Lane|s_counter[10]~46_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[10]~47\ : std_logic;
SIGNAL \Hz1Lane|s_counter[11]~48_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[11]~49\ : std_logic;
SIGNAL \Hz1Lane|s_counter[12]~50_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[12]~51\ : std_logic;
SIGNAL \Hz1Lane|s_counter[13]~52_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[13]~53\ : std_logic;
SIGNAL \Hz1Lane|s_counter[14]~54_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[14]~55\ : std_logic;
SIGNAL \Hz1Lane|s_counter[15]~56_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[15]~57\ : std_logic;
SIGNAL \Hz1Lane|s_counter[16]~58_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[16]~59\ : std_logic;
SIGNAL \Hz1Lane|s_counter[17]~60_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[17]~61\ : std_logic;
SIGNAL \Hz1Lane|s_counter[18]~62_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[18]~63\ : std_logic;
SIGNAL \Hz1Lane|s_counter[19]~64_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[19]~65\ : std_logic;
SIGNAL \Hz1Lane|s_counter[20]~66_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[20]~67\ : std_logic;
SIGNAL \Hz1Lane|s_counter[21]~68_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[21]~69\ : std_logic;
SIGNAL \Hz1Lane|s_counter[22]~70_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[22]~71\ : std_logic;
SIGNAL \Hz1Lane|s_counter[23]~72_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~2_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~0_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~3_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~4_combout\ : std_logic;
SIGNAL \Hz1Lane|blink~q\ : std_logic;
SIGNAL \Hz2Lane|s_counter[0]~25_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[22]~70\ : std_logic;
SIGNAL \Hz2Lane|s_counter[23]~71_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[23]~72\ : std_logic;
SIGNAL \Hz2Lane|s_counter[24]~73_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan0~0_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan0~1_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan1~1_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan0~2_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan0~3_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan0~4_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan0~5_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan0~6_combout\ : std_logic;
SIGNAL \Hz2Lane|count_proc~0_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[0]~26\ : std_logic;
SIGNAL \Hz2Lane|s_counter[1]~27_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[1]~28\ : std_logic;
SIGNAL \Hz2Lane|s_counter[2]~29_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[2]~30\ : std_logic;
SIGNAL \Hz2Lane|s_counter[3]~31_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[3]~32\ : std_logic;
SIGNAL \Hz2Lane|s_counter[4]~33_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[4]~34\ : std_logic;
SIGNAL \Hz2Lane|s_counter[5]~35_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[5]~36\ : std_logic;
SIGNAL \Hz2Lane|s_counter[6]~37_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[6]~38\ : std_logic;
SIGNAL \Hz2Lane|s_counter[7]~39_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[7]~40\ : std_logic;
SIGNAL \Hz2Lane|s_counter[8]~41_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[8]~42\ : std_logic;
SIGNAL \Hz2Lane|s_counter[9]~43_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[9]~44\ : std_logic;
SIGNAL \Hz2Lane|s_counter[10]~45_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[10]~46\ : std_logic;
SIGNAL \Hz2Lane|s_counter[11]~47_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[11]~48\ : std_logic;
SIGNAL \Hz2Lane|s_counter[12]~49_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[12]~50\ : std_logic;
SIGNAL \Hz2Lane|s_counter[13]~51_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[13]~52\ : std_logic;
SIGNAL \Hz2Lane|s_counter[14]~53_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[14]~54\ : std_logic;
SIGNAL \Hz2Lane|s_counter[15]~55_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[15]~56\ : std_logic;
SIGNAL \Hz2Lane|s_counter[16]~57_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[16]~58\ : std_logic;
SIGNAL \Hz2Lane|s_counter[17]~59_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[17]~60\ : std_logic;
SIGNAL \Hz2Lane|s_counter[18]~61_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[18]~62\ : std_logic;
SIGNAL \Hz2Lane|s_counter[19]~63_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[19]~64\ : std_logic;
SIGNAL \Hz2Lane|s_counter[20]~65_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[20]~66\ : std_logic;
SIGNAL \Hz2Lane|s_counter[21]~67_combout\ : std_logic;
SIGNAL \Hz2Lane|s_counter[21]~68\ : std_logic;
SIGNAL \Hz2Lane|s_counter[22]~69_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan1~2_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan1~0_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan1~3_combout\ : std_logic;
SIGNAL \Hz2Lane|LessThan1~4_combout\ : std_logic;
SIGNAL \Hz2Lane|blink~q\ : std_logic;
SIGNAL \Hz2Lane|blink~clkctrl_outclk\ : std_logic;
SIGNAL \Decrementer|s_Count[0]~2_combout\ : std_logic;
SIGNAL \Display|binOutput~20_combout\ : std_logic;
SIGNAL \Decrementer|Add0~1_combout\ : std_logic;
SIGNAL \Decrementer|Add0~0_combout\ : std_logic;
SIGNAL \Display|binOutput~6_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \s_Key1~0_combout\ : std_logic;
SIGNAL \s_Key1~q\ : std_logic;
SIGNAL \DebounceKEY1|Add0~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|count~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|state~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|state~q\ : std_logic;
SIGNAL \DebounceKEY1|Add0~1\ : std_logic;
SIGNAL \DebounceKEY1|Add0~2_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~3\ : std_logic;
SIGNAL \DebounceKEY1|Add0~4_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~5\ : std_logic;
SIGNAL \DebounceKEY1|Add0~6_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~7\ : std_logic;
SIGNAL \DebounceKEY1|Add0~8_combout\ : std_logic;
SIGNAL \DebounceKEY1|count~5_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~9\ : std_logic;
SIGNAL \DebounceKEY1|Add0~10_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~11\ : std_logic;
SIGNAL \DebounceKEY1|Add0~12_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~13\ : std_logic;
SIGNAL \DebounceKEY1|Add0~14_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~15\ : std_logic;
SIGNAL \DebounceKEY1|Add0~16_combout\ : std_logic;
SIGNAL \DebounceKEY1|count~4_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~17\ : std_logic;
SIGNAL \DebounceKEY1|Add0~18_combout\ : std_logic;
SIGNAL \DebounceKEY1|count~3_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~19\ : std_logic;
SIGNAL \DebounceKEY1|Add0~20_combout\ : std_logic;
SIGNAL \DebounceKEY1|count~2_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~21\ : std_logic;
SIGNAL \DebounceKEY1|Add0~22_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~23\ : std_logic;
SIGNAL \DebounceKEY1|Add0~24_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~6_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~5_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~7_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~8_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~9_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~25\ : std_logic;
SIGNAL \DebounceKEY1|Add0~26_combout\ : std_logic;
SIGNAL \DebounceKEY1|count~1_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~27\ : std_logic;
SIGNAL \DebounceKEY1|Add0~28_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~29\ : std_logic;
SIGNAL \DebounceKEY1|Add0~30_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~31\ : std_logic;
SIGNAL \DebounceKEY1|Add0~32_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~33\ : std_logic;
SIGNAL \DebounceKEY1|Add0~34_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~35\ : std_logic;
SIGNAL \DebounceKEY1|Add0~36_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~37\ : std_logic;
SIGNAL \DebounceKEY1|Add0~38_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~39\ : std_logic;
SIGNAL \DebounceKEY1|Add0~40_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~41\ : std_logic;
SIGNAL \DebounceKEY1|Add0~42_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~43\ : std_logic;
SIGNAL \DebounceKEY1|Add0~44_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~45\ : std_logic;
SIGNAL \DebounceKEY1|Add0~46_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~47\ : std_logic;
SIGNAL \DebounceKEY1|Add0~48_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~49\ : std_logic;
SIGNAL \DebounceKEY1|Add0~50_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~51\ : std_logic;
SIGNAL \DebounceKEY1|Add0~52_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~53\ : std_logic;
SIGNAL \DebounceKEY1|Add0~54_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~55\ : std_logic;
SIGNAL \DebounceKEY1|Add0~56_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~1_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~3_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~2_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~57\ : std_logic;
SIGNAL \DebounceKEY1|Add0~58_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~59\ : std_logic;
SIGNAL \DebounceKEY1|Add0~60_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~61\ : std_logic;
SIGNAL \DebounceKEY1|Add0~62_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|Equal0~4_combout\ : std_logic;
SIGNAL \DebounceKEY1|cleanOut~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|cleanOut~q\ : std_logic;
SIGNAL \s_NormalBlink~0_combout\ : std_logic;
SIGNAL \s_NormalBlink~q\ : std_logic;
SIGNAL \Display|binOutput~21_combout\ : std_logic;
SIGNAL \s_DisplayEnable~0_combout\ : std_logic;
SIGNAL \Display|binOutput~7_combout\ : std_logic;
SIGNAL \Display|binOutput~8_combout\ : std_logic;
SIGNAL \Display|binOutput~9_combout\ : std_logic;
SIGNAL \Display|binOutput~10_combout\ : std_logic;
SIGNAL \Display|binOutput~22_combout\ : std_logic;
SIGNAL \Display|Equal13~0_combout\ : std_logic;
SIGNAL \Display|binOutput[3]~11_combout\ : std_logic;
SIGNAL \Display|binOutput[3]~12_combout\ : std_logic;
SIGNAL \Display|binOutput[6]~13_combout\ : std_logic;
SIGNAL \Display|binOutput[3]~14_combout\ : std_logic;
SIGNAL \Display|binOutput~15_combout\ : std_logic;
SIGNAL \Display|binOutput~23_combout\ : std_logic;
SIGNAL \Display|binOutput~16_combout\ : std_logic;
SIGNAL \Display|binOutput~17_combout\ : std_logic;
SIGNAL \Display|binOutput[6]~18_combout\ : std_logic;
SIGNAL \Display|binOutput[6]~19_combout\ : std_logic;
SIGNAL \DebounceKEY1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DebounceKEY0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Decrementer|s_Count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Hz2Lane|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \Hz1Lane|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \ALT_INV_s_NormalBlink~q\ : std_logic;
SIGNAL \DebounceKEY1|ALT_INV_state~q\ : std_logic;
SIGNAL \DebounceKEY0|ALT_INV_state~q\ : std_logic;
SIGNAL \DebounceKEY1|ALT_INV_cleanOut~q\ : std_logic;
SIGNAL \DebounceKEY0|ALT_INV_cleanOut~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\Hz2Lane|blink~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Hz2Lane|blink~q\);
\ALT_INV_s_NormalBlink~q\ <= NOT \s_NormalBlink~q\;
\DebounceKEY1|ALT_INV_state~q\ <= NOT \DebounceKEY1|state~q\;
\DebounceKEY0|ALT_INV_state~q\ <= NOT \DebounceKEY0|state~q\;
\DebounceKEY1|ALT_INV_cleanOut~q\ <= NOT \DebounceKEY1|cleanOut~q\;
\DebounceKEY0|ALT_INV_cleanOut~q\ <= NOT \DebounceKEY0|cleanOut~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display|binOutput~21_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display|binOutput~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display|binOutput~22_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display|binOutput[3]~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display|binOutput~23_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display|binOutput~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display|binOutput[6]~19_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_s_NormalBlink~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X107_Y50_N6
\Hz1Lane|s_counter[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[0]~26_combout\ = \Hz1Lane|s_counter\(0) $ (VCC)
-- \Hz1Lane|s_counter[0]~27\ = CARRY(\Hz1Lane|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(0),
	datad => VCC,
	combout => \Hz1Lane|s_counter[0]~26_combout\,
	cout => \Hz1Lane|s_counter[0]~27\);

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

-- Location: LCCOMB_X110_Y51_N22
\s_Key0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_Key0~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \s_Key0~0_combout\);

-- Location: FF_X110_Y51_N23
s_Key0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s_Key0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_Key0~q\);

-- Location: LCCOMB_X111_Y51_N0
\DebounceKEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~0_combout\ = \DebounceKEY0|count\(0) $ (VCC)
-- \DebounceKEY0|Add0~1\ = CARRY(\DebounceKEY0|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(0),
	datad => VCC,
	combout => \DebounceKEY0|Add0~0_combout\,
	cout => \DebounceKEY0|Add0~1\);

-- Location: LCCOMB_X110_Y51_N16
\DebounceKEY0|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|count~0_combout\ = (\DebounceKEY0|Add0~0_combout\ & !\DebounceKEY0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~0_combout\,
	datad => \DebounceKEY0|Equal0~10_combout\,
	combout => \DebounceKEY0|count~0_combout\);

-- Location: LCCOMB_X110_Y51_N30
\DebounceKEY0|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|state~0_combout\ = (\DebounceKEY0|state~q\ & !\DebounceKEY0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|state~q\,
	datad => \DebounceKEY0|Equal0~10_combout\,
	combout => \DebounceKEY0|state~0_combout\);

-- Location: FF_X110_Y51_N31
\DebounceKEY0|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|state~0_combout\,
	asdata => \s_Key0~q\,
	sload => \DebounceKEY0|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|state~q\);

-- Location: FF_X110_Y51_N17
\DebounceKEY0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|count~0_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(0));

-- Location: LCCOMB_X111_Y51_N2
\DebounceKEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~2_combout\ = (\DebounceKEY0|count\(1) & (!\DebounceKEY0|Add0~1\)) # (!\DebounceKEY0|count\(1) & ((\DebounceKEY0|Add0~1\) # (GND)))
-- \DebounceKEY0|Add0~3\ = CARRY((!\DebounceKEY0|Add0~1\) # (!\DebounceKEY0|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(1),
	datad => VCC,
	cin => \DebounceKEY0|Add0~1\,
	combout => \DebounceKEY0|Add0~2_combout\,
	cout => \DebounceKEY0|Add0~3\);

-- Location: FF_X111_Y51_N3
\DebounceKEY0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~2_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(1));

-- Location: LCCOMB_X111_Y51_N4
\DebounceKEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~4_combout\ = (\DebounceKEY0|count\(2) & (\DebounceKEY0|Add0~3\ $ (GND))) # (!\DebounceKEY0|count\(2) & (!\DebounceKEY0|Add0~3\ & VCC))
-- \DebounceKEY0|Add0~5\ = CARRY((\DebounceKEY0|count\(2) & !\DebounceKEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(2),
	datad => VCC,
	cin => \DebounceKEY0|Add0~3\,
	combout => \DebounceKEY0|Add0~4_combout\,
	cout => \DebounceKEY0|Add0~5\);

-- Location: FF_X111_Y51_N5
\DebounceKEY0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~4_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(2));

-- Location: LCCOMB_X111_Y51_N6
\DebounceKEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~6_combout\ = (\DebounceKEY0|count\(3) & (!\DebounceKEY0|Add0~5\)) # (!\DebounceKEY0|count\(3) & ((\DebounceKEY0|Add0~5\) # (GND)))
-- \DebounceKEY0|Add0~7\ = CARRY((!\DebounceKEY0|Add0~5\) # (!\DebounceKEY0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(3),
	datad => VCC,
	cin => \DebounceKEY0|Add0~5\,
	combout => \DebounceKEY0|Add0~6_combout\,
	cout => \DebounceKEY0|Add0~7\);

-- Location: FF_X111_Y51_N7
\DebounceKEY0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~6_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(3));

-- Location: LCCOMB_X111_Y51_N8
\DebounceKEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~8_combout\ = (\DebounceKEY0|count\(4) & (\DebounceKEY0|Add0~7\ $ (GND))) # (!\DebounceKEY0|count\(4) & (!\DebounceKEY0|Add0~7\ & VCC))
-- \DebounceKEY0|Add0~9\ = CARRY((\DebounceKEY0|count\(4) & !\DebounceKEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(4),
	datad => VCC,
	cin => \DebounceKEY0|Add0~7\,
	combout => \DebounceKEY0|Add0~8_combout\,
	cout => \DebounceKEY0|Add0~9\);

-- Location: LCCOMB_X110_Y51_N14
\DebounceKEY0|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|count~5_combout\ = (\DebounceKEY0|Add0~8_combout\ & !\DebounceKEY0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~8_combout\,
	datad => \DebounceKEY0|Equal0~10_combout\,
	combout => \DebounceKEY0|count~5_combout\);

-- Location: FF_X110_Y51_N15
\DebounceKEY0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|count~5_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(4));

-- Location: LCCOMB_X110_Y51_N6
\DebounceKEY0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~9_combout\ = (!\DebounceKEY0|count\(2) & (\DebounceKEY0|count\(4) & (!\DebounceKEY0|count\(1) & !\DebounceKEY0|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(2),
	datab => \DebounceKEY0|count\(4),
	datac => \DebounceKEY0|count\(1),
	datad => \DebounceKEY0|count\(3),
	combout => \DebounceKEY0|Equal0~9_combout\);

-- Location: LCCOMB_X111_Y51_N10
\DebounceKEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~10_combout\ = (\DebounceKEY0|count\(5) & (!\DebounceKEY0|Add0~9\)) # (!\DebounceKEY0|count\(5) & ((\DebounceKEY0|Add0~9\) # (GND)))
-- \DebounceKEY0|Add0~11\ = CARRY((!\DebounceKEY0|Add0~9\) # (!\DebounceKEY0|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(5),
	datad => VCC,
	cin => \DebounceKEY0|Add0~9\,
	combout => \DebounceKEY0|Add0~10_combout\,
	cout => \DebounceKEY0|Add0~11\);

-- Location: FF_X111_Y51_N11
\DebounceKEY0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~10_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(5));

-- Location: LCCOMB_X111_Y51_N12
\DebounceKEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~12_combout\ = (\DebounceKEY0|count\(6) & (\DebounceKEY0|Add0~11\ $ (GND))) # (!\DebounceKEY0|count\(6) & (!\DebounceKEY0|Add0~11\ & VCC))
-- \DebounceKEY0|Add0~13\ = CARRY((\DebounceKEY0|count\(6) & !\DebounceKEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(6),
	datad => VCC,
	cin => \DebounceKEY0|Add0~11\,
	combout => \DebounceKEY0|Add0~12_combout\,
	cout => \DebounceKEY0|Add0~13\);

-- Location: FF_X111_Y51_N13
\DebounceKEY0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~12_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(6));

-- Location: LCCOMB_X111_Y51_N14
\DebounceKEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~14_combout\ = (\DebounceKEY0|count\(7) & (!\DebounceKEY0|Add0~13\)) # (!\DebounceKEY0|count\(7) & ((\DebounceKEY0|Add0~13\) # (GND)))
-- \DebounceKEY0|Add0~15\ = CARRY((!\DebounceKEY0|Add0~13\) # (!\DebounceKEY0|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(7),
	datad => VCC,
	cin => \DebounceKEY0|Add0~13\,
	combout => \DebounceKEY0|Add0~14_combout\,
	cout => \DebounceKEY0|Add0~15\);

-- Location: FF_X111_Y51_N15
\DebounceKEY0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~14_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(7));

-- Location: LCCOMB_X111_Y51_N16
\DebounceKEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~16_combout\ = (\DebounceKEY0|count\(8) & (\DebounceKEY0|Add0~15\ $ (GND))) # (!\DebounceKEY0|count\(8) & (!\DebounceKEY0|Add0~15\ & VCC))
-- \DebounceKEY0|Add0~17\ = CARRY((\DebounceKEY0|count\(8) & !\DebounceKEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(8),
	datad => VCC,
	cin => \DebounceKEY0|Add0~15\,
	combout => \DebounceKEY0|Add0~16_combout\,
	cout => \DebounceKEY0|Add0~17\);

-- Location: LCCOMB_X110_Y51_N10
\DebounceKEY0|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|count~4_combout\ = (!\DebounceKEY0|Equal0~10_combout\ & \DebounceKEY0|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|Equal0~10_combout\,
	datad => \DebounceKEY0|Add0~16_combout\,
	combout => \DebounceKEY0|count~4_combout\);

-- Location: FF_X110_Y51_N11
\DebounceKEY0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|count~4_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(8));

-- Location: LCCOMB_X110_Y51_N0
\DebounceKEY0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~8_combout\ = (\DebounceKEY0|count\(8) & (!\DebounceKEY0|count\(6) & (!\DebounceKEY0|count\(5) & !\DebounceKEY0|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(8),
	datab => \DebounceKEY0|count\(6),
	datac => \DebounceKEY0|count\(5),
	datad => \DebounceKEY0|count\(7),
	combout => \DebounceKEY0|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y51_N18
\DebounceKEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~18_combout\ = (\DebounceKEY0|count\(9) & (!\DebounceKEY0|Add0~17\)) # (!\DebounceKEY0|count\(9) & ((\DebounceKEY0|Add0~17\) # (GND)))
-- \DebounceKEY0|Add0~19\ = CARRY((!\DebounceKEY0|Add0~17\) # (!\DebounceKEY0|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(9),
	datad => VCC,
	cin => \DebounceKEY0|Add0~17\,
	combout => \DebounceKEY0|Add0~18_combout\,
	cout => \DebounceKEY0|Add0~19\);

-- Location: LCCOMB_X110_Y51_N28
\DebounceKEY0|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|count~3_combout\ = (!\DebounceKEY0|Equal0~10_combout\ & \DebounceKEY0|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|Equal0~10_combout\,
	datad => \DebounceKEY0|Add0~18_combout\,
	combout => \DebounceKEY0|count~3_combout\);

-- Location: FF_X110_Y51_N29
\DebounceKEY0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|count~3_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(9));

-- Location: LCCOMB_X111_Y51_N20
\DebounceKEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~20_combout\ = (\DebounceKEY0|count\(10) & (\DebounceKEY0|Add0~19\ $ (GND))) # (!\DebounceKEY0|count\(10) & (!\DebounceKEY0|Add0~19\ & VCC))
-- \DebounceKEY0|Add0~21\ = CARRY((\DebounceKEY0|count\(10) & !\DebounceKEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(10),
	datad => VCC,
	cin => \DebounceKEY0|Add0~19\,
	combout => \DebounceKEY0|Add0~20_combout\,
	cout => \DebounceKEY0|Add0~21\);

-- Location: LCCOMB_X110_Y51_N26
\DebounceKEY0|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|count~2_combout\ = (\DebounceKEY0|Add0~20_combout\ & !\DebounceKEY0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~20_combout\,
	datad => \DebounceKEY0|Equal0~10_combout\,
	combout => \DebounceKEY0|count~2_combout\);

-- Location: FF_X110_Y51_N27
\DebounceKEY0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|count~2_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(10));

-- Location: LCCOMB_X111_Y51_N22
\DebounceKEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~22_combout\ = (\DebounceKEY0|count\(11) & (!\DebounceKEY0|Add0~21\)) # (!\DebounceKEY0|count\(11) & ((\DebounceKEY0|Add0~21\) # (GND)))
-- \DebounceKEY0|Add0~23\ = CARRY((!\DebounceKEY0|Add0~21\) # (!\DebounceKEY0|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(11),
	datad => VCC,
	cin => \DebounceKEY0|Add0~21\,
	combout => \DebounceKEY0|Add0~22_combout\,
	cout => \DebounceKEY0|Add0~23\);

-- Location: FF_X111_Y51_N23
\DebounceKEY0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~22_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(11));

-- Location: LCCOMB_X111_Y51_N24
\DebounceKEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~24_combout\ = (\DebounceKEY0|count\(12) & (\DebounceKEY0|Add0~23\ $ (GND))) # (!\DebounceKEY0|count\(12) & (!\DebounceKEY0|Add0~23\ & VCC))
-- \DebounceKEY0|Add0~25\ = CARRY((\DebounceKEY0|count\(12) & !\DebounceKEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(12),
	datad => VCC,
	cin => \DebounceKEY0|Add0~23\,
	combout => \DebounceKEY0|Add0~24_combout\,
	cout => \DebounceKEY0|Add0~25\);

-- Location: FF_X111_Y51_N25
\DebounceKEY0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~24_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(12));

-- Location: LCCOMB_X110_Y51_N8
\DebounceKEY0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~6_combout\ = (\DebounceKEY0|count\(10) & (!\DebounceKEY0|count\(11) & (!\DebounceKEY0|count\(12) & \DebounceKEY0|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(10),
	datab => \DebounceKEY0|count\(11),
	datac => \DebounceKEY0|count\(12),
	datad => \DebounceKEY0|count\(9),
	combout => \DebounceKEY0|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y51_N26
\DebounceKEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~26_combout\ = (\DebounceKEY0|count\(13) & (!\DebounceKEY0|Add0~25\)) # (!\DebounceKEY0|count\(13) & ((\DebounceKEY0|Add0~25\) # (GND)))
-- \DebounceKEY0|Add0~27\ = CARRY((!\DebounceKEY0|Add0~25\) # (!\DebounceKEY0|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(13),
	datad => VCC,
	cin => \DebounceKEY0|Add0~25\,
	combout => \DebounceKEY0|Add0~26_combout\,
	cout => \DebounceKEY0|Add0~27\);

-- Location: LCCOMB_X110_Y51_N18
\DebounceKEY0|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|count~1_combout\ = (!\DebounceKEY0|Equal0~10_combout\ & \DebounceKEY0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|Equal0~10_combout\,
	datad => \DebounceKEY0|Add0~26_combout\,
	combout => \DebounceKEY0|count~1_combout\);

-- Location: FF_X110_Y51_N19
\DebounceKEY0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|count~1_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(13));

-- Location: LCCOMB_X111_Y51_N28
\DebounceKEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~28_combout\ = (\DebounceKEY0|count\(14) & (\DebounceKEY0|Add0~27\ $ (GND))) # (!\DebounceKEY0|count\(14) & (!\DebounceKEY0|Add0~27\ & VCC))
-- \DebounceKEY0|Add0~29\ = CARRY((\DebounceKEY0|count\(14) & !\DebounceKEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(14),
	datad => VCC,
	cin => \DebounceKEY0|Add0~27\,
	combout => \DebounceKEY0|Add0~28_combout\,
	cout => \DebounceKEY0|Add0~29\);

-- Location: FF_X111_Y51_N29
\DebounceKEY0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~28_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(14));

-- Location: LCCOMB_X111_Y51_N30
\DebounceKEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~30_combout\ = (\DebounceKEY0|count\(15) & (!\DebounceKEY0|Add0~29\)) # (!\DebounceKEY0|count\(15) & ((\DebounceKEY0|Add0~29\) # (GND)))
-- \DebounceKEY0|Add0~31\ = CARRY((!\DebounceKEY0|Add0~29\) # (!\DebounceKEY0|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(15),
	datad => VCC,
	cin => \DebounceKEY0|Add0~29\,
	combout => \DebounceKEY0|Add0~30_combout\,
	cout => \DebounceKEY0|Add0~31\);

-- Location: FF_X111_Y51_N31
\DebounceKEY0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~30_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(15));

-- Location: LCCOMB_X111_Y50_N0
\DebounceKEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~32_combout\ = (\DebounceKEY0|count\(16) & (\DebounceKEY0|Add0~31\ $ (GND))) # (!\DebounceKEY0|count\(16) & (!\DebounceKEY0|Add0~31\ & VCC))
-- \DebounceKEY0|Add0~33\ = CARRY((\DebounceKEY0|count\(16) & !\DebounceKEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(16),
	datad => VCC,
	cin => \DebounceKEY0|Add0~31\,
	combout => \DebounceKEY0|Add0~32_combout\,
	cout => \DebounceKEY0|Add0~33\);

-- Location: FF_X111_Y50_N1
\DebounceKEY0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~32_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(16));

-- Location: LCCOMB_X110_Y51_N20
\DebounceKEY0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~5_combout\ = (!\DebounceKEY0|count\(15) & (\DebounceKEY0|count\(13) & (!\DebounceKEY0|count\(14) & !\DebounceKEY0|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(15),
	datab => \DebounceKEY0|count\(13),
	datac => \DebounceKEY0|count\(14),
	datad => \DebounceKEY0|count\(16),
	combout => \DebounceKEY0|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y51_N4
\DebounceKEY0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~7_combout\ = (\DebounceKEY0|Equal0~6_combout\ & \DebounceKEY0|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Equal0~6_combout\,
	datad => \DebounceKEY0|Equal0~5_combout\,
	combout => \DebounceKEY0|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y50_N2
\DebounceKEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~34_combout\ = (\DebounceKEY0|count\(17) & (!\DebounceKEY0|Add0~33\)) # (!\DebounceKEY0|count\(17) & ((\DebounceKEY0|Add0~33\) # (GND)))
-- \DebounceKEY0|Add0~35\ = CARRY((!\DebounceKEY0|Add0~33\) # (!\DebounceKEY0|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(17),
	datad => VCC,
	cin => \DebounceKEY0|Add0~33\,
	combout => \DebounceKEY0|Add0~34_combout\,
	cout => \DebounceKEY0|Add0~35\);

-- Location: FF_X111_Y50_N3
\DebounceKEY0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~34_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(17));

-- Location: LCCOMB_X111_Y50_N4
\DebounceKEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~36_combout\ = (\DebounceKEY0|count\(18) & (\DebounceKEY0|Add0~35\ $ (GND))) # (!\DebounceKEY0|count\(18) & (!\DebounceKEY0|Add0~35\ & VCC))
-- \DebounceKEY0|Add0~37\ = CARRY((\DebounceKEY0|count\(18) & !\DebounceKEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(18),
	datad => VCC,
	cin => \DebounceKEY0|Add0~35\,
	combout => \DebounceKEY0|Add0~36_combout\,
	cout => \DebounceKEY0|Add0~37\);

-- Location: FF_X111_Y50_N5
\DebounceKEY0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~36_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(18));

-- Location: LCCOMB_X111_Y50_N6
\DebounceKEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~38_combout\ = (\DebounceKEY0|count\(19) & (!\DebounceKEY0|Add0~37\)) # (!\DebounceKEY0|count\(19) & ((\DebounceKEY0|Add0~37\) # (GND)))
-- \DebounceKEY0|Add0~39\ = CARRY((!\DebounceKEY0|Add0~37\) # (!\DebounceKEY0|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(19),
	datad => VCC,
	cin => \DebounceKEY0|Add0~37\,
	combout => \DebounceKEY0|Add0~38_combout\,
	cout => \DebounceKEY0|Add0~39\);

-- Location: FF_X111_Y50_N7
\DebounceKEY0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~38_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(19));

-- Location: LCCOMB_X111_Y50_N8
\DebounceKEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~40_combout\ = (\DebounceKEY0|count\(20) & (\DebounceKEY0|Add0~39\ $ (GND))) # (!\DebounceKEY0|count\(20) & (!\DebounceKEY0|Add0~39\ & VCC))
-- \DebounceKEY0|Add0~41\ = CARRY((\DebounceKEY0|count\(20) & !\DebounceKEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(20),
	datad => VCC,
	cin => \DebounceKEY0|Add0~39\,
	combout => \DebounceKEY0|Add0~40_combout\,
	cout => \DebounceKEY0|Add0~41\);

-- Location: FF_X111_Y50_N9
\DebounceKEY0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~40_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(20));

-- Location: LCCOMB_X111_Y50_N10
\DebounceKEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~42_combout\ = (\DebounceKEY0|count\(21) & (!\DebounceKEY0|Add0~41\)) # (!\DebounceKEY0|count\(21) & ((\DebounceKEY0|Add0~41\) # (GND)))
-- \DebounceKEY0|Add0~43\ = CARRY((!\DebounceKEY0|Add0~41\) # (!\DebounceKEY0|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(21),
	datad => VCC,
	cin => \DebounceKEY0|Add0~41\,
	combout => \DebounceKEY0|Add0~42_combout\,
	cout => \DebounceKEY0|Add0~43\);

-- Location: FF_X111_Y50_N11
\DebounceKEY0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~42_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(21));

-- Location: LCCOMB_X111_Y50_N12
\DebounceKEY0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~44_combout\ = (\DebounceKEY0|count\(22) & (\DebounceKEY0|Add0~43\ $ (GND))) # (!\DebounceKEY0|count\(22) & (!\DebounceKEY0|Add0~43\ & VCC))
-- \DebounceKEY0|Add0~45\ = CARRY((\DebounceKEY0|count\(22) & !\DebounceKEY0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(22),
	datad => VCC,
	cin => \DebounceKEY0|Add0~43\,
	combout => \DebounceKEY0|Add0~44_combout\,
	cout => \DebounceKEY0|Add0~45\);

-- Location: FF_X111_Y50_N13
\DebounceKEY0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~44_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(22));

-- Location: LCCOMB_X111_Y50_N14
\DebounceKEY0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~46_combout\ = (\DebounceKEY0|count\(23) & (!\DebounceKEY0|Add0~45\)) # (!\DebounceKEY0|count\(23) & ((\DebounceKEY0|Add0~45\) # (GND)))
-- \DebounceKEY0|Add0~47\ = CARRY((!\DebounceKEY0|Add0~45\) # (!\DebounceKEY0|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(23),
	datad => VCC,
	cin => \DebounceKEY0|Add0~45\,
	combout => \DebounceKEY0|Add0~46_combout\,
	cout => \DebounceKEY0|Add0~47\);

-- Location: FF_X111_Y50_N15
\DebounceKEY0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~46_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(23));

-- Location: LCCOMB_X111_Y50_N16
\DebounceKEY0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~48_combout\ = (\DebounceKEY0|count\(24) & (\DebounceKEY0|Add0~47\ $ (GND))) # (!\DebounceKEY0|count\(24) & (!\DebounceKEY0|Add0~47\ & VCC))
-- \DebounceKEY0|Add0~49\ = CARRY((\DebounceKEY0|count\(24) & !\DebounceKEY0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(24),
	datad => VCC,
	cin => \DebounceKEY0|Add0~47\,
	combout => \DebounceKEY0|Add0~48_combout\,
	cout => \DebounceKEY0|Add0~49\);

-- Location: FF_X111_Y50_N17
\DebounceKEY0|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~48_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(24));

-- Location: LCCOMB_X111_Y50_N18
\DebounceKEY0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~50_combout\ = (\DebounceKEY0|count\(25) & (!\DebounceKEY0|Add0~49\)) # (!\DebounceKEY0|count\(25) & ((\DebounceKEY0|Add0~49\) # (GND)))
-- \DebounceKEY0|Add0~51\ = CARRY((!\DebounceKEY0|Add0~49\) # (!\DebounceKEY0|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(25),
	datad => VCC,
	cin => \DebounceKEY0|Add0~49\,
	combout => \DebounceKEY0|Add0~50_combout\,
	cout => \DebounceKEY0|Add0~51\);

-- Location: FF_X111_Y50_N19
\DebounceKEY0|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~50_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(25));

-- Location: LCCOMB_X111_Y50_N20
\DebounceKEY0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~52_combout\ = (\DebounceKEY0|count\(26) & (\DebounceKEY0|Add0~51\ $ (GND))) # (!\DebounceKEY0|count\(26) & (!\DebounceKEY0|Add0~51\ & VCC))
-- \DebounceKEY0|Add0~53\ = CARRY((\DebounceKEY0|count\(26) & !\DebounceKEY0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(26),
	datad => VCC,
	cin => \DebounceKEY0|Add0~51\,
	combout => \DebounceKEY0|Add0~52_combout\,
	cout => \DebounceKEY0|Add0~53\);

-- Location: FF_X111_Y50_N21
\DebounceKEY0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~52_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(26));

-- Location: LCCOMB_X111_Y50_N22
\DebounceKEY0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~54_combout\ = (\DebounceKEY0|count\(27) & (!\DebounceKEY0|Add0~53\)) # (!\DebounceKEY0|count\(27) & ((\DebounceKEY0|Add0~53\) # (GND)))
-- \DebounceKEY0|Add0~55\ = CARRY((!\DebounceKEY0|Add0~53\) # (!\DebounceKEY0|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(27),
	datad => VCC,
	cin => \DebounceKEY0|Add0~53\,
	combout => \DebounceKEY0|Add0~54_combout\,
	cout => \DebounceKEY0|Add0~55\);

-- Location: FF_X111_Y50_N23
\DebounceKEY0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~54_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(27));

-- Location: LCCOMB_X111_Y50_N24
\DebounceKEY0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~56_combout\ = (\DebounceKEY0|count\(28) & (\DebounceKEY0|Add0~55\ $ (GND))) # (!\DebounceKEY0|count\(28) & (!\DebounceKEY0|Add0~55\ & VCC))
-- \DebounceKEY0|Add0~57\ = CARRY((\DebounceKEY0|count\(28) & !\DebounceKEY0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(28),
	datad => VCC,
	cin => \DebounceKEY0|Add0~55\,
	combout => \DebounceKEY0|Add0~56_combout\,
	cout => \DebounceKEY0|Add0~57\);

-- Location: FF_X111_Y50_N25
\DebounceKEY0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~56_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(28));

-- Location: LCCOMB_X111_Y50_N26
\DebounceKEY0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~58_combout\ = (\DebounceKEY0|count\(29) & (!\DebounceKEY0|Add0~57\)) # (!\DebounceKEY0|count\(29) & ((\DebounceKEY0|Add0~57\) # (GND)))
-- \DebounceKEY0|Add0~59\ = CARRY((!\DebounceKEY0|Add0~57\) # (!\DebounceKEY0|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(29),
	datad => VCC,
	cin => \DebounceKEY0|Add0~57\,
	combout => \DebounceKEY0|Add0~58_combout\,
	cout => \DebounceKEY0|Add0~59\);

-- Location: FF_X111_Y50_N27
\DebounceKEY0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~58_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(29));

-- Location: LCCOMB_X111_Y50_N28
\DebounceKEY0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~60_combout\ = (\DebounceKEY0|count\(30) & (\DebounceKEY0|Add0~59\ $ (GND))) # (!\DebounceKEY0|count\(30) & (!\DebounceKEY0|Add0~59\ & VCC))
-- \DebounceKEY0|Add0~61\ = CARRY((\DebounceKEY0|count\(30) & !\DebounceKEY0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|count\(30),
	datad => VCC,
	cin => \DebounceKEY0|Add0~59\,
	combout => \DebounceKEY0|Add0~60_combout\,
	cout => \DebounceKEY0|Add0~61\);

-- Location: FF_X111_Y50_N29
\DebounceKEY0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~60_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(30));

-- Location: LCCOMB_X111_Y50_N30
\DebounceKEY0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~62_combout\ = \DebounceKEY0|count\(31) $ (\DebounceKEY0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(31),
	cin => \DebounceKEY0|Add0~61\,
	combout => \DebounceKEY0|Add0~62_combout\);

-- Location: FF_X111_Y50_N31
\DebounceKEY0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|Add0~62_combout\,
	ena => \DebounceKEY0|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|count\(31));

-- Location: LCCOMB_X110_Y51_N12
\DebounceKEY0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~0_combout\ = (!\DebounceKEY0|count\(0) & (!\DebounceKEY0|count\(31) & (!\DebounceKEY0|count\(30) & !\DebounceKEY0|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(0),
	datab => \DebounceKEY0|count\(31),
	datac => \DebounceKEY0|count\(30),
	datad => \DebounceKEY0|count\(29),
	combout => \DebounceKEY0|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y50_N0
\DebounceKEY0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~1_combout\ = (!\DebounceKEY0|count\(26) & (!\DebounceKEY0|count\(28) & (!\DebounceKEY0|count\(27) & !\DebounceKEY0|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(26),
	datab => \DebounceKEY0|count\(28),
	datac => \DebounceKEY0|count\(27),
	datad => \DebounceKEY0|count\(25),
	combout => \DebounceKEY0|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y50_N10
\DebounceKEY0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~2_combout\ = (!\DebounceKEY0|count\(24) & (!\DebounceKEY0|count\(22) & (!\DebounceKEY0|count\(23) & !\DebounceKEY0|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(24),
	datab => \DebounceKEY0|count\(22),
	datac => \DebounceKEY0|count\(23),
	datad => \DebounceKEY0|count\(21),
	combout => \DebounceKEY0|Equal0~2_combout\);

-- Location: LCCOMB_X110_Y50_N8
\DebounceKEY0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~3_combout\ = (!\DebounceKEY0|count\(18) & (!\DebounceKEY0|count\(20) & (!\DebounceKEY0|count\(19) & !\DebounceKEY0|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|count\(18),
	datab => \DebounceKEY0|count\(20),
	datac => \DebounceKEY0|count\(19),
	datad => \DebounceKEY0|count\(17),
	combout => \DebounceKEY0|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y51_N24
\DebounceKEY0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~4_combout\ = (\DebounceKEY0|Equal0~0_combout\ & (\DebounceKEY0|Equal0~1_combout\ & (\DebounceKEY0|Equal0~2_combout\ & \DebounceKEY0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|Equal0~0_combout\,
	datab => \DebounceKEY0|Equal0~1_combout\,
	datac => \DebounceKEY0|Equal0~2_combout\,
	datad => \DebounceKEY0|Equal0~3_combout\,
	combout => \DebounceKEY0|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y51_N2
\DebounceKEY0|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Equal0~10_combout\ = (\DebounceKEY0|Equal0~9_combout\ & (\DebounceKEY0|Equal0~8_combout\ & (\DebounceKEY0|Equal0~7_combout\ & \DebounceKEY0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|Equal0~9_combout\,
	datab => \DebounceKEY0|Equal0~8_combout\,
	datac => \DebounceKEY0|Equal0~7_combout\,
	datad => \DebounceKEY0|Equal0~4_combout\,
	combout => \DebounceKEY0|Equal0~10_combout\);

-- Location: LCCOMB_X109_Y51_N8
\DebounceKEY0|cleanOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|cleanOut~0_combout\ = (\DebounceKEY0|cleanOut~q\) # ((\s_Key0~q\ & \DebounceKEY0|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \s_Key0~q\,
	datac => \DebounceKEY0|cleanOut~q\,
	datad => \DebounceKEY0|Equal0~10_combout\,
	combout => \DebounceKEY0|cleanOut~0_combout\);

-- Location: FF_X109_Y51_N1
\DebounceKEY0|cleanOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DebounceKEY0|cleanOut~0_combout\,
	sclr => \DebounceKEY0|ALT_INV_state~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|cleanOut~q\);

-- Location: LCCOMB_X107_Y49_N20
\Hz1Lane|s_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[23]~72_combout\ = (\Hz1Lane|s_counter\(23) & (!\Hz1Lane|s_counter[22]~71\)) # (!\Hz1Lane|s_counter\(23) & ((\Hz1Lane|s_counter[22]~71\) # (GND)))
-- \Hz1Lane|s_counter[23]~73\ = CARRY((!\Hz1Lane|s_counter[22]~71\) # (!\Hz1Lane|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(23),
	datad => VCC,
	cin => \Hz1Lane|s_counter[22]~71\,
	combout => \Hz1Lane|s_counter[23]~72_combout\,
	cout => \Hz1Lane|s_counter[23]~73\);

-- Location: LCCOMB_X107_Y49_N22
\Hz1Lane|s_counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[24]~74_combout\ = (\Hz1Lane|s_counter\(24) & (\Hz1Lane|s_counter[23]~73\ $ (GND))) # (!\Hz1Lane|s_counter\(24) & (!\Hz1Lane|s_counter[23]~73\ & VCC))
-- \Hz1Lane|s_counter[24]~75\ = CARRY((\Hz1Lane|s_counter\(24) & !\Hz1Lane|s_counter[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(24),
	datad => VCC,
	cin => \Hz1Lane|s_counter[23]~73\,
	combout => \Hz1Lane|s_counter[24]~74_combout\,
	cout => \Hz1Lane|s_counter[24]~75\);

-- Location: FF_X107_Y49_N23
\Hz1Lane|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[24]~74_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(24));

-- Location: LCCOMB_X107_Y49_N24
\Hz1Lane|s_counter[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[25]~76_combout\ = \Hz1Lane|s_counter[24]~75\ $ (\Hz1Lane|s_counter\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Hz1Lane|s_counter\(25),
	cin => \Hz1Lane|s_counter[24]~75\,
	combout => \Hz1Lane|s_counter[25]~76_combout\);

-- Location: FF_X107_Y49_N25
\Hz1Lane|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[25]~76_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(25));

-- Location: LCCOMB_X107_Y49_N26
\Hz1Lane|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~0_combout\ = (\Hz1Lane|s_counter\(19) & (\Hz1Lane|s_counter\(22) & (\Hz1Lane|s_counter\(20) & \Hz1Lane|s_counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(19),
	datab => \Hz1Lane|s_counter\(22),
	datac => \Hz1Lane|s_counter\(20),
	datad => \Hz1Lane|s_counter\(21),
	combout => \Hz1Lane|LessThan0~0_combout\);

-- Location: LCCOMB_X108_Y50_N8
\Hz1Lane|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~1_combout\ = (\Hz1Lane|s_counter\(13) & (\Hz1Lane|s_counter\(12) & \Hz1Lane|s_counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(13),
	datab => \Hz1Lane|s_counter\(12),
	datad => \Hz1Lane|s_counter\(14),
	combout => \Hz1Lane|LessThan0~1_combout\);

-- Location: LCCOMB_X107_Y50_N2
\Hz1Lane|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~2_combout\ = (\Hz1Lane|s_counter\(2) & (\Hz1Lane|s_counter\(6) & (\Hz1Lane|s_counter\(1) & \Hz1Lane|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(2),
	datab => \Hz1Lane|s_counter\(6),
	datac => \Hz1Lane|s_counter\(1),
	datad => \Hz1Lane|s_counter\(0),
	combout => \Hz1Lane|LessThan0~2_combout\);

-- Location: LCCOMB_X107_Y50_N0
\Hz1Lane|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~1_combout\ = (!\Hz1Lane|s_counter\(10) & (!\Hz1Lane|s_counter\(7) & (!\Hz1Lane|s_counter\(8) & !\Hz1Lane|s_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(10),
	datab => \Hz1Lane|s_counter\(7),
	datac => \Hz1Lane|s_counter\(8),
	datad => \Hz1Lane|s_counter\(9),
	combout => \Hz1Lane|LessThan1~1_combout\);

-- Location: LCCOMB_X107_Y50_N4
\Hz1Lane|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~3_combout\ = (\Hz1Lane|s_counter\(3) & (\Hz1Lane|s_counter\(4) & \Hz1Lane|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(3),
	datac => \Hz1Lane|s_counter\(4),
	datad => \Hz1Lane|s_counter\(5),
	combout => \Hz1Lane|LessThan0~3_combout\);

-- Location: LCCOMB_X108_Y50_N6
\Hz1Lane|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~4_combout\ = (\Hz1Lane|s_counter\(11)) # (((\Hz1Lane|LessThan0~2_combout\ & \Hz1Lane|LessThan0~3_combout\)) # (!\Hz1Lane|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|LessThan0~2_combout\,
	datab => \Hz1Lane|s_counter\(11),
	datac => \Hz1Lane|LessThan1~1_combout\,
	datad => \Hz1Lane|LessThan0~3_combout\,
	combout => \Hz1Lane|LessThan0~4_combout\);

-- Location: LCCOMB_X108_Y50_N0
\Hz1Lane|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~5_combout\ = (\Hz1Lane|s_counter\(17) & (\Hz1Lane|s_counter\(15) & (\Hz1Lane|LessThan0~1_combout\ & \Hz1Lane|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(17),
	datab => \Hz1Lane|s_counter\(15),
	datac => \Hz1Lane|LessThan0~1_combout\,
	datad => \Hz1Lane|LessThan0~4_combout\,
	combout => \Hz1Lane|LessThan0~5_combout\);

-- Location: LCCOMB_X108_Y50_N18
\Hz1Lane|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~6_combout\ = (\Hz1Lane|s_counter\(18)) # ((\Hz1Lane|LessThan0~5_combout\) # ((\Hz1Lane|s_counter\(17) & \Hz1Lane|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(18),
	datab => \Hz1Lane|s_counter\(17),
	datac => \Hz1Lane|s_counter\(16),
	datad => \Hz1Lane|LessThan0~5_combout\,
	combout => \Hz1Lane|LessThan0~6_combout\);

-- Location: LCCOMB_X108_Y50_N16
\Hz1Lane|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan0~7_combout\ = (\Hz1Lane|s_counter\(23) & (\Hz1Lane|s_counter\(25) & (\Hz1Lane|LessThan0~0_combout\ & \Hz1Lane|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(23),
	datab => \Hz1Lane|s_counter\(25),
	datac => \Hz1Lane|LessThan0~0_combout\,
	datad => \Hz1Lane|LessThan0~6_combout\,
	combout => \Hz1Lane|LessThan0~7_combout\);

-- Location: LCCOMB_X108_Y50_N30
\Hz1Lane|count_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~0_combout\ = (\DebounceKEY0|cleanOut~q\) # ((\Hz1Lane|LessThan0~7_combout\) # ((\Hz1Lane|s_counter\(25) & \Hz1Lane|s_counter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|cleanOut~q\,
	datab => \Hz1Lane|s_counter\(25),
	datac => \Hz1Lane|s_counter\(24),
	datad => \Hz1Lane|LessThan0~7_combout\,
	combout => \Hz1Lane|count_proc~0_combout\);

-- Location: FF_X107_Y50_N7
\Hz1Lane|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[0]~26_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(0));

-- Location: LCCOMB_X107_Y50_N8
\Hz1Lane|s_counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[1]~28_combout\ = (\Hz1Lane|s_counter\(1) & (!\Hz1Lane|s_counter[0]~27\)) # (!\Hz1Lane|s_counter\(1) & ((\Hz1Lane|s_counter[0]~27\) # (GND)))
-- \Hz1Lane|s_counter[1]~29\ = CARRY((!\Hz1Lane|s_counter[0]~27\) # (!\Hz1Lane|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(1),
	datad => VCC,
	cin => \Hz1Lane|s_counter[0]~27\,
	combout => \Hz1Lane|s_counter[1]~28_combout\,
	cout => \Hz1Lane|s_counter[1]~29\);

-- Location: FF_X107_Y50_N9
\Hz1Lane|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[1]~28_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(1));

-- Location: LCCOMB_X107_Y50_N10
\Hz1Lane|s_counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[2]~30_combout\ = (\Hz1Lane|s_counter\(2) & (\Hz1Lane|s_counter[1]~29\ $ (GND))) # (!\Hz1Lane|s_counter\(2) & (!\Hz1Lane|s_counter[1]~29\ & VCC))
-- \Hz1Lane|s_counter[2]~31\ = CARRY((\Hz1Lane|s_counter\(2) & !\Hz1Lane|s_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(2),
	datad => VCC,
	cin => \Hz1Lane|s_counter[1]~29\,
	combout => \Hz1Lane|s_counter[2]~30_combout\,
	cout => \Hz1Lane|s_counter[2]~31\);

-- Location: FF_X107_Y50_N11
\Hz1Lane|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[2]~30_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(2));

-- Location: LCCOMB_X107_Y50_N12
\Hz1Lane|s_counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[3]~32_combout\ = (\Hz1Lane|s_counter\(3) & (!\Hz1Lane|s_counter[2]~31\)) # (!\Hz1Lane|s_counter\(3) & ((\Hz1Lane|s_counter[2]~31\) # (GND)))
-- \Hz1Lane|s_counter[3]~33\ = CARRY((!\Hz1Lane|s_counter[2]~31\) # (!\Hz1Lane|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(3),
	datad => VCC,
	cin => \Hz1Lane|s_counter[2]~31\,
	combout => \Hz1Lane|s_counter[3]~32_combout\,
	cout => \Hz1Lane|s_counter[3]~33\);

-- Location: FF_X107_Y50_N13
\Hz1Lane|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[3]~32_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(3));

-- Location: LCCOMB_X107_Y50_N14
\Hz1Lane|s_counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[4]~34_combout\ = (\Hz1Lane|s_counter\(4) & (\Hz1Lane|s_counter[3]~33\ $ (GND))) # (!\Hz1Lane|s_counter\(4) & (!\Hz1Lane|s_counter[3]~33\ & VCC))
-- \Hz1Lane|s_counter[4]~35\ = CARRY((\Hz1Lane|s_counter\(4) & !\Hz1Lane|s_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(4),
	datad => VCC,
	cin => \Hz1Lane|s_counter[3]~33\,
	combout => \Hz1Lane|s_counter[4]~34_combout\,
	cout => \Hz1Lane|s_counter[4]~35\);

-- Location: FF_X107_Y50_N15
\Hz1Lane|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[4]~34_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(4));

-- Location: LCCOMB_X107_Y50_N16
\Hz1Lane|s_counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[5]~36_combout\ = (\Hz1Lane|s_counter\(5) & (!\Hz1Lane|s_counter[4]~35\)) # (!\Hz1Lane|s_counter\(5) & ((\Hz1Lane|s_counter[4]~35\) # (GND)))
-- \Hz1Lane|s_counter[5]~37\ = CARRY((!\Hz1Lane|s_counter[4]~35\) # (!\Hz1Lane|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(5),
	datad => VCC,
	cin => \Hz1Lane|s_counter[4]~35\,
	combout => \Hz1Lane|s_counter[5]~36_combout\,
	cout => \Hz1Lane|s_counter[5]~37\);

-- Location: FF_X107_Y50_N17
\Hz1Lane|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[5]~36_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(5));

-- Location: LCCOMB_X107_Y50_N18
\Hz1Lane|s_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[6]~38_combout\ = (\Hz1Lane|s_counter\(6) & (\Hz1Lane|s_counter[5]~37\ $ (GND))) # (!\Hz1Lane|s_counter\(6) & (!\Hz1Lane|s_counter[5]~37\ & VCC))
-- \Hz1Lane|s_counter[6]~39\ = CARRY((\Hz1Lane|s_counter\(6) & !\Hz1Lane|s_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(6),
	datad => VCC,
	cin => \Hz1Lane|s_counter[5]~37\,
	combout => \Hz1Lane|s_counter[6]~38_combout\,
	cout => \Hz1Lane|s_counter[6]~39\);

-- Location: FF_X107_Y50_N19
\Hz1Lane|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[6]~38_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(6));

-- Location: LCCOMB_X107_Y50_N20
\Hz1Lane|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[7]~40_combout\ = (\Hz1Lane|s_counter\(7) & (!\Hz1Lane|s_counter[6]~39\)) # (!\Hz1Lane|s_counter\(7) & ((\Hz1Lane|s_counter[6]~39\) # (GND)))
-- \Hz1Lane|s_counter[7]~41\ = CARRY((!\Hz1Lane|s_counter[6]~39\) # (!\Hz1Lane|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(7),
	datad => VCC,
	cin => \Hz1Lane|s_counter[6]~39\,
	combout => \Hz1Lane|s_counter[7]~40_combout\,
	cout => \Hz1Lane|s_counter[7]~41\);

-- Location: FF_X107_Y50_N21
\Hz1Lane|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[7]~40_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(7));

-- Location: LCCOMB_X107_Y50_N22
\Hz1Lane|s_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[8]~42_combout\ = (\Hz1Lane|s_counter\(8) & (\Hz1Lane|s_counter[7]~41\ $ (GND))) # (!\Hz1Lane|s_counter\(8) & (!\Hz1Lane|s_counter[7]~41\ & VCC))
-- \Hz1Lane|s_counter[8]~43\ = CARRY((\Hz1Lane|s_counter\(8) & !\Hz1Lane|s_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(8),
	datad => VCC,
	cin => \Hz1Lane|s_counter[7]~41\,
	combout => \Hz1Lane|s_counter[8]~42_combout\,
	cout => \Hz1Lane|s_counter[8]~43\);

-- Location: FF_X107_Y50_N23
\Hz1Lane|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[8]~42_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(8));

-- Location: LCCOMB_X107_Y50_N24
\Hz1Lane|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[9]~44_combout\ = (\Hz1Lane|s_counter\(9) & (!\Hz1Lane|s_counter[8]~43\)) # (!\Hz1Lane|s_counter\(9) & ((\Hz1Lane|s_counter[8]~43\) # (GND)))
-- \Hz1Lane|s_counter[9]~45\ = CARRY((!\Hz1Lane|s_counter[8]~43\) # (!\Hz1Lane|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(9),
	datad => VCC,
	cin => \Hz1Lane|s_counter[8]~43\,
	combout => \Hz1Lane|s_counter[9]~44_combout\,
	cout => \Hz1Lane|s_counter[9]~45\);

-- Location: FF_X107_Y50_N25
\Hz1Lane|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[9]~44_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(9));

-- Location: LCCOMB_X107_Y50_N26
\Hz1Lane|s_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[10]~46_combout\ = (\Hz1Lane|s_counter\(10) & (\Hz1Lane|s_counter[9]~45\ $ (GND))) # (!\Hz1Lane|s_counter\(10) & (!\Hz1Lane|s_counter[9]~45\ & VCC))
-- \Hz1Lane|s_counter[10]~47\ = CARRY((\Hz1Lane|s_counter\(10) & !\Hz1Lane|s_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(10),
	datad => VCC,
	cin => \Hz1Lane|s_counter[9]~45\,
	combout => \Hz1Lane|s_counter[10]~46_combout\,
	cout => \Hz1Lane|s_counter[10]~47\);

-- Location: FF_X107_Y50_N27
\Hz1Lane|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[10]~46_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(10));

-- Location: LCCOMB_X107_Y50_N28
\Hz1Lane|s_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[11]~48_combout\ = (\Hz1Lane|s_counter\(11) & (!\Hz1Lane|s_counter[10]~47\)) # (!\Hz1Lane|s_counter\(11) & ((\Hz1Lane|s_counter[10]~47\) # (GND)))
-- \Hz1Lane|s_counter[11]~49\ = CARRY((!\Hz1Lane|s_counter[10]~47\) # (!\Hz1Lane|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(11),
	datad => VCC,
	cin => \Hz1Lane|s_counter[10]~47\,
	combout => \Hz1Lane|s_counter[11]~48_combout\,
	cout => \Hz1Lane|s_counter[11]~49\);

-- Location: FF_X107_Y50_N29
\Hz1Lane|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[11]~48_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(11));

-- Location: LCCOMB_X107_Y50_N30
\Hz1Lane|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[12]~50_combout\ = (\Hz1Lane|s_counter\(12) & (\Hz1Lane|s_counter[11]~49\ $ (GND))) # (!\Hz1Lane|s_counter\(12) & (!\Hz1Lane|s_counter[11]~49\ & VCC))
-- \Hz1Lane|s_counter[12]~51\ = CARRY((\Hz1Lane|s_counter\(12) & !\Hz1Lane|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(12),
	datad => VCC,
	cin => \Hz1Lane|s_counter[11]~49\,
	combout => \Hz1Lane|s_counter[12]~50_combout\,
	cout => \Hz1Lane|s_counter[12]~51\);

-- Location: FF_X107_Y50_N31
\Hz1Lane|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[12]~50_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(12));

-- Location: LCCOMB_X107_Y49_N0
\Hz1Lane|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[13]~52_combout\ = (\Hz1Lane|s_counter\(13) & (!\Hz1Lane|s_counter[12]~51\)) # (!\Hz1Lane|s_counter\(13) & ((\Hz1Lane|s_counter[12]~51\) # (GND)))
-- \Hz1Lane|s_counter[13]~53\ = CARRY((!\Hz1Lane|s_counter[12]~51\) # (!\Hz1Lane|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(13),
	datad => VCC,
	cin => \Hz1Lane|s_counter[12]~51\,
	combout => \Hz1Lane|s_counter[13]~52_combout\,
	cout => \Hz1Lane|s_counter[13]~53\);

-- Location: FF_X108_Y50_N23
\Hz1Lane|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz1Lane|s_counter[13]~52_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(13));

-- Location: LCCOMB_X107_Y49_N2
\Hz1Lane|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[14]~54_combout\ = (\Hz1Lane|s_counter\(14) & (\Hz1Lane|s_counter[13]~53\ $ (GND))) # (!\Hz1Lane|s_counter\(14) & (!\Hz1Lane|s_counter[13]~53\ & VCC))
-- \Hz1Lane|s_counter[14]~55\ = CARRY((\Hz1Lane|s_counter\(14) & !\Hz1Lane|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(14),
	datad => VCC,
	cin => \Hz1Lane|s_counter[13]~53\,
	combout => \Hz1Lane|s_counter[14]~54_combout\,
	cout => \Hz1Lane|s_counter[14]~55\);

-- Location: FF_X108_Y50_N13
\Hz1Lane|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz1Lane|s_counter[14]~54_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(14));

-- Location: LCCOMB_X107_Y49_N4
\Hz1Lane|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[15]~56_combout\ = (\Hz1Lane|s_counter\(15) & (!\Hz1Lane|s_counter[14]~55\)) # (!\Hz1Lane|s_counter\(15) & ((\Hz1Lane|s_counter[14]~55\) # (GND)))
-- \Hz1Lane|s_counter[15]~57\ = CARRY((!\Hz1Lane|s_counter[14]~55\) # (!\Hz1Lane|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(15),
	datad => VCC,
	cin => \Hz1Lane|s_counter[14]~55\,
	combout => \Hz1Lane|s_counter[15]~56_combout\,
	cout => \Hz1Lane|s_counter[15]~57\);

-- Location: FF_X108_Y50_N3
\Hz1Lane|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz1Lane|s_counter[15]~56_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(15));

-- Location: LCCOMB_X107_Y49_N6
\Hz1Lane|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[16]~58_combout\ = (\Hz1Lane|s_counter\(16) & (\Hz1Lane|s_counter[15]~57\ $ (GND))) # (!\Hz1Lane|s_counter\(16) & (!\Hz1Lane|s_counter[15]~57\ & VCC))
-- \Hz1Lane|s_counter[16]~59\ = CARRY((\Hz1Lane|s_counter\(16) & !\Hz1Lane|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(16),
	datad => VCC,
	cin => \Hz1Lane|s_counter[15]~57\,
	combout => \Hz1Lane|s_counter[16]~58_combout\,
	cout => \Hz1Lane|s_counter[16]~59\);

-- Location: FF_X108_Y50_N15
\Hz1Lane|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz1Lane|s_counter[16]~58_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(16));

-- Location: LCCOMB_X107_Y49_N8
\Hz1Lane|s_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[17]~60_combout\ = (\Hz1Lane|s_counter\(17) & (!\Hz1Lane|s_counter[16]~59\)) # (!\Hz1Lane|s_counter\(17) & ((\Hz1Lane|s_counter[16]~59\) # (GND)))
-- \Hz1Lane|s_counter[17]~61\ = CARRY((!\Hz1Lane|s_counter[16]~59\) # (!\Hz1Lane|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(17),
	datad => VCC,
	cin => \Hz1Lane|s_counter[16]~59\,
	combout => \Hz1Lane|s_counter[17]~60_combout\,
	cout => \Hz1Lane|s_counter[17]~61\);

-- Location: FF_X108_Y50_N29
\Hz1Lane|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz1Lane|s_counter[17]~60_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(17));

-- Location: LCCOMB_X107_Y49_N10
\Hz1Lane|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[18]~62_combout\ = (\Hz1Lane|s_counter\(18) & (\Hz1Lane|s_counter[17]~61\ $ (GND))) # (!\Hz1Lane|s_counter\(18) & (!\Hz1Lane|s_counter[17]~61\ & VCC))
-- \Hz1Lane|s_counter[18]~63\ = CARRY((\Hz1Lane|s_counter\(18) & !\Hz1Lane|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(18),
	datad => VCC,
	cin => \Hz1Lane|s_counter[17]~61\,
	combout => \Hz1Lane|s_counter[18]~62_combout\,
	cout => \Hz1Lane|s_counter[18]~63\);

-- Location: FF_X108_Y50_N9
\Hz1Lane|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz1Lane|s_counter[18]~62_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(18));

-- Location: LCCOMB_X107_Y49_N12
\Hz1Lane|s_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[19]~64_combout\ = (\Hz1Lane|s_counter\(19) & (!\Hz1Lane|s_counter[18]~63\)) # (!\Hz1Lane|s_counter\(19) & ((\Hz1Lane|s_counter[18]~63\) # (GND)))
-- \Hz1Lane|s_counter[19]~65\ = CARRY((!\Hz1Lane|s_counter[18]~63\) # (!\Hz1Lane|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(19),
	datad => VCC,
	cin => \Hz1Lane|s_counter[18]~63\,
	combout => \Hz1Lane|s_counter[19]~64_combout\,
	cout => \Hz1Lane|s_counter[19]~65\);

-- Location: FF_X107_Y49_N13
\Hz1Lane|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[19]~64_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(19));

-- Location: LCCOMB_X107_Y49_N14
\Hz1Lane|s_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[20]~66_combout\ = (\Hz1Lane|s_counter\(20) & (\Hz1Lane|s_counter[19]~65\ $ (GND))) # (!\Hz1Lane|s_counter\(20) & (!\Hz1Lane|s_counter[19]~65\ & VCC))
-- \Hz1Lane|s_counter[20]~67\ = CARRY((\Hz1Lane|s_counter\(20) & !\Hz1Lane|s_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(20),
	datad => VCC,
	cin => \Hz1Lane|s_counter[19]~65\,
	combout => \Hz1Lane|s_counter[20]~66_combout\,
	cout => \Hz1Lane|s_counter[20]~67\);

-- Location: FF_X107_Y49_N15
\Hz1Lane|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[20]~66_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(20));

-- Location: LCCOMB_X107_Y49_N16
\Hz1Lane|s_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[21]~68_combout\ = (\Hz1Lane|s_counter\(21) & (!\Hz1Lane|s_counter[20]~67\)) # (!\Hz1Lane|s_counter\(21) & ((\Hz1Lane|s_counter[20]~67\) # (GND)))
-- \Hz1Lane|s_counter[21]~69\ = CARRY((!\Hz1Lane|s_counter[20]~67\) # (!\Hz1Lane|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(21),
	datad => VCC,
	cin => \Hz1Lane|s_counter[20]~67\,
	combout => \Hz1Lane|s_counter[21]~68_combout\,
	cout => \Hz1Lane|s_counter[21]~69\);

-- Location: FF_X107_Y49_N17
\Hz1Lane|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[21]~68_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(21));

-- Location: LCCOMB_X107_Y49_N18
\Hz1Lane|s_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[22]~70_combout\ = (\Hz1Lane|s_counter\(22) & (\Hz1Lane|s_counter[21]~69\ $ (GND))) # (!\Hz1Lane|s_counter\(22) & (!\Hz1Lane|s_counter[21]~69\ & VCC))
-- \Hz1Lane|s_counter[22]~71\ = CARRY((\Hz1Lane|s_counter\(22) & !\Hz1Lane|s_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(22),
	datad => VCC,
	cin => \Hz1Lane|s_counter[21]~69\,
	combout => \Hz1Lane|s_counter[22]~70_combout\,
	cout => \Hz1Lane|s_counter[22]~71\);

-- Location: FF_X107_Y49_N19
\Hz1Lane|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[22]~70_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(22));

-- Location: FF_X107_Y49_N21
\Hz1Lane|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[23]~72_combout\,
	sclr => \Hz1Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(23));

-- Location: LCCOMB_X108_Y50_N20
\Hz1Lane|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~2_combout\ = (((\Hz1Lane|LessThan1~1_combout\ & !\Hz1Lane|s_counter\(6))) # (!\Hz1Lane|LessThan0~1_combout\)) # (!\Hz1Lane|s_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|LessThan1~1_combout\,
	datab => \Hz1Lane|s_counter\(11),
	datac => \Hz1Lane|LessThan0~1_combout\,
	datad => \Hz1Lane|s_counter\(6),
	combout => \Hz1Lane|LessThan1~2_combout\);

-- Location: LCCOMB_X107_Y49_N28
\Hz1Lane|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~0_combout\ = (((!\Hz1Lane|s_counter\(17) & !\Hz1Lane|s_counter\(16))) # (!\Hz1Lane|s_counter\(18))) # (!\Hz1Lane|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|LessThan0~0_combout\,
	datab => \Hz1Lane|s_counter\(17),
	datac => \Hz1Lane|s_counter\(16),
	datad => \Hz1Lane|s_counter\(18),
	combout => \Hz1Lane|LessThan1~0_combout\);

-- Location: LCCOMB_X108_Y50_N2
\Hz1Lane|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~3_combout\ = (\Hz1Lane|LessThan1~0_combout\) # ((\Hz1Lane|LessThan1~2_combout\ & (!\Hz1Lane|s_counter\(17) & !\Hz1Lane|s_counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|LessThan1~2_combout\,
	datab => \Hz1Lane|s_counter\(17),
	datac => \Hz1Lane|s_counter\(15),
	datad => \Hz1Lane|LessThan1~0_combout\,
	combout => \Hz1Lane|LessThan1~3_combout\);

-- Location: LCCOMB_X108_Y50_N10
\Hz1Lane|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~4_combout\ = (\Hz1Lane|s_counter\(25)) # ((\Hz1Lane|s_counter\(24) & ((\Hz1Lane|s_counter\(23)) # (!\Hz1Lane|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(23),
	datab => \Hz1Lane|s_counter\(25),
	datac => \Hz1Lane|s_counter\(24),
	datad => \Hz1Lane|LessThan1~3_combout\,
	combout => \Hz1Lane|LessThan1~4_combout\);

-- Location: FF_X108_Y50_N11
\Hz1Lane|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|blink~q\);

-- Location: LCCOMB_X113_Y45_N8
\Hz2Lane|s_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[0]~25_combout\ = \Hz2Lane|s_counter\(0) $ (VCC)
-- \Hz2Lane|s_counter[0]~26\ = CARRY(\Hz2Lane|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(0),
	datad => VCC,
	combout => \Hz2Lane|s_counter[0]~25_combout\,
	cout => \Hz2Lane|s_counter[0]~26\);

-- Location: LCCOMB_X113_Y44_N20
\Hz2Lane|s_counter[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[22]~69_combout\ = (\Hz2Lane|s_counter\(22) & (\Hz2Lane|s_counter[21]~68\ $ (GND))) # (!\Hz2Lane|s_counter\(22) & (!\Hz2Lane|s_counter[21]~68\ & VCC))
-- \Hz2Lane|s_counter[22]~70\ = CARRY((\Hz2Lane|s_counter\(22) & !\Hz2Lane|s_counter[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(22),
	datad => VCC,
	cin => \Hz2Lane|s_counter[21]~68\,
	combout => \Hz2Lane|s_counter[22]~69_combout\,
	cout => \Hz2Lane|s_counter[22]~70\);

-- Location: LCCOMB_X113_Y44_N22
\Hz2Lane|s_counter[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[23]~71_combout\ = (\Hz2Lane|s_counter\(23) & (!\Hz2Lane|s_counter[22]~70\)) # (!\Hz2Lane|s_counter\(23) & ((\Hz2Lane|s_counter[22]~70\) # (GND)))
-- \Hz2Lane|s_counter[23]~72\ = CARRY((!\Hz2Lane|s_counter[22]~70\) # (!\Hz2Lane|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(23),
	datad => VCC,
	cin => \Hz2Lane|s_counter[22]~70\,
	combout => \Hz2Lane|s_counter[23]~71_combout\,
	cout => \Hz2Lane|s_counter[23]~72\);

-- Location: FF_X113_Y44_N23
\Hz2Lane|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[23]~71_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(23));

-- Location: LCCOMB_X113_Y44_N24
\Hz2Lane|s_counter[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[24]~73_combout\ = \Hz2Lane|s_counter[23]~72\ $ (!\Hz2Lane|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Hz2Lane|s_counter\(24),
	cin => \Hz2Lane|s_counter[23]~72\,
	combout => \Hz2Lane|s_counter[24]~73_combout\);

-- Location: FF_X113_Y44_N25
\Hz2Lane|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[24]~73_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(24));

-- Location: LCCOMB_X113_Y44_N30
\Hz2Lane|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan0~0_combout\ = (\Hz2Lane|s_counter\(18) & (\Hz2Lane|s_counter\(21) & (\Hz2Lane|s_counter\(19) & \Hz2Lane|s_counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(18),
	datab => \Hz2Lane|s_counter\(21),
	datac => \Hz2Lane|s_counter\(19),
	datad => \Hz2Lane|s_counter\(20),
	combout => \Hz2Lane|LessThan0~0_combout\);

-- Location: LCCOMB_X114_Y45_N14
\Hz2Lane|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan0~1_combout\ = (\Hz2Lane|s_counter\(11) & (\Hz2Lane|s_counter\(12) & \Hz2Lane|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(11),
	datac => \Hz2Lane|s_counter\(12),
	datad => \Hz2Lane|s_counter\(13),
	combout => \Hz2Lane|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y45_N4
\Hz2Lane|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan1~1_combout\ = (!\Hz2Lane|s_counter\(7) & (!\Hz2Lane|s_counter\(6) & (!\Hz2Lane|s_counter\(9) & !\Hz2Lane|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(7),
	datab => \Hz2Lane|s_counter\(6),
	datac => \Hz2Lane|s_counter\(9),
	datad => \Hz2Lane|s_counter\(8),
	combout => \Hz2Lane|LessThan1~1_combout\);

-- Location: LCCOMB_X113_Y45_N0
\Hz2Lane|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan0~2_combout\ = (\Hz2Lane|s_counter\(2) & (\Hz2Lane|s_counter\(5) & (\Hz2Lane|s_counter\(0) & \Hz2Lane|s_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(2),
	datab => \Hz2Lane|s_counter\(5),
	datac => \Hz2Lane|s_counter\(0),
	datad => \Hz2Lane|s_counter\(1),
	combout => \Hz2Lane|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y45_N2
\Hz2Lane|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan0~3_combout\ = (\Hz2Lane|LessThan1~1_combout\ & (((!\Hz2Lane|LessThan0~2_combout\) # (!\Hz2Lane|s_counter\(3))) # (!\Hz2Lane|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(4),
	datab => \Hz2Lane|s_counter\(3),
	datac => \Hz2Lane|LessThan1~1_combout\,
	datad => \Hz2Lane|LessThan0~2_combout\,
	combout => \Hz2Lane|LessThan0~3_combout\);

-- Location: LCCOMB_X114_Y45_N28
\Hz2Lane|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan0~4_combout\ = (\Hz2Lane|s_counter\(14) & (\Hz2Lane|LessThan0~1_combout\ & ((\Hz2Lane|s_counter\(10)) # (!\Hz2Lane|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(14),
	datab => \Hz2Lane|s_counter\(10),
	datac => \Hz2Lane|LessThan0~1_combout\,
	datad => \Hz2Lane|LessThan0~3_combout\,
	combout => \Hz2Lane|LessThan0~4_combout\);

-- Location: LCCOMB_X114_Y45_N2
\Hz2Lane|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan0~5_combout\ = (\Hz2Lane|s_counter\(17)) # ((\Hz2Lane|s_counter\(16) & ((\Hz2Lane|s_counter\(15)) # (\Hz2Lane|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(17),
	datab => \Hz2Lane|s_counter\(16),
	datac => \Hz2Lane|s_counter\(15),
	datad => \Hz2Lane|LessThan0~4_combout\,
	combout => \Hz2Lane|LessThan0~5_combout\);

-- Location: LCCOMB_X114_Y45_N10
\Hz2Lane|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan0~6_combout\ = (\Hz2Lane|s_counter\(22) & (\Hz2Lane|LessThan0~0_combout\ & (\Hz2Lane|s_counter\(24) & \Hz2Lane|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(22),
	datab => \Hz2Lane|LessThan0~0_combout\,
	datac => \Hz2Lane|s_counter\(24),
	datad => \Hz2Lane|LessThan0~5_combout\,
	combout => \Hz2Lane|LessThan0~6_combout\);

-- Location: LCCOMB_X114_Y45_N30
\Hz2Lane|count_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|count_proc~0_combout\ = (\DebounceKEY0|cleanOut~q\) # ((\Hz2Lane|LessThan0~6_combout\) # ((\Hz2Lane|s_counter\(24) & \Hz2Lane|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|cleanOut~q\,
	datab => \Hz2Lane|s_counter\(24),
	datac => \Hz2Lane|s_counter\(23),
	datad => \Hz2Lane|LessThan0~6_combout\,
	combout => \Hz2Lane|count_proc~0_combout\);

-- Location: FF_X113_Y45_N9
\Hz2Lane|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[0]~25_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(0));

-- Location: LCCOMB_X113_Y45_N10
\Hz2Lane|s_counter[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[1]~27_combout\ = (\Hz2Lane|s_counter\(1) & (!\Hz2Lane|s_counter[0]~26\)) # (!\Hz2Lane|s_counter\(1) & ((\Hz2Lane|s_counter[0]~26\) # (GND)))
-- \Hz2Lane|s_counter[1]~28\ = CARRY((!\Hz2Lane|s_counter[0]~26\) # (!\Hz2Lane|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(1),
	datad => VCC,
	cin => \Hz2Lane|s_counter[0]~26\,
	combout => \Hz2Lane|s_counter[1]~27_combout\,
	cout => \Hz2Lane|s_counter[1]~28\);

-- Location: FF_X113_Y45_N11
\Hz2Lane|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[1]~27_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(1));

-- Location: LCCOMB_X113_Y45_N12
\Hz2Lane|s_counter[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[2]~29_combout\ = (\Hz2Lane|s_counter\(2) & (\Hz2Lane|s_counter[1]~28\ $ (GND))) # (!\Hz2Lane|s_counter\(2) & (!\Hz2Lane|s_counter[1]~28\ & VCC))
-- \Hz2Lane|s_counter[2]~30\ = CARRY((\Hz2Lane|s_counter\(2) & !\Hz2Lane|s_counter[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(2),
	datad => VCC,
	cin => \Hz2Lane|s_counter[1]~28\,
	combout => \Hz2Lane|s_counter[2]~29_combout\,
	cout => \Hz2Lane|s_counter[2]~30\);

-- Location: FF_X113_Y45_N13
\Hz2Lane|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[2]~29_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(2));

-- Location: LCCOMB_X113_Y45_N14
\Hz2Lane|s_counter[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[3]~31_combout\ = (\Hz2Lane|s_counter\(3) & (!\Hz2Lane|s_counter[2]~30\)) # (!\Hz2Lane|s_counter\(3) & ((\Hz2Lane|s_counter[2]~30\) # (GND)))
-- \Hz2Lane|s_counter[3]~32\ = CARRY((!\Hz2Lane|s_counter[2]~30\) # (!\Hz2Lane|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(3),
	datad => VCC,
	cin => \Hz2Lane|s_counter[2]~30\,
	combout => \Hz2Lane|s_counter[3]~31_combout\,
	cout => \Hz2Lane|s_counter[3]~32\);

-- Location: FF_X113_Y45_N15
\Hz2Lane|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[3]~31_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(3));

-- Location: LCCOMB_X113_Y45_N16
\Hz2Lane|s_counter[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[4]~33_combout\ = (\Hz2Lane|s_counter\(4) & (\Hz2Lane|s_counter[3]~32\ $ (GND))) # (!\Hz2Lane|s_counter\(4) & (!\Hz2Lane|s_counter[3]~32\ & VCC))
-- \Hz2Lane|s_counter[4]~34\ = CARRY((\Hz2Lane|s_counter\(4) & !\Hz2Lane|s_counter[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(4),
	datad => VCC,
	cin => \Hz2Lane|s_counter[3]~32\,
	combout => \Hz2Lane|s_counter[4]~33_combout\,
	cout => \Hz2Lane|s_counter[4]~34\);

-- Location: FF_X113_Y45_N17
\Hz2Lane|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[4]~33_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(4));

-- Location: LCCOMB_X113_Y45_N18
\Hz2Lane|s_counter[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[5]~35_combout\ = (\Hz2Lane|s_counter\(5) & (!\Hz2Lane|s_counter[4]~34\)) # (!\Hz2Lane|s_counter\(5) & ((\Hz2Lane|s_counter[4]~34\) # (GND)))
-- \Hz2Lane|s_counter[5]~36\ = CARRY((!\Hz2Lane|s_counter[4]~34\) # (!\Hz2Lane|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(5),
	datad => VCC,
	cin => \Hz2Lane|s_counter[4]~34\,
	combout => \Hz2Lane|s_counter[5]~35_combout\,
	cout => \Hz2Lane|s_counter[5]~36\);

-- Location: FF_X113_Y45_N19
\Hz2Lane|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[5]~35_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(5));

-- Location: LCCOMB_X113_Y45_N20
\Hz2Lane|s_counter[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[6]~37_combout\ = (\Hz2Lane|s_counter\(6) & (\Hz2Lane|s_counter[5]~36\ $ (GND))) # (!\Hz2Lane|s_counter\(6) & (!\Hz2Lane|s_counter[5]~36\ & VCC))
-- \Hz2Lane|s_counter[6]~38\ = CARRY((\Hz2Lane|s_counter\(6) & !\Hz2Lane|s_counter[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(6),
	datad => VCC,
	cin => \Hz2Lane|s_counter[5]~36\,
	combout => \Hz2Lane|s_counter[6]~37_combout\,
	cout => \Hz2Lane|s_counter[6]~38\);

-- Location: FF_X113_Y45_N21
\Hz2Lane|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[6]~37_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(6));

-- Location: LCCOMB_X113_Y45_N22
\Hz2Lane|s_counter[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[7]~39_combout\ = (\Hz2Lane|s_counter\(7) & (!\Hz2Lane|s_counter[6]~38\)) # (!\Hz2Lane|s_counter\(7) & ((\Hz2Lane|s_counter[6]~38\) # (GND)))
-- \Hz2Lane|s_counter[7]~40\ = CARRY((!\Hz2Lane|s_counter[6]~38\) # (!\Hz2Lane|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(7),
	datad => VCC,
	cin => \Hz2Lane|s_counter[6]~38\,
	combout => \Hz2Lane|s_counter[7]~39_combout\,
	cout => \Hz2Lane|s_counter[7]~40\);

-- Location: FF_X113_Y45_N23
\Hz2Lane|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[7]~39_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(7));

-- Location: LCCOMB_X113_Y45_N24
\Hz2Lane|s_counter[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[8]~41_combout\ = (\Hz2Lane|s_counter\(8) & (\Hz2Lane|s_counter[7]~40\ $ (GND))) # (!\Hz2Lane|s_counter\(8) & (!\Hz2Lane|s_counter[7]~40\ & VCC))
-- \Hz2Lane|s_counter[8]~42\ = CARRY((\Hz2Lane|s_counter\(8) & !\Hz2Lane|s_counter[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(8),
	datad => VCC,
	cin => \Hz2Lane|s_counter[7]~40\,
	combout => \Hz2Lane|s_counter[8]~41_combout\,
	cout => \Hz2Lane|s_counter[8]~42\);

-- Location: FF_X113_Y45_N25
\Hz2Lane|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[8]~41_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(8));

-- Location: LCCOMB_X113_Y45_N26
\Hz2Lane|s_counter[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[9]~43_combout\ = (\Hz2Lane|s_counter\(9) & (!\Hz2Lane|s_counter[8]~42\)) # (!\Hz2Lane|s_counter\(9) & ((\Hz2Lane|s_counter[8]~42\) # (GND)))
-- \Hz2Lane|s_counter[9]~44\ = CARRY((!\Hz2Lane|s_counter[8]~42\) # (!\Hz2Lane|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(9),
	datad => VCC,
	cin => \Hz2Lane|s_counter[8]~42\,
	combout => \Hz2Lane|s_counter[9]~43_combout\,
	cout => \Hz2Lane|s_counter[9]~44\);

-- Location: FF_X113_Y45_N27
\Hz2Lane|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[9]~43_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(9));

-- Location: LCCOMB_X113_Y45_N28
\Hz2Lane|s_counter[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[10]~45_combout\ = (\Hz2Lane|s_counter\(10) & (\Hz2Lane|s_counter[9]~44\ $ (GND))) # (!\Hz2Lane|s_counter\(10) & (!\Hz2Lane|s_counter[9]~44\ & VCC))
-- \Hz2Lane|s_counter[10]~46\ = CARRY((\Hz2Lane|s_counter\(10) & !\Hz2Lane|s_counter[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(10),
	datad => VCC,
	cin => \Hz2Lane|s_counter[9]~44\,
	combout => \Hz2Lane|s_counter[10]~45_combout\,
	cout => \Hz2Lane|s_counter[10]~46\);

-- Location: FF_X113_Y45_N29
\Hz2Lane|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[10]~45_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(10));

-- Location: LCCOMB_X113_Y45_N30
\Hz2Lane|s_counter[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[11]~47_combout\ = (\Hz2Lane|s_counter\(11) & (!\Hz2Lane|s_counter[10]~46\)) # (!\Hz2Lane|s_counter\(11) & ((\Hz2Lane|s_counter[10]~46\) # (GND)))
-- \Hz2Lane|s_counter[11]~48\ = CARRY((!\Hz2Lane|s_counter[10]~46\) # (!\Hz2Lane|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(11),
	datad => VCC,
	cin => \Hz2Lane|s_counter[10]~46\,
	combout => \Hz2Lane|s_counter[11]~47_combout\,
	cout => \Hz2Lane|s_counter[11]~48\);

-- Location: FF_X114_Y45_N7
\Hz2Lane|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz2Lane|s_counter[11]~47_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(11));

-- Location: LCCOMB_X113_Y44_N0
\Hz2Lane|s_counter[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[12]~49_combout\ = (\Hz2Lane|s_counter\(12) & (\Hz2Lane|s_counter[11]~48\ $ (GND))) # (!\Hz2Lane|s_counter\(12) & (!\Hz2Lane|s_counter[11]~48\ & VCC))
-- \Hz2Lane|s_counter[12]~50\ = CARRY((\Hz2Lane|s_counter\(12) & !\Hz2Lane|s_counter[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(12),
	datad => VCC,
	cin => \Hz2Lane|s_counter[11]~48\,
	combout => \Hz2Lane|s_counter[12]~49_combout\,
	cout => \Hz2Lane|s_counter[12]~50\);

-- Location: FF_X114_Y45_N23
\Hz2Lane|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz2Lane|s_counter[12]~49_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(12));

-- Location: LCCOMB_X113_Y44_N2
\Hz2Lane|s_counter[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[13]~51_combout\ = (\Hz2Lane|s_counter\(13) & (!\Hz2Lane|s_counter[12]~50\)) # (!\Hz2Lane|s_counter\(13) & ((\Hz2Lane|s_counter[12]~50\) # (GND)))
-- \Hz2Lane|s_counter[13]~52\ = CARRY((!\Hz2Lane|s_counter[12]~50\) # (!\Hz2Lane|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(13),
	datad => VCC,
	cin => \Hz2Lane|s_counter[12]~50\,
	combout => \Hz2Lane|s_counter[13]~51_combout\,
	cout => \Hz2Lane|s_counter[13]~52\);

-- Location: FF_X114_Y45_N25
\Hz2Lane|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz2Lane|s_counter[13]~51_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(13));

-- Location: LCCOMB_X113_Y44_N4
\Hz2Lane|s_counter[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[14]~53_combout\ = (\Hz2Lane|s_counter\(14) & (\Hz2Lane|s_counter[13]~52\ $ (GND))) # (!\Hz2Lane|s_counter\(14) & (!\Hz2Lane|s_counter[13]~52\ & VCC))
-- \Hz2Lane|s_counter[14]~54\ = CARRY((\Hz2Lane|s_counter\(14) & !\Hz2Lane|s_counter[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(14),
	datad => VCC,
	cin => \Hz2Lane|s_counter[13]~52\,
	combout => \Hz2Lane|s_counter[14]~53_combout\,
	cout => \Hz2Lane|s_counter[14]~54\);

-- Location: FF_X114_Y45_N17
\Hz2Lane|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz2Lane|s_counter[14]~53_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(14));

-- Location: LCCOMB_X113_Y44_N6
\Hz2Lane|s_counter[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[15]~55_combout\ = (\Hz2Lane|s_counter\(15) & (!\Hz2Lane|s_counter[14]~54\)) # (!\Hz2Lane|s_counter\(15) & ((\Hz2Lane|s_counter[14]~54\) # (GND)))
-- \Hz2Lane|s_counter[15]~56\ = CARRY((!\Hz2Lane|s_counter[14]~54\) # (!\Hz2Lane|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(15),
	datad => VCC,
	cin => \Hz2Lane|s_counter[14]~54\,
	combout => \Hz2Lane|s_counter[15]~55_combout\,
	cout => \Hz2Lane|s_counter[15]~56\);

-- Location: FF_X114_Y45_N27
\Hz2Lane|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz2Lane|s_counter[15]~55_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(15));

-- Location: LCCOMB_X113_Y44_N8
\Hz2Lane|s_counter[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[16]~57_combout\ = (\Hz2Lane|s_counter\(16) & (\Hz2Lane|s_counter[15]~56\ $ (GND))) # (!\Hz2Lane|s_counter\(16) & (!\Hz2Lane|s_counter[15]~56\ & VCC))
-- \Hz2Lane|s_counter[16]~58\ = CARRY((\Hz2Lane|s_counter\(16) & !\Hz2Lane|s_counter[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(16),
	datad => VCC,
	cin => \Hz2Lane|s_counter[15]~56\,
	combout => \Hz2Lane|s_counter[16]~57_combout\,
	cout => \Hz2Lane|s_counter[16]~58\);

-- Location: FF_X114_Y45_N5
\Hz2Lane|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz2Lane|s_counter[16]~57_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(16));

-- Location: LCCOMB_X113_Y44_N10
\Hz2Lane|s_counter[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[17]~59_combout\ = (\Hz2Lane|s_counter\(17) & (!\Hz2Lane|s_counter[16]~58\)) # (!\Hz2Lane|s_counter\(17) & ((\Hz2Lane|s_counter[16]~58\) # (GND)))
-- \Hz2Lane|s_counter[17]~60\ = CARRY((!\Hz2Lane|s_counter[16]~58\) # (!\Hz2Lane|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(17),
	datad => VCC,
	cin => \Hz2Lane|s_counter[16]~58\,
	combout => \Hz2Lane|s_counter[17]~59_combout\,
	cout => \Hz2Lane|s_counter[17]~60\);

-- Location: FF_X114_Y45_N13
\Hz2Lane|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Hz2Lane|s_counter[17]~59_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(17));

-- Location: LCCOMB_X113_Y44_N12
\Hz2Lane|s_counter[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[18]~61_combout\ = (\Hz2Lane|s_counter\(18) & (\Hz2Lane|s_counter[17]~60\ $ (GND))) # (!\Hz2Lane|s_counter\(18) & (!\Hz2Lane|s_counter[17]~60\ & VCC))
-- \Hz2Lane|s_counter[18]~62\ = CARRY((\Hz2Lane|s_counter\(18) & !\Hz2Lane|s_counter[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(18),
	datad => VCC,
	cin => \Hz2Lane|s_counter[17]~60\,
	combout => \Hz2Lane|s_counter[18]~61_combout\,
	cout => \Hz2Lane|s_counter[18]~62\);

-- Location: FF_X113_Y44_N13
\Hz2Lane|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[18]~61_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(18));

-- Location: LCCOMB_X113_Y44_N14
\Hz2Lane|s_counter[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[19]~63_combout\ = (\Hz2Lane|s_counter\(19) & (!\Hz2Lane|s_counter[18]~62\)) # (!\Hz2Lane|s_counter\(19) & ((\Hz2Lane|s_counter[18]~62\) # (GND)))
-- \Hz2Lane|s_counter[19]~64\ = CARRY((!\Hz2Lane|s_counter[18]~62\) # (!\Hz2Lane|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(19),
	datad => VCC,
	cin => \Hz2Lane|s_counter[18]~62\,
	combout => \Hz2Lane|s_counter[19]~63_combout\,
	cout => \Hz2Lane|s_counter[19]~64\);

-- Location: FF_X113_Y44_N15
\Hz2Lane|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[19]~63_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(19));

-- Location: LCCOMB_X113_Y44_N16
\Hz2Lane|s_counter[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[20]~65_combout\ = (\Hz2Lane|s_counter\(20) & (\Hz2Lane|s_counter[19]~64\ $ (GND))) # (!\Hz2Lane|s_counter\(20) & (!\Hz2Lane|s_counter[19]~64\ & VCC))
-- \Hz2Lane|s_counter[20]~66\ = CARRY((\Hz2Lane|s_counter\(20) & !\Hz2Lane|s_counter[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(20),
	datad => VCC,
	cin => \Hz2Lane|s_counter[19]~64\,
	combout => \Hz2Lane|s_counter[20]~65_combout\,
	cout => \Hz2Lane|s_counter[20]~66\);

-- Location: FF_X113_Y44_N17
\Hz2Lane|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[20]~65_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(20));

-- Location: LCCOMB_X113_Y44_N18
\Hz2Lane|s_counter[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|s_counter[21]~67_combout\ = (\Hz2Lane|s_counter\(21) & (!\Hz2Lane|s_counter[20]~66\)) # (!\Hz2Lane|s_counter\(21) & ((\Hz2Lane|s_counter[20]~66\) # (GND)))
-- \Hz2Lane|s_counter[21]~68\ = CARRY((!\Hz2Lane|s_counter[20]~66\) # (!\Hz2Lane|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz2Lane|s_counter\(21),
	datad => VCC,
	cin => \Hz2Lane|s_counter[20]~66\,
	combout => \Hz2Lane|s_counter[21]~67_combout\,
	cout => \Hz2Lane|s_counter[21]~68\);

-- Location: FF_X113_Y44_N19
\Hz2Lane|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[21]~67_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(21));

-- Location: FF_X113_Y44_N21
\Hz2Lane|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|s_counter[22]~69_combout\,
	sclr => \Hz2Lane|count_proc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|s_counter\(22));

-- Location: LCCOMB_X113_Y45_N6
\Hz2Lane|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan1~2_combout\ = (((!\Hz2Lane|s_counter\(5) & \Hz2Lane|LessThan1~1_combout\)) # (!\Hz2Lane|s_counter\(10))) # (!\Hz2Lane|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(5),
	datab => \Hz2Lane|LessThan1~1_combout\,
	datac => \Hz2Lane|LessThan0~1_combout\,
	datad => \Hz2Lane|s_counter\(10),
	combout => \Hz2Lane|LessThan1~2_combout\);

-- Location: LCCOMB_X114_Y45_N18
\Hz2Lane|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan1~0_combout\ = (((!\Hz2Lane|s_counter\(16) & !\Hz2Lane|s_counter\(15))) # (!\Hz2Lane|LessThan0~0_combout\)) # (!\Hz2Lane|s_counter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(17),
	datab => \Hz2Lane|s_counter\(16),
	datac => \Hz2Lane|s_counter\(15),
	datad => \Hz2Lane|LessThan0~0_combout\,
	combout => \Hz2Lane|LessThan1~0_combout\);

-- Location: LCCOMB_X114_Y45_N20
\Hz2Lane|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan1~3_combout\ = (\Hz2Lane|LessThan1~0_combout\) # ((!\Hz2Lane|s_counter\(14) & (!\Hz2Lane|s_counter\(16) & \Hz2Lane|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(14),
	datab => \Hz2Lane|s_counter\(16),
	datac => \Hz2Lane|LessThan1~2_combout\,
	datad => \Hz2Lane|LessThan1~0_combout\,
	combout => \Hz2Lane|LessThan1~3_combout\);

-- Location: LCCOMB_X114_Y45_N8
\Hz2Lane|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz2Lane|LessThan1~4_combout\ = (\Hz2Lane|s_counter\(24)) # ((\Hz2Lane|s_counter\(23) & ((\Hz2Lane|s_counter\(22)) # (!\Hz2Lane|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz2Lane|s_counter\(22),
	datab => \Hz2Lane|LessThan1~3_combout\,
	datac => \Hz2Lane|s_counter\(24),
	datad => \Hz2Lane|s_counter\(23),
	combout => \Hz2Lane|LessThan1~4_combout\);

-- Location: FF_X114_Y45_N9
\Hz2Lane|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz2Lane|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz2Lane|blink~q\);

-- Location: CLKCTRL_G8
\Hz2Lane|blink~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Hz2Lane|blink~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Hz2Lane|blink~clkctrl_outclk\);

-- Location: LCCOMB_X108_Y51_N12
\Decrementer|s_Count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decrementer|s_Count[0]~2_combout\ = !\Decrementer|s_Count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decrementer|s_Count\(0),
	combout => \Decrementer|s_Count[0]~2_combout\);

-- Location: FF_X108_Y51_N13
\Decrementer|s_Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz2Lane|blink~clkctrl_outclk\,
	d => \Decrementer|s_Count[0]~2_combout\,
	clrn => \DebounceKEY0|ALT_INV_cleanOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Decrementer|s_Count\(0));

-- Location: LCCOMB_X108_Y51_N18
\Display|binOutput~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~20_combout\ = \Decrementer|s_Count\(1) $ (!\Decrementer|s_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(0),
	combout => \Display|binOutput~20_combout\);

-- Location: FF_X108_Y51_N19
\Decrementer|s_Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz2Lane|blink~clkctrl_outclk\,
	d => \Display|binOutput~20_combout\,
	clrn => \DebounceKEY0|ALT_INV_cleanOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Decrementer|s_Count\(1));

-- Location: LCCOMB_X108_Y51_N2
\Decrementer|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decrementer|Add0~1_combout\ = \Decrementer|s_Count\(2) $ (((!\Decrementer|s_Count\(0) & !\Decrementer|s_Count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datac => \Decrementer|s_Count\(2),
	datad => \Decrementer|s_Count\(1),
	combout => \Decrementer|Add0~1_combout\);

-- Location: FF_X108_Y51_N3
\Decrementer|s_Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz2Lane|blink~clkctrl_outclk\,
	d => \Decrementer|Add0~1_combout\,
	clrn => \DebounceKEY0|ALT_INV_cleanOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Decrementer|s_Count\(2));

-- Location: LCCOMB_X108_Y51_N28
\Decrementer|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decrementer|Add0~0_combout\ = \Decrementer|s_Count\(3) $ (((!\Decrementer|s_Count\(0) & (!\Decrementer|s_Count\(2) & !\Decrementer|s_Count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datab => \Decrementer|s_Count\(2),
	datac => \Decrementer|s_Count\(3),
	datad => \Decrementer|s_Count\(1),
	combout => \Decrementer|Add0~0_combout\);

-- Location: FF_X108_Y51_N29
\Decrementer|s_Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz2Lane|blink~clkctrl_outclk\,
	d => \Decrementer|Add0~0_combout\,
	clrn => \DebounceKEY0|ALT_INV_cleanOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Decrementer|s_Count\(3));

-- Location: LCCOMB_X108_Y50_N4
\Display|binOutput~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~6_combout\ = (\Decrementer|s_Count\(3) & (\Decrementer|s_Count\(0) & (\Decrementer|s_Count\(1) $ (\Decrementer|s_Count\(2))))) # (!\Decrementer|s_Count\(3) & (!\Decrementer|s_Count\(1) & (\Decrementer|s_Count\(0) $ 
-- (\Decrementer|s_Count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(3),
	datab => \Decrementer|s_Count\(0),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(2),
	combout => \Display|binOutput~6_combout\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X110_Y55_N2
\s_Key1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_Key1~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	combout => \s_Key1~0_combout\);

-- Location: FF_X110_Y55_N3
s_Key1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \s_Key1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_Key1~q\);

-- Location: LCCOMB_X111_Y56_N0
\DebounceKEY1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~0_combout\ = \DebounceKEY1|count\(0) $ (VCC)
-- \DebounceKEY1|Add0~1\ = CARRY(\DebounceKEY1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(0),
	datad => VCC,
	combout => \DebounceKEY1|Add0~0_combout\,
	cout => \DebounceKEY1|Add0~1\);

-- Location: LCCOMB_X110_Y56_N16
\DebounceKEY1|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|count~0_combout\ = (\DebounceKEY1|Add0~0_combout\ & ((!\DebounceKEY1|Equal0~4_combout\) # (!\DebounceKEY1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~9_combout\,
	datac => \DebounceKEY1|Add0~0_combout\,
	datad => \DebounceKEY1|Equal0~4_combout\,
	combout => \DebounceKEY1|count~0_combout\);

-- Location: LCCOMB_X110_Y56_N4
\DebounceKEY1|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|state~0_combout\ = (\DebounceKEY1|state~q\ & ((!\DebounceKEY1|Equal0~4_combout\) # (!\DebounceKEY1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~9_combout\,
	datac => \DebounceKEY1|state~q\,
	datad => \DebounceKEY1|Equal0~4_combout\,
	combout => \DebounceKEY1|state~0_combout\);

-- Location: FF_X110_Y56_N5
\DebounceKEY1|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|state~0_combout\,
	asdata => \s_Key1~q\,
	sload => \DebounceKEY1|ALT_INV_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|state~q\);

-- Location: FF_X111_Y56_N17
\DebounceKEY1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DebounceKEY1|count~0_combout\,
	sload => VCC,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(0));

-- Location: LCCOMB_X111_Y56_N2
\DebounceKEY1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~2_combout\ = (\DebounceKEY1|count\(1) & (!\DebounceKEY1|Add0~1\)) # (!\DebounceKEY1|count\(1) & ((\DebounceKEY1|Add0~1\) # (GND)))
-- \DebounceKEY1|Add0~3\ = CARRY((!\DebounceKEY1|Add0~1\) # (!\DebounceKEY1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(1),
	datad => VCC,
	cin => \DebounceKEY1|Add0~1\,
	combout => \DebounceKEY1|Add0~2_combout\,
	cout => \DebounceKEY1|Add0~3\);

-- Location: FF_X111_Y56_N3
\DebounceKEY1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~2_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(1));

-- Location: LCCOMB_X111_Y56_N4
\DebounceKEY1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~4_combout\ = (\DebounceKEY1|count\(2) & (\DebounceKEY1|Add0~3\ $ (GND))) # (!\DebounceKEY1|count\(2) & (!\DebounceKEY1|Add0~3\ & VCC))
-- \DebounceKEY1|Add0~5\ = CARRY((\DebounceKEY1|count\(2) & !\DebounceKEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(2),
	datad => VCC,
	cin => \DebounceKEY1|Add0~3\,
	combout => \DebounceKEY1|Add0~4_combout\,
	cout => \DebounceKEY1|Add0~5\);

-- Location: FF_X111_Y56_N5
\DebounceKEY1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~4_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(2));

-- Location: LCCOMB_X111_Y56_N6
\DebounceKEY1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~6_combout\ = (\DebounceKEY1|count\(3) & (!\DebounceKEY1|Add0~5\)) # (!\DebounceKEY1|count\(3) & ((\DebounceKEY1|Add0~5\) # (GND)))
-- \DebounceKEY1|Add0~7\ = CARRY((!\DebounceKEY1|Add0~5\) # (!\DebounceKEY1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(3),
	datad => VCC,
	cin => \DebounceKEY1|Add0~5\,
	combout => \DebounceKEY1|Add0~6_combout\,
	cout => \DebounceKEY1|Add0~7\);

-- Location: FF_X111_Y56_N7
\DebounceKEY1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~6_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(3));

-- Location: LCCOMB_X111_Y56_N8
\DebounceKEY1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~8_combout\ = (\DebounceKEY1|count\(4) & (\DebounceKEY1|Add0~7\ $ (GND))) # (!\DebounceKEY1|count\(4) & (!\DebounceKEY1|Add0~7\ & VCC))
-- \DebounceKEY1|Add0~9\ = CARRY((\DebounceKEY1|count\(4) & !\DebounceKEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(4),
	datad => VCC,
	cin => \DebounceKEY1|Add0~7\,
	combout => \DebounceKEY1|Add0~8_combout\,
	cout => \DebounceKEY1|Add0~9\);

-- Location: LCCOMB_X110_Y56_N6
\DebounceKEY1|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|count~5_combout\ = (\DebounceKEY1|Add0~8_combout\ & ((!\DebounceKEY1|Equal0~4_combout\) # (!\DebounceKEY1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~9_combout\,
	datac => \DebounceKEY1|Add0~8_combout\,
	datad => \DebounceKEY1|Equal0~4_combout\,
	combout => \DebounceKEY1|count~5_combout\);

-- Location: FF_X111_Y56_N1
\DebounceKEY1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DebounceKEY1|count~5_combout\,
	sload => VCC,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(4));

-- Location: LCCOMB_X111_Y56_N10
\DebounceKEY1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~10_combout\ = (\DebounceKEY1|count\(5) & (!\DebounceKEY1|Add0~9\)) # (!\DebounceKEY1|count\(5) & ((\DebounceKEY1|Add0~9\) # (GND)))
-- \DebounceKEY1|Add0~11\ = CARRY((!\DebounceKEY1|Add0~9\) # (!\DebounceKEY1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(5),
	datad => VCC,
	cin => \DebounceKEY1|Add0~9\,
	combout => \DebounceKEY1|Add0~10_combout\,
	cout => \DebounceKEY1|Add0~11\);

-- Location: FF_X111_Y56_N11
\DebounceKEY1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~10_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(5));

-- Location: LCCOMB_X111_Y56_N12
\DebounceKEY1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~12_combout\ = (\DebounceKEY1|count\(6) & (\DebounceKEY1|Add0~11\ $ (GND))) # (!\DebounceKEY1|count\(6) & (!\DebounceKEY1|Add0~11\ & VCC))
-- \DebounceKEY1|Add0~13\ = CARRY((\DebounceKEY1|count\(6) & !\DebounceKEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(6),
	datad => VCC,
	cin => \DebounceKEY1|Add0~11\,
	combout => \DebounceKEY1|Add0~12_combout\,
	cout => \DebounceKEY1|Add0~13\);

-- Location: FF_X111_Y56_N13
\DebounceKEY1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~12_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(6));

-- Location: LCCOMB_X111_Y56_N14
\DebounceKEY1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~14_combout\ = (\DebounceKEY1|count\(7) & (!\DebounceKEY1|Add0~13\)) # (!\DebounceKEY1|count\(7) & ((\DebounceKEY1|Add0~13\) # (GND)))
-- \DebounceKEY1|Add0~15\ = CARRY((!\DebounceKEY1|Add0~13\) # (!\DebounceKEY1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(7),
	datad => VCC,
	cin => \DebounceKEY1|Add0~13\,
	combout => \DebounceKEY1|Add0~14_combout\,
	cout => \DebounceKEY1|Add0~15\);

-- Location: FF_X111_Y56_N15
\DebounceKEY1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~14_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(7));

-- Location: LCCOMB_X111_Y56_N16
\DebounceKEY1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~16_combout\ = (\DebounceKEY1|count\(8) & (\DebounceKEY1|Add0~15\ $ (GND))) # (!\DebounceKEY1|count\(8) & (!\DebounceKEY1|Add0~15\ & VCC))
-- \DebounceKEY1|Add0~17\ = CARRY((\DebounceKEY1|count\(8) & !\DebounceKEY1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(8),
	datad => VCC,
	cin => \DebounceKEY1|Add0~15\,
	combout => \DebounceKEY1|Add0~16_combout\,
	cout => \DebounceKEY1|Add0~17\);

-- Location: LCCOMB_X110_Y56_N12
\DebounceKEY1|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|count~4_combout\ = (\DebounceKEY1|Add0~16_combout\ & ((!\DebounceKEY1|Equal0~9_combout\) # (!\DebounceKEY1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~4_combout\,
	datac => \DebounceKEY1|Equal0~9_combout\,
	datad => \DebounceKEY1|Add0~16_combout\,
	combout => \DebounceKEY1|count~4_combout\);

-- Location: FF_X110_Y56_N13
\DebounceKEY1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|count~4_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(8));

-- Location: LCCOMB_X111_Y56_N18
\DebounceKEY1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~18_combout\ = (\DebounceKEY1|count\(9) & (!\DebounceKEY1|Add0~17\)) # (!\DebounceKEY1|count\(9) & ((\DebounceKEY1|Add0~17\) # (GND)))
-- \DebounceKEY1|Add0~19\ = CARRY((!\DebounceKEY1|Add0~17\) # (!\DebounceKEY1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(9),
	datad => VCC,
	cin => \DebounceKEY1|Add0~17\,
	combout => \DebounceKEY1|Add0~18_combout\,
	cout => \DebounceKEY1|Add0~19\);

-- Location: LCCOMB_X110_Y56_N24
\DebounceKEY1|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|count~3_combout\ = (\DebounceKEY1|Add0~18_combout\ & ((!\DebounceKEY1|Equal0~9_combout\) # (!\DebounceKEY1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~4_combout\,
	datac => \DebounceKEY1|Equal0~9_combout\,
	datad => \DebounceKEY1|Add0~18_combout\,
	combout => \DebounceKEY1|count~3_combout\);

-- Location: FF_X110_Y56_N25
\DebounceKEY1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|count~3_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(9));

-- Location: LCCOMB_X111_Y56_N20
\DebounceKEY1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~20_combout\ = (\DebounceKEY1|count\(10) & (\DebounceKEY1|Add0~19\ $ (GND))) # (!\DebounceKEY1|count\(10) & (!\DebounceKEY1|Add0~19\ & VCC))
-- \DebounceKEY1|Add0~21\ = CARRY((\DebounceKEY1|count\(10) & !\DebounceKEY1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(10),
	datad => VCC,
	cin => \DebounceKEY1|Add0~19\,
	combout => \DebounceKEY1|Add0~20_combout\,
	cout => \DebounceKEY1|Add0~21\);

-- Location: LCCOMB_X110_Y56_N18
\DebounceKEY1|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|count~2_combout\ = (\DebounceKEY1|Add0~20_combout\ & ((!\DebounceKEY1|Equal0~4_combout\) # (!\DebounceKEY1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~9_combout\,
	datac => \DebounceKEY1|Add0~20_combout\,
	datad => \DebounceKEY1|Equal0~4_combout\,
	combout => \DebounceKEY1|count~2_combout\);

-- Location: FF_X110_Y56_N19
\DebounceKEY1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|count~2_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(10));

-- Location: LCCOMB_X111_Y56_N22
\DebounceKEY1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~22_combout\ = (\DebounceKEY1|count\(11) & (!\DebounceKEY1|Add0~21\)) # (!\DebounceKEY1|count\(11) & ((\DebounceKEY1|Add0~21\) # (GND)))
-- \DebounceKEY1|Add0~23\ = CARRY((!\DebounceKEY1|Add0~21\) # (!\DebounceKEY1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(11),
	datad => VCC,
	cin => \DebounceKEY1|Add0~21\,
	combout => \DebounceKEY1|Add0~22_combout\,
	cout => \DebounceKEY1|Add0~23\);

-- Location: FF_X111_Y56_N23
\DebounceKEY1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~22_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(11));

-- Location: LCCOMB_X111_Y56_N24
\DebounceKEY1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~24_combout\ = (\DebounceKEY1|count\(12) & (\DebounceKEY1|Add0~23\ $ (GND))) # (!\DebounceKEY1|count\(12) & (!\DebounceKEY1|Add0~23\ & VCC))
-- \DebounceKEY1|Add0~25\ = CARRY((\DebounceKEY1|count\(12) & !\DebounceKEY1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(12),
	datad => VCC,
	cin => \DebounceKEY1|Add0~23\,
	combout => \DebounceKEY1|Add0~24_combout\,
	cout => \DebounceKEY1|Add0~25\);

-- Location: FF_X111_Y56_N25
\DebounceKEY1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~24_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(12));

-- Location: LCCOMB_X110_Y56_N10
\DebounceKEY1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~6_combout\ = (\DebounceKEY1|count\(9) & (!\DebounceKEY1|count\(11) & (!\DebounceKEY1|count\(12) & \DebounceKEY1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(9),
	datab => \DebounceKEY1|count\(11),
	datac => \DebounceKEY1|count\(12),
	datad => \DebounceKEY1|count\(10),
	combout => \DebounceKEY1|Equal0~6_combout\);

-- Location: LCCOMB_X110_Y56_N0
\DebounceKEY1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~5_combout\ = (!\DebounceKEY1|count\(15) & (!\DebounceKEY1|count\(14) & (\DebounceKEY1|count\(13) & !\DebounceKEY1|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(15),
	datab => \DebounceKEY1|count\(14),
	datac => \DebounceKEY1|count\(13),
	datad => \DebounceKEY1|count\(16),
	combout => \DebounceKEY1|Equal0~5_combout\);

-- Location: LCCOMB_X110_Y56_N30
\DebounceKEY1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~7_combout\ = (\DebounceKEY1|count\(8) & (!\DebounceKEY1|count\(5) & (!\DebounceKEY1|count\(6) & !\DebounceKEY1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(8),
	datab => \DebounceKEY1|count\(5),
	datac => \DebounceKEY1|count\(6),
	datad => \DebounceKEY1|count\(7),
	combout => \DebounceKEY1|Equal0~7_combout\);

-- Location: LCCOMB_X110_Y56_N28
\DebounceKEY1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~8_combout\ = (!\DebounceKEY1|count\(2) & (!\DebounceKEY1|count\(1) & (\DebounceKEY1|count\(4) & !\DebounceKEY1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(2),
	datab => \DebounceKEY1|count\(1),
	datac => \DebounceKEY1|count\(4),
	datad => \DebounceKEY1|count\(3),
	combout => \DebounceKEY1|Equal0~8_combout\);

-- Location: LCCOMB_X110_Y56_N22
\DebounceKEY1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~9_combout\ = (\DebounceKEY1|Equal0~6_combout\ & (\DebounceKEY1|Equal0~5_combout\ & (\DebounceKEY1|Equal0~7_combout\ & \DebounceKEY1|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~6_combout\,
	datab => \DebounceKEY1|Equal0~5_combout\,
	datac => \DebounceKEY1|Equal0~7_combout\,
	datad => \DebounceKEY1|Equal0~8_combout\,
	combout => \DebounceKEY1|Equal0~9_combout\);

-- Location: LCCOMB_X111_Y56_N26
\DebounceKEY1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~26_combout\ = (\DebounceKEY1|count\(13) & (!\DebounceKEY1|Add0~25\)) # (!\DebounceKEY1|count\(13) & ((\DebounceKEY1|Add0~25\) # (GND)))
-- \DebounceKEY1|Add0~27\ = CARRY((!\DebounceKEY1|Add0~25\) # (!\DebounceKEY1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(13),
	datad => VCC,
	cin => \DebounceKEY1|Add0~25\,
	combout => \DebounceKEY1|Add0~26_combout\,
	cout => \DebounceKEY1|Add0~27\);

-- Location: LCCOMB_X110_Y56_N14
\DebounceKEY1|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|count~1_combout\ = (\DebounceKEY1|Add0~26_combout\ & ((!\DebounceKEY1|Equal0~9_combout\) # (!\DebounceKEY1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~4_combout\,
	datac => \DebounceKEY1|Equal0~9_combout\,
	datad => \DebounceKEY1|Add0~26_combout\,
	combout => \DebounceKEY1|count~1_combout\);

-- Location: FF_X110_Y56_N15
\DebounceKEY1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|count~1_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(13));

-- Location: LCCOMB_X111_Y56_N28
\DebounceKEY1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~28_combout\ = (\DebounceKEY1|count\(14) & (\DebounceKEY1|Add0~27\ $ (GND))) # (!\DebounceKEY1|count\(14) & (!\DebounceKEY1|Add0~27\ & VCC))
-- \DebounceKEY1|Add0~29\ = CARRY((\DebounceKEY1|count\(14) & !\DebounceKEY1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(14),
	datad => VCC,
	cin => \DebounceKEY1|Add0~27\,
	combout => \DebounceKEY1|Add0~28_combout\,
	cout => \DebounceKEY1|Add0~29\);

-- Location: FF_X111_Y56_N29
\DebounceKEY1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~28_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(14));

-- Location: LCCOMB_X111_Y56_N30
\DebounceKEY1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~30_combout\ = (\DebounceKEY1|count\(15) & (!\DebounceKEY1|Add0~29\)) # (!\DebounceKEY1|count\(15) & ((\DebounceKEY1|Add0~29\) # (GND)))
-- \DebounceKEY1|Add0~31\ = CARRY((!\DebounceKEY1|Add0~29\) # (!\DebounceKEY1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(15),
	datad => VCC,
	cin => \DebounceKEY1|Add0~29\,
	combout => \DebounceKEY1|Add0~30_combout\,
	cout => \DebounceKEY1|Add0~31\);

-- Location: FF_X111_Y56_N31
\DebounceKEY1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~30_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(15));

-- Location: LCCOMB_X111_Y55_N0
\DebounceKEY1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~32_combout\ = (\DebounceKEY1|count\(16) & (\DebounceKEY1|Add0~31\ $ (GND))) # (!\DebounceKEY1|count\(16) & (!\DebounceKEY1|Add0~31\ & VCC))
-- \DebounceKEY1|Add0~33\ = CARRY((\DebounceKEY1|count\(16) & !\DebounceKEY1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(16),
	datad => VCC,
	cin => \DebounceKEY1|Add0~31\,
	combout => \DebounceKEY1|Add0~32_combout\,
	cout => \DebounceKEY1|Add0~33\);

-- Location: FF_X111_Y55_N1
\DebounceKEY1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~32_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(16));

-- Location: LCCOMB_X111_Y55_N2
\DebounceKEY1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~34_combout\ = (\DebounceKEY1|count\(17) & (!\DebounceKEY1|Add0~33\)) # (!\DebounceKEY1|count\(17) & ((\DebounceKEY1|Add0~33\) # (GND)))
-- \DebounceKEY1|Add0~35\ = CARRY((!\DebounceKEY1|Add0~33\) # (!\DebounceKEY1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(17),
	datad => VCC,
	cin => \DebounceKEY1|Add0~33\,
	combout => \DebounceKEY1|Add0~34_combout\,
	cout => \DebounceKEY1|Add0~35\);

-- Location: FF_X111_Y55_N3
\DebounceKEY1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~34_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(17));

-- Location: LCCOMB_X111_Y55_N4
\DebounceKEY1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~36_combout\ = (\DebounceKEY1|count\(18) & (\DebounceKEY1|Add0~35\ $ (GND))) # (!\DebounceKEY1|count\(18) & (!\DebounceKEY1|Add0~35\ & VCC))
-- \DebounceKEY1|Add0~37\ = CARRY((\DebounceKEY1|count\(18) & !\DebounceKEY1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(18),
	datad => VCC,
	cin => \DebounceKEY1|Add0~35\,
	combout => \DebounceKEY1|Add0~36_combout\,
	cout => \DebounceKEY1|Add0~37\);

-- Location: FF_X111_Y55_N5
\DebounceKEY1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~36_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(18));

-- Location: LCCOMB_X111_Y55_N6
\DebounceKEY1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~38_combout\ = (\DebounceKEY1|count\(19) & (!\DebounceKEY1|Add0~37\)) # (!\DebounceKEY1|count\(19) & ((\DebounceKEY1|Add0~37\) # (GND)))
-- \DebounceKEY1|Add0~39\ = CARRY((!\DebounceKEY1|Add0~37\) # (!\DebounceKEY1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(19),
	datad => VCC,
	cin => \DebounceKEY1|Add0~37\,
	combout => \DebounceKEY1|Add0~38_combout\,
	cout => \DebounceKEY1|Add0~39\);

-- Location: FF_X111_Y55_N7
\DebounceKEY1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~38_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(19));

-- Location: LCCOMB_X111_Y55_N8
\DebounceKEY1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~40_combout\ = (\DebounceKEY1|count\(20) & (\DebounceKEY1|Add0~39\ $ (GND))) # (!\DebounceKEY1|count\(20) & (!\DebounceKEY1|Add0~39\ & VCC))
-- \DebounceKEY1|Add0~41\ = CARRY((\DebounceKEY1|count\(20) & !\DebounceKEY1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(20),
	datad => VCC,
	cin => \DebounceKEY1|Add0~39\,
	combout => \DebounceKEY1|Add0~40_combout\,
	cout => \DebounceKEY1|Add0~41\);

-- Location: FF_X111_Y55_N9
\DebounceKEY1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~40_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(20));

-- Location: LCCOMB_X111_Y55_N10
\DebounceKEY1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~42_combout\ = (\DebounceKEY1|count\(21) & (!\DebounceKEY1|Add0~41\)) # (!\DebounceKEY1|count\(21) & ((\DebounceKEY1|Add0~41\) # (GND)))
-- \DebounceKEY1|Add0~43\ = CARRY((!\DebounceKEY1|Add0~41\) # (!\DebounceKEY1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(21),
	datad => VCC,
	cin => \DebounceKEY1|Add0~41\,
	combout => \DebounceKEY1|Add0~42_combout\,
	cout => \DebounceKEY1|Add0~43\);

-- Location: FF_X111_Y55_N11
\DebounceKEY1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~42_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(21));

-- Location: LCCOMB_X111_Y55_N12
\DebounceKEY1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~44_combout\ = (\DebounceKEY1|count\(22) & (\DebounceKEY1|Add0~43\ $ (GND))) # (!\DebounceKEY1|count\(22) & (!\DebounceKEY1|Add0~43\ & VCC))
-- \DebounceKEY1|Add0~45\ = CARRY((\DebounceKEY1|count\(22) & !\DebounceKEY1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(22),
	datad => VCC,
	cin => \DebounceKEY1|Add0~43\,
	combout => \DebounceKEY1|Add0~44_combout\,
	cout => \DebounceKEY1|Add0~45\);

-- Location: FF_X111_Y55_N13
\DebounceKEY1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~44_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(22));

-- Location: LCCOMB_X111_Y55_N14
\DebounceKEY1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~46_combout\ = (\DebounceKEY1|count\(23) & (!\DebounceKEY1|Add0~45\)) # (!\DebounceKEY1|count\(23) & ((\DebounceKEY1|Add0~45\) # (GND)))
-- \DebounceKEY1|Add0~47\ = CARRY((!\DebounceKEY1|Add0~45\) # (!\DebounceKEY1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(23),
	datad => VCC,
	cin => \DebounceKEY1|Add0~45\,
	combout => \DebounceKEY1|Add0~46_combout\,
	cout => \DebounceKEY1|Add0~47\);

-- Location: FF_X111_Y55_N15
\DebounceKEY1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~46_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(23));

-- Location: LCCOMB_X111_Y55_N16
\DebounceKEY1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~48_combout\ = (\DebounceKEY1|count\(24) & (\DebounceKEY1|Add0~47\ $ (GND))) # (!\DebounceKEY1|count\(24) & (!\DebounceKEY1|Add0~47\ & VCC))
-- \DebounceKEY1|Add0~49\ = CARRY((\DebounceKEY1|count\(24) & !\DebounceKEY1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(24),
	datad => VCC,
	cin => \DebounceKEY1|Add0~47\,
	combout => \DebounceKEY1|Add0~48_combout\,
	cout => \DebounceKEY1|Add0~49\);

-- Location: FF_X111_Y55_N17
\DebounceKEY1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~48_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(24));

-- Location: LCCOMB_X111_Y55_N18
\DebounceKEY1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~50_combout\ = (\DebounceKEY1|count\(25) & (!\DebounceKEY1|Add0~49\)) # (!\DebounceKEY1|count\(25) & ((\DebounceKEY1|Add0~49\) # (GND)))
-- \DebounceKEY1|Add0~51\ = CARRY((!\DebounceKEY1|Add0~49\) # (!\DebounceKEY1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(25),
	datad => VCC,
	cin => \DebounceKEY1|Add0~49\,
	combout => \DebounceKEY1|Add0~50_combout\,
	cout => \DebounceKEY1|Add0~51\);

-- Location: FF_X111_Y55_N19
\DebounceKEY1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~50_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(25));

-- Location: LCCOMB_X111_Y55_N20
\DebounceKEY1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~52_combout\ = (\DebounceKEY1|count\(26) & (\DebounceKEY1|Add0~51\ $ (GND))) # (!\DebounceKEY1|count\(26) & (!\DebounceKEY1|Add0~51\ & VCC))
-- \DebounceKEY1|Add0~53\ = CARRY((\DebounceKEY1|count\(26) & !\DebounceKEY1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(26),
	datad => VCC,
	cin => \DebounceKEY1|Add0~51\,
	combout => \DebounceKEY1|Add0~52_combout\,
	cout => \DebounceKEY1|Add0~53\);

-- Location: FF_X111_Y55_N21
\DebounceKEY1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~52_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(26));

-- Location: LCCOMB_X111_Y55_N22
\DebounceKEY1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~54_combout\ = (\DebounceKEY1|count\(27) & (!\DebounceKEY1|Add0~53\)) # (!\DebounceKEY1|count\(27) & ((\DebounceKEY1|Add0~53\) # (GND)))
-- \DebounceKEY1|Add0~55\ = CARRY((!\DebounceKEY1|Add0~53\) # (!\DebounceKEY1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(27),
	datad => VCC,
	cin => \DebounceKEY1|Add0~53\,
	combout => \DebounceKEY1|Add0~54_combout\,
	cout => \DebounceKEY1|Add0~55\);

-- Location: FF_X111_Y55_N23
\DebounceKEY1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~54_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(27));

-- Location: LCCOMB_X111_Y55_N24
\DebounceKEY1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~56_combout\ = (\DebounceKEY1|count\(28) & (\DebounceKEY1|Add0~55\ $ (GND))) # (!\DebounceKEY1|count\(28) & (!\DebounceKEY1|Add0~55\ & VCC))
-- \DebounceKEY1|Add0~57\ = CARRY((\DebounceKEY1|count\(28) & !\DebounceKEY1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(28),
	datad => VCC,
	cin => \DebounceKEY1|Add0~55\,
	combout => \DebounceKEY1|Add0~56_combout\,
	cout => \DebounceKEY1|Add0~57\);

-- Location: FF_X111_Y55_N25
\DebounceKEY1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~56_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(28));

-- Location: LCCOMB_X110_Y55_N12
\DebounceKEY1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~1_combout\ = (!\DebounceKEY1|count\(26) & (!\DebounceKEY1|count\(27) & (!\DebounceKEY1|count\(28) & !\DebounceKEY1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(26),
	datab => \DebounceKEY1|count\(27),
	datac => \DebounceKEY1|count\(28),
	datad => \DebounceKEY1|count\(25),
	combout => \DebounceKEY1|Equal0~1_combout\);

-- Location: LCCOMB_X110_Y55_N28
\DebounceKEY1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~3_combout\ = (!\DebounceKEY1|count\(17) & (!\DebounceKEY1|count\(20) & (!\DebounceKEY1|count\(18) & !\DebounceKEY1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(17),
	datab => \DebounceKEY1|count\(20),
	datac => \DebounceKEY1|count\(18),
	datad => \DebounceKEY1|count\(19),
	combout => \DebounceKEY1|Equal0~3_combout\);

-- Location: LCCOMB_X110_Y55_N8
\DebounceKEY1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~2_combout\ = (!\DebounceKEY1|count\(22) & (!\DebounceKEY1|count\(23) & (!\DebounceKEY1|count\(21) & !\DebounceKEY1|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(22),
	datab => \DebounceKEY1|count\(23),
	datac => \DebounceKEY1|count\(21),
	datad => \DebounceKEY1|count\(24),
	combout => \DebounceKEY1|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y55_N26
\DebounceKEY1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~58_combout\ = (\DebounceKEY1|count\(29) & (!\DebounceKEY1|Add0~57\)) # (!\DebounceKEY1|count\(29) & ((\DebounceKEY1|Add0~57\) # (GND)))
-- \DebounceKEY1|Add0~59\ = CARRY((!\DebounceKEY1|Add0~57\) # (!\DebounceKEY1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(29),
	datad => VCC,
	cin => \DebounceKEY1|Add0~57\,
	combout => \DebounceKEY1|Add0~58_combout\,
	cout => \DebounceKEY1|Add0~59\);

-- Location: FF_X111_Y55_N27
\DebounceKEY1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~58_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(29));

-- Location: LCCOMB_X111_Y55_N28
\DebounceKEY1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~60_combout\ = (\DebounceKEY1|count\(30) & (\DebounceKEY1|Add0~59\ $ (GND))) # (!\DebounceKEY1|count\(30) & (!\DebounceKEY1|Add0~59\ & VCC))
-- \DebounceKEY1|Add0~61\ = CARRY((\DebounceKEY1|count\(30) & !\DebounceKEY1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|count\(30),
	datad => VCC,
	cin => \DebounceKEY1|Add0~59\,
	combout => \DebounceKEY1|Add0~60_combout\,
	cout => \DebounceKEY1|Add0~61\);

-- Location: FF_X111_Y55_N29
\DebounceKEY1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~60_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(30));

-- Location: LCCOMB_X111_Y55_N30
\DebounceKEY1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~62_combout\ = \DebounceKEY1|count\(31) $ (\DebounceKEY1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(31),
	cin => \DebounceKEY1|Add0~61\,
	combout => \DebounceKEY1|Add0~62_combout\);

-- Location: FF_X111_Y55_N31
\DebounceKEY1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|Add0~62_combout\,
	ena => \DebounceKEY1|state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|count\(31));

-- Location: LCCOMB_X110_Y55_N18
\DebounceKEY1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~0_combout\ = (!\DebounceKEY1|count\(31) & (!\DebounceKEY1|count\(29) & (!\DebounceKEY1|count\(30) & !\DebounceKEY1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|count\(31),
	datab => \DebounceKEY1|count\(29),
	datac => \DebounceKEY1|count\(30),
	datad => \DebounceKEY1|count\(0),
	combout => \DebounceKEY1|Equal0~0_combout\);

-- Location: LCCOMB_X110_Y55_N14
\DebounceKEY1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Equal0~4_combout\ = (\DebounceKEY1|Equal0~1_combout\ & (\DebounceKEY1|Equal0~3_combout\ & (\DebounceKEY1|Equal0~2_combout\ & \DebounceKEY1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|Equal0~1_combout\,
	datab => \DebounceKEY1|Equal0~3_combout\,
	datac => \DebounceKEY1|Equal0~2_combout\,
	datad => \DebounceKEY1|Equal0~0_combout\,
	combout => \DebounceKEY1|Equal0~4_combout\);

-- Location: LCCOMB_X110_Y55_N6
\DebounceKEY1|cleanOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|cleanOut~0_combout\ = (\DebounceKEY1|cleanOut~q\) # ((\s_Key1~q\ & (\DebounceKEY1|Equal0~4_combout\ & \DebounceKEY1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_Key1~q\,
	datab => \DebounceKEY1|cleanOut~q\,
	datac => \DebounceKEY1|Equal0~4_combout\,
	datad => \DebounceKEY1|Equal0~9_combout\,
	combout => \DebounceKEY1|cleanOut~0_combout\);

-- Location: FF_X110_Y55_N21
\DebounceKEY1|cleanOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DebounceKEY1|cleanOut~0_combout\,
	sclr => \DebounceKEY1|ALT_INV_state~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|cleanOut~q\);

-- Location: LCCOMB_X109_Y51_N6
\s_NormalBlink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_NormalBlink~0_combout\ = !\s_NormalBlink~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_NormalBlink~q\,
	combout => \s_NormalBlink~0_combout\);

-- Location: FF_X109_Y51_N7
s_NormalBlink : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DebounceKEY1|ALT_INV_cleanOut~q\,
	d => \s_NormalBlink~0_combout\,
	clrn => \DebounceKEY0|ALT_INV_cleanOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_NormalBlink~q\);

-- Location: LCCOMB_X108_Y50_N12
\Display|binOutput~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~21_combout\ = (\Display|binOutput~6_combout\) # ((!\Hz1Lane|blink~q\ & !\s_NormalBlink~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|blink~q\,
	datab => \Display|binOutput~6_combout\,
	datad => \s_NormalBlink~q\,
	combout => \Display|binOutput~21_combout\);

-- Location: LCCOMB_X108_Y50_N22
\s_DisplayEnable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_DisplayEnable~0_combout\ = (\Hz1Lane|blink~q\) # (\s_NormalBlink~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|blink~q\,
	datad => \s_NormalBlink~q\,
	combout => \s_DisplayEnable~0_combout\);

-- Location: LCCOMB_X108_Y51_N4
\Display|binOutput~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~7_combout\ = (\Decrementer|s_Count\(2) & ((\Decrementer|s_Count\(0) & (\Decrementer|s_Count\(1) $ (!\Decrementer|s_Count\(3)))) # (!\Decrementer|s_Count\(0) & ((\Decrementer|s_Count\(1)) # (\Decrementer|s_Count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datab => \Decrementer|s_Count\(2),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(3),
	combout => \Display|binOutput~7_combout\);

-- Location: LCCOMB_X108_Y51_N10
\Display|binOutput~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~8_combout\ = (!\Decrementer|s_Count\(2) & (\Decrementer|s_Count\(1) & \Decrementer|s_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decrementer|s_Count\(2),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(3),
	combout => \Display|binOutput~8_combout\);

-- Location: LCCOMB_X108_Y51_N20
\Display|binOutput~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~9_combout\ = ((\Display|binOutput~7_combout\) # ((\Decrementer|s_Count\(0) & \Display|binOutput~8_combout\))) # (!\s_DisplayEnable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datab => \s_DisplayEnable~0_combout\,
	datac => \Display|binOutput~7_combout\,
	datad => \Display|binOutput~8_combout\,
	combout => \Display|binOutput~9_combout\);

-- Location: LCCOMB_X108_Y50_N24
\Display|binOutput~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~10_combout\ = (\Decrementer|s_Count\(3) & (\Decrementer|s_Count\(2) & ((\Decrementer|s_Count\(1)) # (!\Decrementer|s_Count\(0))))) # (!\Decrementer|s_Count\(3) & (!\Decrementer|s_Count\(0) & (\Decrementer|s_Count\(1) & 
-- !\Decrementer|s_Count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(3),
	datab => \Decrementer|s_Count\(0),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(2),
	combout => \Display|binOutput~10_combout\);

-- Location: LCCOMB_X108_Y50_N28
\Display|binOutput~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~22_combout\ = (\Display|binOutput~10_combout\) # ((!\Hz1Lane|blink~q\ & !\s_NormalBlink~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|blink~q\,
	datab => \Display|binOutput~10_combout\,
	datad => \s_NormalBlink~q\,
	combout => \Display|binOutput~22_combout\);

-- Location: LCCOMB_X108_Y51_N6
\Display|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|Equal13~0_combout\ = (\Decrementer|s_Count\(0) & (\Decrementer|s_Count\(2) & (\Decrementer|s_Count\(1) & \Decrementer|s_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datab => \Decrementer|s_Count\(2),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(3),
	combout => \Display|Equal13~0_combout\);

-- Location: LCCOMB_X108_Y51_N24
\Display|binOutput[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput[3]~11_combout\ = (!\Decrementer|s_Count\(3) & (\Decrementer|s_Count\(1) $ (((!\Decrementer|s_Count\(2)) # (!\Decrementer|s_Count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datab => \Decrementer|s_Count\(2),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(3),
	combout => \Display|binOutput[3]~11_combout\);

-- Location: LCCOMB_X108_Y51_N14
\Display|binOutput[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput[3]~12_combout\ = ((\Display|binOutput[3]~11_combout\) # ((\Display|binOutput~8_combout\ & !\Decrementer|s_Count\(0)))) # (!\s_DisplayEnable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display|binOutput~8_combout\,
	datab => \s_DisplayEnable~0_combout\,
	datac => \Decrementer|s_Count\(0),
	datad => \Display|binOutput[3]~11_combout\,
	combout => \Display|binOutput[3]~12_combout\);

-- Location: LCCOMB_X108_Y51_N16
\Display|binOutput[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput[6]~13_combout\ = (\Decrementer|s_Count\(0) & (\Decrementer|s_Count\(2) & (\Decrementer|s_Count\(1) & \Decrementer|s_Count\(3)))) # (!\Decrementer|s_Count\(0) & (!\Decrementer|s_Count\(2) & (!\Decrementer|s_Count\(1) & 
-- !\Decrementer|s_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datab => \Decrementer|s_Count\(2),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(3),
	combout => \Display|binOutput[6]~13_combout\);

-- Location: LCCOMB_X108_Y51_N30
\Display|binOutput[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput[3]~14_combout\ = (\s_DisplayEnable~0_combout\ & ((\Display|binOutput[6]~13_combout\ & (\Display|Equal13~0_combout\)) # (!\Display|binOutput[6]~13_combout\ & ((\Display|binOutput[3]~12_combout\))))) # (!\s_DisplayEnable~0_combout\ & 
-- (((\Display|binOutput[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display|Equal13~0_combout\,
	datab => \s_DisplayEnable~0_combout\,
	datac => \Display|binOutput[3]~12_combout\,
	datad => \Display|binOutput[6]~13_combout\,
	combout => \Display|binOutput[3]~14_combout\);

-- Location: LCCOMB_X108_Y50_N26
\Display|binOutput~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~15_combout\ = (\Decrementer|s_Count\(1) & (!\Decrementer|s_Count\(3) & (\Decrementer|s_Count\(0)))) # (!\Decrementer|s_Count\(1) & ((\Decrementer|s_Count\(2) & (!\Decrementer|s_Count\(3))) # (!\Decrementer|s_Count\(2) & 
-- ((\Decrementer|s_Count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(3),
	datab => \Decrementer|s_Count\(0),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(2),
	combout => \Display|binOutput~15_combout\);

-- Location: LCCOMB_X108_Y50_N14
\Display|binOutput~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~23_combout\ = (\Display|binOutput~15_combout\) # ((!\Hz1Lane|blink~q\ & !\s_NormalBlink~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|blink~q\,
	datab => \Display|binOutput~15_combout\,
	datad => \s_NormalBlink~q\,
	combout => \Display|binOutput~23_combout\);

-- Location: LCCOMB_X108_Y51_N8
\Display|binOutput~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~16_combout\ = (\Decrementer|s_Count\(1) & (!\Decrementer|s_Count\(2) & !\Decrementer|s_Count\(0))) # (!\Decrementer|s_Count\(1) & (\Decrementer|s_Count\(2) & \Decrementer|s_Count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(1),
	datab => \Decrementer|s_Count\(2),
	datad => \Decrementer|s_Count\(0),
	combout => \Display|binOutput~16_combout\);

-- Location: LCCOMB_X108_Y51_N26
\Display|binOutput~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput~17_combout\ = ((\Display|binOutput~16_combout\ & (\Decrementer|s_Count\(0) $ (!\Decrementer|s_Count\(3)))) # (!\Display|binOutput~16_combout\ & (\Decrementer|s_Count\(0) & !\Decrementer|s_Count\(3)))) # (!\s_DisplayEnable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display|binOutput~16_combout\,
	datab => \s_DisplayEnable~0_combout\,
	datac => \Decrementer|s_Count\(0),
	datad => \Decrementer|s_Count\(3),
	combout => \Display|binOutput~17_combout\);

-- Location: LCCOMB_X108_Y51_N0
\Display|binOutput[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput[6]~18_combout\ = (\Decrementer|s_Count\(0) & (!\Decrementer|s_Count\(3) & (\Decrementer|s_Count\(2) $ (!\Decrementer|s_Count\(1))))) # (!\Decrementer|s_Count\(0) & (\Decrementer|s_Count\(2) & (!\Decrementer|s_Count\(1) & 
-- \Decrementer|s_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decrementer|s_Count\(0),
	datab => \Decrementer|s_Count\(2),
	datac => \Decrementer|s_Count\(1),
	datad => \Decrementer|s_Count\(3),
	combout => \Display|binOutput[6]~18_combout\);

-- Location: LCCOMB_X108_Y51_N22
\Display|binOutput[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display|binOutput[6]~19_combout\ = ((\Display|binOutput[6]~13_combout\ & (!\Display|Equal13~0_combout\)) # (!\Display|binOutput[6]~13_combout\ & ((\Display|binOutput[6]~18_combout\)))) # (!\s_DisplayEnable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display|Equal13~0_combout\,
	datab => \Display|binOutput[6]~13_combout\,
	datac => \Display|binOutput[6]~18_combout\,
	datad => \s_DisplayEnable~0_combout\,
	combout => \Display|binOutput[6]~19_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


