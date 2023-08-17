-- Copyright (C) 2022  Intel Corporation. All rights reserved.
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
-- VERSION "Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition"

-- DATE "08/15/2023 12:04:05"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	ShiftReg6Bits IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(0 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END ShiftReg6Bits;

-- Design Ports Information
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftReg6Bits IS
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
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Hz1Lane|blink~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \DebounceKEY1|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_dirtyIn~q\ : std_logic;
SIGNAL \DebounceKEY1|s_previousIn~q\ : std_logic;
SIGNAL \DebounceKEY1|Add0~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[16]~3_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~1\ : std_logic;
SIGNAL \DebounceKEY1|Add0~2_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~3\ : std_logic;
SIGNAL \DebounceKEY1|Add0~4_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~5\ : std_logic;
SIGNAL \DebounceKEY1|Add0~6_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~7\ : std_logic;
SIGNAL \DebounceKEY1|Add0~8_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~9\ : std_logic;
SIGNAL \DebounceKEY1|Add0~11\ : std_logic;
SIGNAL \DebounceKEY1|Add0~12_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~31\ : std_logic;
SIGNAL \DebounceKEY1|Add0~32_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~33\ : std_logic;
SIGNAL \DebounceKEY1|Add0~34_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~35\ : std_logic;
SIGNAL \DebounceKEY1|Add0~36_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~37\ : std_logic;
SIGNAL \DebounceKEY1|Add0~38_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~39\ : std_logic;
SIGNAL \DebounceKEY1|Add0~40_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~41\ : std_logic;
SIGNAL \DebounceKEY1|Add0~42_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \DebounceKEY1|LessThan0~4_combout\ : std_logic;
SIGNAL \DebounceKEY1|LessThan0~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|LessThan0~1_combout\ : std_logic;
SIGNAL \DebounceKEY1|LessThan0~2_combout\ : std_logic;
SIGNAL \DebounceKEY1|LessThan0~3_combout\ : std_logic;
SIGNAL \DebounceKEY1|LessThan0~5_combout\ : std_logic;
SIGNAL \DebounceKEY1|LessThan0~6_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[16]~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~13\ : std_logic;
SIGNAL \DebounceKEY1|Add0~14_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~15\ : std_logic;
SIGNAL \DebounceKEY1|Add0~16_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~17\ : std_logic;
SIGNAL \DebounceKEY1|Add0~18_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~19\ : std_logic;
SIGNAL \DebounceKEY1|Add0~20_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~21\ : std_logic;
SIGNAL \DebounceKEY1|Add0~22_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~23\ : std_logic;
SIGNAL \DebounceKEY1|Add0~24_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~25\ : std_logic;
SIGNAL \DebounceKEY1|Add0~26_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~27\ : std_logic;
SIGNAL \DebounceKEY1|Add0~28_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~29\ : std_logic;
SIGNAL \DebounceKEY1|Add0~30_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[16]~2_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~43\ : std_logic;
SIGNAL \DebounceKEY1|Add0~44_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt[16]~4_combout\ : std_logic;
SIGNAL \DebounceKEY1|Add0~10_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_pulsedOut~q\ : std_logic;
SIGNAL \s_Mode~0_combout\ : std_logic;
SIGNAL \s_Mode~q\ : std_logic;
SIGNAL \Hz1Lane|s_counter[0]~26_combout\ : std_logic;
SIGNAL \Hz1Lane|s_counter[24]~75\ : std_logic;
SIGNAL \Hz1Lane|s_counter[25]~76_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \DebounceKEY0|s_dirtyIn~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_dirtyIn~q\ : std_logic;
SIGNAL \DebounceKEY0|s_previousIn~q\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[18]~3_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~41\ : std_logic;
SIGNAL \DebounceKEY0|Add0~42_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[21]~9_combout\ : std_logic;
SIGNAL \DebounceKEY0|LessThan0~4_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~11\ : std_logic;
SIGNAL \DebounceKEY0|Add0~12_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~13\ : std_logic;
SIGNAL \DebounceKEY0|Add0~14_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~15\ : std_logic;
SIGNAL \DebounceKEY0|Add0~16_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~17\ : std_logic;
SIGNAL \DebounceKEY0|Add0~18_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~19\ : std_logic;
SIGNAL \DebounceKEY0|Add0~20_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~21\ : std_logic;
SIGNAL \DebounceKEY0|Add0~22_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~23\ : std_logic;
SIGNAL \DebounceKEY0|Add0~24_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~10_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~25\ : std_logic;
SIGNAL \DebounceKEY0|Add0~26_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \DebounceKEY0|LessThan0~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|LessThan0~1_combout\ : std_logic;
SIGNAL \DebounceKEY0|LessThan0~2_combout\ : std_logic;
SIGNAL \DebounceKEY0|LessThan0~3_combout\ : std_logic;
SIGNAL \DebounceKEY0|LessThan0~5_combout\ : std_logic;
SIGNAL \DebounceKEY0|LessThan0~6_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[18]~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~27\ : std_logic;
SIGNAL \DebounceKEY0|Add0~28_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~29\ : std_logic;
SIGNAL \DebounceKEY0|Add0~30_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~31\ : std_logic;
SIGNAL \DebounceKEY0|Add0~32_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~33\ : std_logic;
SIGNAL \DebounceKEY0|Add0~34_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~35\ : std_logic;
SIGNAL \DebounceKEY0|Add0~36_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~37\ : std_logic;
SIGNAL \DebounceKEY0|Add0~38_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~39\ : std_logic;
SIGNAL \DebounceKEY0|Add0~40_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[20]~8_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~43\ : std_logic;
SIGNAL \DebounceKEY0|Add0~44_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~1\ : std_logic;
SIGNAL \DebounceKEY0|Add0~2_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~3\ : std_logic;
SIGNAL \DebounceKEY0|Add0~4_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~5\ : std_logic;
SIGNAL \DebounceKEY0|Add0~6_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~7\ : std_logic;
SIGNAL \DebounceKEY0|Add0~8_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \DebounceKEY0|Add0~9\ : std_logic;
SIGNAL \DebounceKEY0|Add0~10_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \DebounceKEY0|s_pulsedOut~q\ : std_logic;
SIGNAL \Hz1Lane|count_proc~0_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~1_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~1_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~2_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~3_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~4_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~5_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~6_combout\ : std_logic;
SIGNAL \Hz1Lane|count_proc~7_combout\ : std_logic;
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
SIGNAL \Hz1Lane|s_counter[23]~73\ : std_logic;
SIGNAL \Hz1Lane|s_counter[24]~74_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~0_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~2_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~3_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~4_combout\ : std_logic;
SIGNAL \Hz1Lane|LessThan1~5_combout\ : std_logic;
SIGNAL \Hz1Lane|blink~q\ : std_logic;
SIGNAL \Hz1Lane|blink~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \s_Swi0~q\ : std_logic;
SIGNAL \ShiftReg|s_ShiftReg[1]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_ShiftReg[2]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_ShiftReg[3]~feeder_combout\ : std_logic;
SIGNAL \ShiftReg|s_ShiftReg[4]~feeder_combout\ : std_logic;
SIGNAL \Display5|binOutput~11_combout\ : std_logic;
SIGNAL \Display5|binOutput~13_combout\ : std_logic;
SIGNAL \ShiftReg|s_ShiftReg[5]~feeder_combout\ : std_logic;
SIGNAL \Display5|binOutput[3]~12_combout\ : std_logic;
SIGNAL \Display5|binOutput~14_combout\ : std_logic;
SIGNAL \Display5|binOutput~15_combout\ : std_logic;
SIGNAL \Display5|binOutput[1]~16_combout\ : std_logic;
SIGNAL \Display5|binOutput[1]~17_combout\ : std_logic;
SIGNAL \Display5|binOutput~6_combout\ : std_logic;
SIGNAL \Display5|binOutput~28_combout\ : std_logic;
SIGNAL \Display5|binOutput[3]~19_combout\ : std_logic;
SIGNAL \Display5|binOutput[3]~18_combout\ : std_logic;
SIGNAL \Display5|binOutput[3]~20_combout\ : std_logic;
SIGNAL \Display5|binOutput[4]~21_combout\ : std_logic;
SIGNAL \Display5|binOutput[6]~22_combout\ : std_logic;
SIGNAL \Display5|binOutput[4]~23_combout\ : std_logic;
SIGNAL \Display5|binOutput~24_combout\ : std_logic;
SIGNAL \Display5|binOutput~27_combout\ : std_logic;
SIGNAL \Display5|binOutput[6]~25_combout\ : std_logic;
SIGNAL \Display5|binOutput[6]~26_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ : std_logic;
SIGNAL \Display4|binOutput~0_combout\ : std_logic;
SIGNAL \Display4|binOutput~1_combout\ : std_logic;
SIGNAL \Display4|binOutput~3_combout\ : std_logic;
SIGNAL \Display4|binOutput~2_combout\ : std_logic;
SIGNAL \Display4|binOutput~4_combout\ : std_logic;
SIGNAL \Display4|binOutput~5_combout\ : std_logic;
SIGNAL \Display4|binOutput~6_combout\ : std_logic;
SIGNAL \Display4|Equal0~0_combout\ : std_logic;
SIGNAL \Display4|binOutput[3]~7_combout\ : std_logic;
SIGNAL \Display4|binOutput[6]~10_combout\ : std_logic;
SIGNAL \Display4|binOutput[6]~11_combout\ : std_logic;
SIGNAL \Display4|binOutput[3]~8_combout\ : std_logic;
SIGNAL \Display4|binOutput[3]~9_combout\ : std_logic;
SIGNAL \Display4|binOutput[3]~12_combout\ : std_logic;
SIGNAL \Display4|binOutput~13_combout\ : std_logic;
SIGNAL \Display4|binOutput~14_combout\ : std_logic;
SIGNAL \Display4|binOutput~15_combout\ : std_logic;
SIGNAL \Display4|binOutput~16_combout\ : std_logic;
SIGNAL \Display4|binOutput[6]~17_combout\ : std_logic;
SIGNAL \Display4|binOutput[6]~18_combout\ : std_logic;
SIGNAL \LEDG~0_combout\ : std_logic;
SIGNAL \LEDG~1_combout\ : std_logic;
SIGNAL \LEDG~2_combout\ : std_logic;
SIGNAL \LEDG~3_combout\ : std_logic;
SIGNAL \LEDG~4_combout\ : std_logic;
SIGNAL \LEDG~5_combout\ : std_logic;
SIGNAL \DebounceKEY1|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \ShiftReg|s_ShiftReg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \DebounceKEY0|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \Hz1Lane|s_counter\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \DebounceKEY0|ALT_INV_s_pulsedOut~q\ : std_logic;
SIGNAL \DebounceKEY1|ALT_INV_s_pulsedOut~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\Hz1Lane|blink~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Hz1Lane|blink~q\);
\DebounceKEY0|ALT_INV_s_pulsedOut~q\ <= NOT \DebounceKEY0|s_pulsedOut~q\;
\DebounceKEY1|ALT_INV_s_pulsedOut~q\ <= NOT \DebounceKEY1|s_pulsedOut~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|binOutput~15_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|binOutput[1]~17_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|binOutput~28_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|binOutput[3]~20_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|binOutput[4]~23_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|binOutput~27_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display5|binOutput[6]~26_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|binOutput~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|binOutput~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|binOutput~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|binOutput[3]~12_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|binOutput~14_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|binOutput~16_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Display4|binOutput[6]~18_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~2_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~3_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~4_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG~5_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

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

-- Location: LCCOMB_X100_Y8_N22
\DebounceKEY1|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_dirtyIn~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY[1]~input_o\,
	combout => \DebounceKEY1|s_dirtyIn~0_combout\);

-- Location: FF_X100_Y8_N23
\DebounceKEY1|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_dirtyIn~q\);

-- Location: FF_X100_Y8_N29
\DebounceKEY1|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DebounceKEY1|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_previousIn~q\);

-- Location: LCCOMB_X97_Y9_N10
\DebounceKEY1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~0_combout\ = \DebounceKEY1|s_debounceCnt\(0) $ (VCC)
-- \DebounceKEY1|Add0~1\ = CARRY(\DebounceKEY1|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(0),
	datad => VCC,
	combout => \DebounceKEY1|Add0~0_combout\,
	cout => \DebounceKEY1|Add0~1\);

-- Location: LCCOMB_X98_Y8_N0
\DebounceKEY1|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~24_combout\ = (\DebounceKEY1|Add0~0_combout\ & \DebounceKEY1|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|Add0~0_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt~24_combout\);

-- Location: LCCOMB_X100_Y8_N14
\DebounceKEY1|s_debounceCnt[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[16]~3_combout\ = ((\DebounceKEY1|s_debounceCnt\(22)) # ((\DebounceKEY1|s_debounceCnt[16]~2_combout\) # (!\DebounceKEY1|s_dirtyIn~q\))) # (!\DebounceKEY1|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_previousIn~q\,
	datab => \DebounceKEY1|s_debounceCnt\(22),
	datac => \DebounceKEY1|s_dirtyIn~q\,
	datad => \DebounceKEY1|s_debounceCnt[16]~2_combout\,
	combout => \DebounceKEY1|s_debounceCnt[16]~3_combout\);

-- Location: FF_X98_Y8_N1
\DebounceKEY1|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~24_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(0));

-- Location: LCCOMB_X97_Y9_N12
\DebounceKEY1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~2_combout\ = (\DebounceKEY1|s_debounceCnt\(1) & (\DebounceKEY1|Add0~1\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(1) & (!\DebounceKEY1|Add0~1\))
-- \DebounceKEY1|Add0~3\ = CARRY((!\DebounceKEY1|s_debounceCnt\(1) & !\DebounceKEY1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(1),
	datad => VCC,
	cin => \DebounceKEY1|Add0~1\,
	combout => \DebounceKEY1|Add0~2_combout\,
	cout => \DebounceKEY1|Add0~3\);

-- Location: LCCOMB_X98_Y8_N14
\DebounceKEY1|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~20_combout\ = (\DebounceKEY1|Add0~2_combout\ & \DebounceKEY1|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|Add0~2_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt~20_combout\);

-- Location: FF_X98_Y8_N15
\DebounceKEY1|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~20_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(1));

-- Location: LCCOMB_X97_Y9_N14
\DebounceKEY1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~4_combout\ = (\DebounceKEY1|s_debounceCnt\(2) & ((GND) # (!\DebounceKEY1|Add0~3\))) # (!\DebounceKEY1|s_debounceCnt\(2) & (\DebounceKEY1|Add0~3\ $ (GND)))
-- \DebounceKEY1|Add0~5\ = CARRY((\DebounceKEY1|s_debounceCnt\(2)) # (!\DebounceKEY1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(2),
	datad => VCC,
	cin => \DebounceKEY1|Add0~3\,
	combout => \DebounceKEY1|Add0~4_combout\,
	cout => \DebounceKEY1|Add0~5\);

-- Location: LCCOMB_X98_Y8_N8
\DebounceKEY1|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~21_combout\ = (\DebounceKEY1|Add0~4_combout\ & \DebounceKEY1|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|Add0~4_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt~21_combout\);

-- Location: FF_X98_Y8_N9
\DebounceKEY1|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~21_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(2));

-- Location: LCCOMB_X97_Y9_N16
\DebounceKEY1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~6_combout\ = (\DebounceKEY1|s_debounceCnt\(3) & (\DebounceKEY1|Add0~5\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(3) & (!\DebounceKEY1|Add0~5\))
-- \DebounceKEY1|Add0~7\ = CARRY((!\DebounceKEY1|s_debounceCnt\(3) & !\DebounceKEY1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(3),
	datad => VCC,
	cin => \DebounceKEY1|Add0~5\,
	combout => \DebounceKEY1|Add0~6_combout\,
	cout => \DebounceKEY1|Add0~7\);

-- Location: LCCOMB_X98_Y8_N2
\DebounceKEY1|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~22_combout\ = (\DebounceKEY1|Add0~6_combout\ & \DebounceKEY1|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|Add0~6_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt~22_combout\);

-- Location: FF_X98_Y8_N3
\DebounceKEY1|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~22_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(3));

-- Location: LCCOMB_X97_Y9_N18
\DebounceKEY1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~8_combout\ = (\DebounceKEY1|s_debounceCnt\(4) & ((GND) # (!\DebounceKEY1|Add0~7\))) # (!\DebounceKEY1|s_debounceCnt\(4) & (\DebounceKEY1|Add0~7\ $ (GND)))
-- \DebounceKEY1|Add0~9\ = CARRY((\DebounceKEY1|s_debounceCnt\(4)) # (!\DebounceKEY1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(4),
	datad => VCC,
	cin => \DebounceKEY1|Add0~7\,
	combout => \DebounceKEY1|Add0~8_combout\,
	cout => \DebounceKEY1|Add0~9\);

-- Location: LCCOMB_X98_Y8_N28
\DebounceKEY1|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~23_combout\ = (\DebounceKEY1|Add0~8_combout\ & \DebounceKEY1|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|Add0~8_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt~23_combout\);

-- Location: FF_X98_Y8_N29
\DebounceKEY1|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~23_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(4));

-- Location: LCCOMB_X98_Y8_N10
\DebounceKEY1|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~5_combout\ = (!\DebounceKEY1|s_debounceCnt\(4) & (!\DebounceKEY1|s_debounceCnt\(1) & (!\DebounceKEY1|s_debounceCnt\(2) & !\DebounceKEY1|s_debounceCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(4),
	datab => \DebounceKEY1|s_debounceCnt\(1),
	datac => \DebounceKEY1|s_debounceCnt\(2),
	datad => \DebounceKEY1|s_debounceCnt\(3),
	combout => \DebounceKEY1|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X97_Y9_N20
\DebounceKEY1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~10_combout\ = (\DebounceKEY1|s_debounceCnt\(5) & (\DebounceKEY1|Add0~9\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(5) & (!\DebounceKEY1|Add0~9\))
-- \DebounceKEY1|Add0~11\ = CARRY((!\DebounceKEY1|s_debounceCnt\(5) & !\DebounceKEY1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(5),
	datad => VCC,
	cin => \DebounceKEY1|Add0~9\,
	combout => \DebounceKEY1|Add0~10_combout\,
	cout => \DebounceKEY1|Add0~11\);

-- Location: LCCOMB_X97_Y9_N22
\DebounceKEY1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~12_combout\ = (\DebounceKEY1|s_debounceCnt\(6) & ((GND) # (!\DebounceKEY1|Add0~11\))) # (!\DebounceKEY1|s_debounceCnt\(6) & (\DebounceKEY1|Add0~11\ $ (GND)))
-- \DebounceKEY1|Add0~13\ = CARRY((\DebounceKEY1|s_debounceCnt\(6)) # (!\DebounceKEY1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(6),
	datad => VCC,
	cin => \DebounceKEY1|Add0~11\,
	combout => \DebounceKEY1|Add0~12_combout\,
	cout => \DebounceKEY1|Add0~13\);

-- Location: LCCOMB_X97_Y8_N8
\DebounceKEY1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~30_combout\ = (\DebounceKEY1|s_debounceCnt\(15) & (\DebounceKEY1|Add0~29\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(15) & (!\DebounceKEY1|Add0~29\))
-- \DebounceKEY1|Add0~31\ = CARRY((!\DebounceKEY1|s_debounceCnt\(15) & !\DebounceKEY1|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(15),
	datad => VCC,
	cin => \DebounceKEY1|Add0~29\,
	combout => \DebounceKEY1|Add0~30_combout\,
	cout => \DebounceKEY1|Add0~31\);

-- Location: LCCOMB_X97_Y8_N10
\DebounceKEY1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~32_combout\ = (\DebounceKEY1|s_debounceCnt\(16) & ((GND) # (!\DebounceKEY1|Add0~31\))) # (!\DebounceKEY1|s_debounceCnt\(16) & (\DebounceKEY1|Add0~31\ $ (GND)))
-- \DebounceKEY1|Add0~33\ = CARRY((\DebounceKEY1|s_debounceCnt\(16)) # (!\DebounceKEY1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(16),
	datad => VCC,
	cin => \DebounceKEY1|Add0~31\,
	combout => \DebounceKEY1|Add0~32_combout\,
	cout => \DebounceKEY1|Add0~33\);

-- Location: LCCOMB_X99_Y8_N4
\DebounceKEY1|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~6_combout\ = (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datad => \DebounceKEY1|Add0~32_combout\,
	combout => \DebounceKEY1|s_debounceCnt~6_combout\);

-- Location: FF_X99_Y8_N5
\DebounceKEY1|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~6_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(16));

-- Location: LCCOMB_X97_Y8_N12
\DebounceKEY1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~34_combout\ = (\DebounceKEY1|s_debounceCnt\(17) & (\DebounceKEY1|Add0~33\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(17) & (!\DebounceKEY1|Add0~33\))
-- \DebounceKEY1|Add0~35\ = CARRY((!\DebounceKEY1|s_debounceCnt\(17) & !\DebounceKEY1|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(17),
	datad => VCC,
	cin => \DebounceKEY1|Add0~33\,
	combout => \DebounceKEY1|Add0~34_combout\,
	cout => \DebounceKEY1|Add0~35\);

-- Location: LCCOMB_X99_Y8_N10
\DebounceKEY1|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~7_combout\ = (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datad => \DebounceKEY1|Add0~34_combout\,
	combout => \DebounceKEY1|s_debounceCnt~7_combout\);

-- Location: FF_X99_Y8_N11
\DebounceKEY1|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~7_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(17));

-- Location: LCCOMB_X97_Y8_N14
\DebounceKEY1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~36_combout\ = (\DebounceKEY1|s_debounceCnt\(18) & ((GND) # (!\DebounceKEY1|Add0~35\))) # (!\DebounceKEY1|s_debounceCnt\(18) & (\DebounceKEY1|Add0~35\ $ (GND)))
-- \DebounceKEY1|Add0~37\ = CARRY((\DebounceKEY1|s_debounceCnt\(18)) # (!\DebounceKEY1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(18),
	datad => VCC,
	cin => \DebounceKEY1|Add0~35\,
	combout => \DebounceKEY1|Add0~36_combout\,
	cout => \DebounceKEY1|Add0~37\);

-- Location: LCCOMB_X100_Y8_N0
\DebounceKEY1|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[18]~18_combout\ = (\DebounceKEY1|s_debounceCnt[16]~3_combout\ & (\DebounceKEY1|s_debounceCnt[16]~0_combout\ & ((\DebounceKEY1|Add0~36_combout\) # (!\DebounceKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_previousIn~q\,
	datab => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	datac => \DebounceKEY1|Add0~36_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~0_combout\,
	combout => \DebounceKEY1|s_debounceCnt[18]~18_combout\);

-- Location: FF_X100_Y8_N1
\DebounceKEY1|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(18));

-- Location: LCCOMB_X97_Y8_N16
\DebounceKEY1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~38_combout\ = (\DebounceKEY1|s_debounceCnt\(19) & (\DebounceKEY1|Add0~37\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(19) & (!\DebounceKEY1|Add0~37\))
-- \DebounceKEY1|Add0~39\ = CARRY((!\DebounceKEY1|s_debounceCnt\(19) & !\DebounceKEY1|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(19),
	datad => VCC,
	cin => \DebounceKEY1|Add0~37\,
	combout => \DebounceKEY1|Add0~38_combout\,
	cout => \DebounceKEY1|Add0~39\);

-- Location: LCCOMB_X100_Y8_N26
\DebounceKEY1|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[19]~19_combout\ = (\DebounceKEY1|s_debounceCnt[16]~3_combout\ & (\DebounceKEY1|s_debounceCnt[16]~0_combout\ & ((\DebounceKEY1|Add0~38_combout\) # (!\DebounceKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_previousIn~q\,
	datab => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	datac => \DebounceKEY1|Add0~38_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~0_combout\,
	combout => \DebounceKEY1|s_debounceCnt[19]~19_combout\);

-- Location: FF_X100_Y8_N27
\DebounceKEY1|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(19));

-- Location: LCCOMB_X97_Y8_N18
\DebounceKEY1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~40_combout\ = (\DebounceKEY1|s_debounceCnt\(20) & ((GND) # (!\DebounceKEY1|Add0~39\))) # (!\DebounceKEY1|s_debounceCnt\(20) & (\DebounceKEY1|Add0~39\ $ (GND)))
-- \DebounceKEY1|Add0~41\ = CARRY((\DebounceKEY1|s_debounceCnt\(20)) # (!\DebounceKEY1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(20),
	datad => VCC,
	cin => \DebounceKEY1|Add0~39\,
	combout => \DebounceKEY1|Add0~40_combout\,
	cout => \DebounceKEY1|Add0~41\);

-- Location: LCCOMB_X100_Y8_N30
\DebounceKEY1|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[20]~8_combout\ = (\DebounceKEY1|s_debounceCnt[16]~3_combout\ & (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	datac => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datad => \DebounceKEY1|Add0~40_combout\,
	combout => \DebounceKEY1|s_debounceCnt[20]~8_combout\);

-- Location: FF_X100_Y8_N31
\DebounceKEY1|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(20));

-- Location: LCCOMB_X97_Y8_N20
\DebounceKEY1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~42_combout\ = (\DebounceKEY1|s_debounceCnt\(21) & (\DebounceKEY1|Add0~41\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(21) & (!\DebounceKEY1|Add0~41\))
-- \DebounceKEY1|Add0~43\ = CARRY((!\DebounceKEY1|s_debounceCnt\(21) & !\DebounceKEY1|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(21),
	datad => VCC,
	cin => \DebounceKEY1|Add0~41\,
	combout => \DebounceKEY1|Add0~42_combout\,
	cout => \DebounceKEY1|Add0~43\);

-- Location: LCCOMB_X99_Y8_N16
\DebounceKEY1|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[21]~9_combout\ = (\DebounceKEY1|s_debounceCnt[16]~3_combout\ & (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	datac => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datad => \DebounceKEY1|Add0~42_combout\,
	combout => \DebounceKEY1|s_debounceCnt[21]~9_combout\);

-- Location: FF_X99_Y8_N17
\DebounceKEY1|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(21));

-- Location: LCCOMB_X100_Y8_N28
\DebounceKEY1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|LessThan0~4_combout\ = (\DebounceKEY1|s_debounceCnt\(15)) # ((\DebounceKEY1|s_debounceCnt\(16)) # (\DebounceKEY1|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(15),
	datab => \DebounceKEY1|s_debounceCnt\(16),
	datad => \DebounceKEY1|s_debounceCnt\(17),
	combout => \DebounceKEY1|LessThan0~4_combout\);

-- Location: LCCOMB_X98_Y8_N6
\DebounceKEY1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|LessThan0~0_combout\ = (\DebounceKEY1|s_debounceCnt\(6) & ((\DebounceKEY1|s_debounceCnt\(5)) # ((\DebounceKEY1|s_debounceCnt\(0)) # (!\DebounceKEY1|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(5),
	datab => \DebounceKEY1|s_debounceCnt\(0),
	datac => \DebounceKEY1|s_debounceCnt\(6),
	datad => \DebounceKEY1|s_pulsedOut~5_combout\,
	combout => \DebounceKEY1|LessThan0~0_combout\);

-- Location: LCCOMB_X98_Y8_N20
\DebounceKEY1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|LessThan0~1_combout\ = (\DebounceKEY1|s_debounceCnt\(9) & ((\DebounceKEY1|s_debounceCnt\(7)) # (\DebounceKEY1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(9),
	datab => \DebounceKEY1|s_debounceCnt\(7),
	datad => \DebounceKEY1|LessThan0~0_combout\,
	combout => \DebounceKEY1|LessThan0~1_combout\);

-- Location: LCCOMB_X99_Y8_N20
\DebounceKEY1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|LessThan0~2_combout\ = (\DebounceKEY1|s_debounceCnt\(11) & ((\DebounceKEY1|s_debounceCnt\(10)) # ((\DebounceKEY1|s_debounceCnt\(8) & \DebounceKEY1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(8),
	datab => \DebounceKEY1|s_debounceCnt\(10),
	datac => \DebounceKEY1|s_debounceCnt\(11),
	datad => \DebounceKEY1|LessThan0~1_combout\,
	combout => \DebounceKEY1|LessThan0~2_combout\);

-- Location: LCCOMB_X99_Y8_N6
\DebounceKEY1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|LessThan0~3_combout\ = (\DebounceKEY1|s_debounceCnt\(14) & ((\DebounceKEY1|s_debounceCnt\(12)) # ((\DebounceKEY1|s_debounceCnt\(13)) # (\DebounceKEY1|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(12),
	datab => \DebounceKEY1|s_debounceCnt\(13),
	datac => \DebounceKEY1|s_debounceCnt\(14),
	datad => \DebounceKEY1|LessThan0~2_combout\,
	combout => \DebounceKEY1|LessThan0~3_combout\);

-- Location: LCCOMB_X99_Y8_N12
\DebounceKEY1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|LessThan0~5_combout\ = (\DebounceKEY1|s_debounceCnt\(19) & ((\DebounceKEY1|LessThan0~4_combout\) # (\DebounceKEY1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(19),
	datac => \DebounceKEY1|LessThan0~4_combout\,
	datad => \DebounceKEY1|LessThan0~3_combout\,
	combout => \DebounceKEY1|LessThan0~5_combout\);

-- Location: LCCOMB_X99_Y8_N18
\DebounceKEY1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|LessThan0~6_combout\ = (\DebounceKEY1|s_debounceCnt\(20)) # ((\DebounceKEY1|s_debounceCnt\(21)) # ((\DebounceKEY1|s_debounceCnt\(18) & \DebounceKEY1|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(20),
	datab => \DebounceKEY1|s_debounceCnt\(21),
	datac => \DebounceKEY1|s_debounceCnt\(18),
	datad => \DebounceKEY1|LessThan0~5_combout\,
	combout => \DebounceKEY1|LessThan0~6_combout\);

-- Location: LCCOMB_X99_Y8_N28
\DebounceKEY1|s_debounceCnt[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[16]~0_combout\ = (\DebounceKEY1|s_dirtyIn~q\ & ((!\DebounceKEY1|LessThan0~6_combout\) # (!\DebounceKEY1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(22),
	datab => \DebounceKEY1|s_dirtyIn~q\,
	datad => \DebounceKEY1|LessThan0~6_combout\,
	combout => \DebounceKEY1|s_debounceCnt[16]~0_combout\);

-- Location: LCCOMB_X98_Y8_N4
\DebounceKEY1|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~1_combout\ = (\DebounceKEY1|s_debounceCnt[16]~0_combout\ & ((\DebounceKEY1|Add0~12_combout\) # (!\DebounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|Add0~12_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~0_combout\,
	combout => \DebounceKEY1|s_debounceCnt~1_combout\);

-- Location: FF_X98_Y8_N5
\DebounceKEY1|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~1_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(6));

-- Location: LCCOMB_X97_Y9_N24
\DebounceKEY1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~14_combout\ = (\DebounceKEY1|s_debounceCnt\(7) & (\DebounceKEY1|Add0~13\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(7) & (!\DebounceKEY1|Add0~13\))
-- \DebounceKEY1|Add0~15\ = CARRY((!\DebounceKEY1|s_debounceCnt\(7) & !\DebounceKEY1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(7),
	datad => VCC,
	cin => \DebounceKEY1|Add0~13\,
	combout => \DebounceKEY1|Add0~14_combout\,
	cout => \DebounceKEY1|Add0~15\);

-- Location: LCCOMB_X98_Y8_N18
\DebounceKEY1|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~12_combout\ = (\DebounceKEY1|Add0~14_combout\ & \DebounceKEY1|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|Add0~14_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt~12_combout\);

-- Location: FF_X98_Y8_N19
\DebounceKEY1|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~12_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(7));

-- Location: LCCOMB_X97_Y9_N26
\DebounceKEY1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~16_combout\ = (\DebounceKEY1|s_debounceCnt\(8) & ((GND) # (!\DebounceKEY1|Add0~15\))) # (!\DebounceKEY1|s_debounceCnt\(8) & (\DebounceKEY1|Add0~15\ $ (GND)))
-- \DebounceKEY1|Add0~17\ = CARRY((\DebounceKEY1|s_debounceCnt\(8)) # (!\DebounceKEY1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(8),
	datad => VCC,
	cin => \DebounceKEY1|Add0~15\,
	combout => \DebounceKEY1|Add0~16_combout\,
	cout => \DebounceKEY1|Add0~17\);

-- Location: LCCOMB_X99_Y8_N2
\DebounceKEY1|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~13_combout\ = (\DebounceKEY1|s_debounceCnt[16]~0_combout\ & ((\DebounceKEY1|Add0~16_combout\) # (!\DebounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|Add0~16_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~0_combout\,
	combout => \DebounceKEY1|s_debounceCnt~13_combout\);

-- Location: FF_X99_Y8_N3
\DebounceKEY1|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~13_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(8));

-- Location: LCCOMB_X97_Y9_N28
\DebounceKEY1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~18_combout\ = (\DebounceKEY1|s_debounceCnt\(9) & (\DebounceKEY1|Add0~17\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(9) & (!\DebounceKEY1|Add0~17\))
-- \DebounceKEY1|Add0~19\ = CARRY((!\DebounceKEY1|s_debounceCnt\(9) & !\DebounceKEY1|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(9),
	datad => VCC,
	cin => \DebounceKEY1|Add0~17\,
	combout => \DebounceKEY1|Add0~18_combout\,
	cout => \DebounceKEY1|Add0~19\);

-- Location: LCCOMB_X98_Y8_N12
\DebounceKEY1|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~14_combout\ = (\DebounceKEY1|s_debounceCnt[16]~0_combout\ & ((\DebounceKEY1|Add0~18_combout\) # (!\DebounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|Add0~18_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~0_combout\,
	combout => \DebounceKEY1|s_debounceCnt~14_combout\);

-- Location: FF_X98_Y8_N13
\DebounceKEY1|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~14_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(9));

-- Location: LCCOMB_X97_Y9_N30
\DebounceKEY1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~20_combout\ = (\DebounceKEY1|s_debounceCnt\(10) & ((GND) # (!\DebounceKEY1|Add0~19\))) # (!\DebounceKEY1|s_debounceCnt\(10) & (\DebounceKEY1|Add0~19\ $ (GND)))
-- \DebounceKEY1|Add0~21\ = CARRY((\DebounceKEY1|s_debounceCnt\(10)) # (!\DebounceKEY1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(10),
	datad => VCC,
	cin => \DebounceKEY1|Add0~19\,
	combout => \DebounceKEY1|Add0~20_combout\,
	cout => \DebounceKEY1|Add0~21\);

-- Location: LCCOMB_X99_Y8_N0
\DebounceKEY1|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~15_combout\ = (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datad => \DebounceKEY1|Add0~20_combout\,
	combout => \DebounceKEY1|s_debounceCnt~15_combout\);

-- Location: FF_X99_Y8_N1
\DebounceKEY1|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~15_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(10));

-- Location: LCCOMB_X97_Y8_N0
\DebounceKEY1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~22_combout\ = (\DebounceKEY1|s_debounceCnt\(11) & (\DebounceKEY1|Add0~21\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(11) & (!\DebounceKEY1|Add0~21\))
-- \DebounceKEY1|Add0~23\ = CARRY((!\DebounceKEY1|s_debounceCnt\(11) & !\DebounceKEY1|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(11),
	datad => VCC,
	cin => \DebounceKEY1|Add0~21\,
	combout => \DebounceKEY1|Add0~22_combout\,
	cout => \DebounceKEY1|Add0~23\);

-- Location: LCCOMB_X99_Y8_N14
\DebounceKEY1|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~16_combout\ = (\DebounceKEY1|s_debounceCnt[16]~0_combout\ & ((\DebounceKEY1|Add0~22_combout\) # (!\DebounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|Add0~22_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~0_combout\,
	combout => \DebounceKEY1|s_debounceCnt~16_combout\);

-- Location: FF_X99_Y8_N15
\DebounceKEY1|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~16_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(11));

-- Location: LCCOMB_X97_Y8_N2
\DebounceKEY1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~24_combout\ = (\DebounceKEY1|s_debounceCnt\(12) & ((GND) # (!\DebounceKEY1|Add0~23\))) # (!\DebounceKEY1|s_debounceCnt\(12) & (\DebounceKEY1|Add0~23\ $ (GND)))
-- \DebounceKEY1|Add0~25\ = CARRY((\DebounceKEY1|s_debounceCnt\(12)) # (!\DebounceKEY1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(12),
	datad => VCC,
	cin => \DebounceKEY1|Add0~23\,
	combout => \DebounceKEY1|Add0~24_combout\,
	cout => \DebounceKEY1|Add0~25\);

-- Location: LCCOMB_X99_Y8_N22
\DebounceKEY1|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~10_combout\ = (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datac => \DebounceKEY1|Add0~24_combout\,
	combout => \DebounceKEY1|s_debounceCnt~10_combout\);

-- Location: FF_X99_Y8_N23
\DebounceKEY1|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~10_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(12));

-- Location: LCCOMB_X97_Y8_N4
\DebounceKEY1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~26_combout\ = (\DebounceKEY1|s_debounceCnt\(13) & (\DebounceKEY1|Add0~25\ & VCC)) # (!\DebounceKEY1|s_debounceCnt\(13) & (!\DebounceKEY1|Add0~25\))
-- \DebounceKEY1|Add0~27\ = CARRY((!\DebounceKEY1|s_debounceCnt\(13) & !\DebounceKEY1|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_debounceCnt\(13),
	datad => VCC,
	cin => \DebounceKEY1|Add0~25\,
	combout => \DebounceKEY1|Add0~26_combout\,
	cout => \DebounceKEY1|Add0~27\);

-- Location: LCCOMB_X99_Y8_N24
\DebounceKEY1|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~11_combout\ = (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datad => \DebounceKEY1|Add0~26_combout\,
	combout => \DebounceKEY1|s_debounceCnt~11_combout\);

-- Location: FF_X99_Y8_N25
\DebounceKEY1|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~11_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y8_N6
\DebounceKEY1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~28_combout\ = (\DebounceKEY1|s_debounceCnt\(14) & ((GND) # (!\DebounceKEY1|Add0~27\))) # (!\DebounceKEY1|s_debounceCnt\(14) & (\DebounceKEY1|Add0~27\ $ (GND)))
-- \DebounceKEY1|Add0~29\ = CARRY((\DebounceKEY1|s_debounceCnt\(14)) # (!\DebounceKEY1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(14),
	datad => VCC,
	cin => \DebounceKEY1|Add0~27\,
	combout => \DebounceKEY1|Add0~28_combout\,
	cout => \DebounceKEY1|Add0~29\);

-- Location: LCCOMB_X99_Y8_N8
\DebounceKEY1|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~17_combout\ = (\DebounceKEY1|s_debounceCnt[16]~0_combout\ & ((\DebounceKEY1|Add0~28_combout\) # (!\DebounceKEY1|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|Add0~28_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~0_combout\,
	combout => \DebounceKEY1|s_debounceCnt~17_combout\);

-- Location: FF_X99_Y8_N9
\DebounceKEY1|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~17_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(14));

-- Location: LCCOMB_X97_Y8_N24
\DebounceKEY1|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~5_combout\ = (\DebounceKEY1|Add0~30_combout\ & \DebounceKEY1|s_debounceCnt[16]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|Add0~30_combout\,
	datad => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt~5_combout\);

-- Location: FF_X97_Y8_N25
\DebounceKEY1|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~5_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(15));

-- Location: LCCOMB_X100_Y8_N12
\DebounceKEY1|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~0_combout\ = (!\DebounceKEY1|s_debounceCnt\(15) & (!\DebounceKEY1|s_debounceCnt\(16) & (!\DebounceKEY1|s_debounceCnt\(6) & !\DebounceKEY1|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(15),
	datab => \DebounceKEY1|s_debounceCnt\(16),
	datac => \DebounceKEY1|s_debounceCnt\(6),
	datad => \DebounceKEY1|s_debounceCnt\(17),
	combout => \DebounceKEY1|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X100_Y8_N24
\DebounceKEY1|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~1_combout\ = (!\DebounceKEY1|s_debounceCnt\(21) & (!\DebounceKEY1|s_debounceCnt\(12) & (!\DebounceKEY1|s_debounceCnt\(20) & !\DebounceKEY1|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(21),
	datab => \DebounceKEY1|s_debounceCnt\(12),
	datac => \DebounceKEY1|s_debounceCnt\(20),
	datad => \DebounceKEY1|s_debounceCnt\(13),
	combout => \DebounceKEY1|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X100_Y8_N4
\DebounceKEY1|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~3_combout\ = (!\DebounceKEY1|s_debounceCnt\(11) & (!\DebounceKEY1|s_debounceCnt\(18) & (!\DebounceKEY1|s_debounceCnt\(19) & !\DebounceKEY1|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(11),
	datab => \DebounceKEY1|s_debounceCnt\(18),
	datac => \DebounceKEY1|s_debounceCnt\(19),
	datad => \DebounceKEY1|s_debounceCnt\(14),
	combout => \DebounceKEY1|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X100_Y8_N10
\DebounceKEY1|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~2_combout\ = (!\DebounceKEY1|s_debounceCnt\(10) & (!\DebounceKEY1|s_debounceCnt\(8) & (!\DebounceKEY1|s_debounceCnt\(9) & !\DebounceKEY1|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(10),
	datab => \DebounceKEY1|s_debounceCnt\(8),
	datac => \DebounceKEY1|s_debounceCnt\(9),
	datad => \DebounceKEY1|s_debounceCnt\(7),
	combout => \DebounceKEY1|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X100_Y8_N18
\DebounceKEY1|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~4_combout\ = (\DebounceKEY1|s_pulsedOut~0_combout\ & (\DebounceKEY1|s_pulsedOut~1_combout\ & (\DebounceKEY1|s_pulsedOut~3_combout\ & \DebounceKEY1|s_pulsedOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_pulsedOut~0_combout\,
	datab => \DebounceKEY1|s_pulsedOut~1_combout\,
	datac => \DebounceKEY1|s_pulsedOut~3_combout\,
	datad => \DebounceKEY1|s_pulsedOut~2_combout\,
	combout => \DebounceKEY1|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X100_Y8_N20
\DebounceKEY1|s_debounceCnt[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[16]~2_combout\ = (\DebounceKEY1|s_debounceCnt\(0)) # ((\DebounceKEY1|s_debounceCnt\(5)) # ((!\DebounceKEY1|s_pulsedOut~4_combout\) # (!\DebounceKEY1|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(0),
	datab => \DebounceKEY1|s_debounceCnt\(5),
	datac => \DebounceKEY1|s_pulsedOut~5_combout\,
	datad => \DebounceKEY1|s_pulsedOut~4_combout\,
	combout => \DebounceKEY1|s_debounceCnt[16]~2_combout\);

-- Location: LCCOMB_X100_Y8_N8
\DebounceKEY1|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[22]~25_combout\ = (\DebounceKEY1|s_debounceCnt\(22) & (((!\DebounceKEY1|LessThan0~6_combout\)))) # (!\DebounceKEY1|s_debounceCnt\(22) & ((\DebounceKEY1|s_debounceCnt[16]~2_combout\) # ((!\DebounceKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(22),
	datab => \DebounceKEY1|s_debounceCnt[16]~2_combout\,
	datac => \DebounceKEY1|s_previousIn~q\,
	datad => \DebounceKEY1|LessThan0~6_combout\,
	combout => \DebounceKEY1|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X97_Y8_N22
\DebounceKEY1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|Add0~44_combout\ = \DebounceKEY1|Add0~43\ $ (\DebounceKEY1|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DebounceKEY1|s_debounceCnt\(22),
	cin => \DebounceKEY1|Add0~43\,
	combout => \DebounceKEY1|Add0~44_combout\);

-- Location: LCCOMB_X100_Y8_N16
\DebounceKEY1|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[22]~26_combout\ = (\DebounceKEY1|s_dirtyIn~q\ & (\DebounceKEY1|s_debounceCnt[22]~25_combout\ & ((\DebounceKEY1|Add0~44_combout\) # (!\DebounceKEY1|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_dirtyIn~q\,
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|s_debounceCnt[22]~25_combout\,
	datad => \DebounceKEY1|Add0~44_combout\,
	combout => \DebounceKEY1|s_debounceCnt[22]~26_combout\);

-- Location: FF_X100_Y8_N17
\DebounceKEY1|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(22));

-- Location: LCCOMB_X99_Y8_N26
\DebounceKEY1|s_debounceCnt[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt[16]~4_combout\ = (\DebounceKEY1|s_previousIn~q\ & (\DebounceKEY1|s_dirtyIn~q\ & ((!\DebounceKEY1|LessThan0~6_combout\) # (!\DebounceKEY1|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(22),
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|s_dirtyIn~q\,
	datad => \DebounceKEY1|LessThan0~6_combout\,
	combout => \DebounceKEY1|s_debounceCnt[16]~4_combout\);

-- Location: LCCOMB_X99_Y8_N30
\DebounceKEY1|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_debounceCnt~27_combout\ = (\DebounceKEY1|s_debounceCnt[16]~4_combout\ & \DebounceKEY1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY1|s_debounceCnt[16]~4_combout\,
	datad => \DebounceKEY1|Add0~10_combout\,
	combout => \DebounceKEY1|s_debounceCnt~27_combout\);

-- Location: FF_X99_Y8_N31
\DebounceKEY1|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_debounceCnt~27_combout\,
	ena => \DebounceKEY1|s_debounceCnt[16]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_debounceCnt\(5));

-- Location: LCCOMB_X100_Y8_N6
\DebounceKEY1|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~6_combout\ = (\DebounceKEY1|s_debounceCnt\(0) & (\DebounceKEY1|s_previousIn~q\ & (\DebounceKEY1|s_dirtyIn~q\ & !\DebounceKEY1|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(0),
	datab => \DebounceKEY1|s_previousIn~q\,
	datac => \DebounceKEY1|s_dirtyIn~q\,
	datad => \DebounceKEY1|s_debounceCnt\(22),
	combout => \DebounceKEY1|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X96_Y8_N20
\DebounceKEY1|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY1|s_pulsedOut~7_combout\ = (!\DebounceKEY1|s_debounceCnt\(5) & (\DebounceKEY1|s_pulsedOut~5_combout\ & (\DebounceKEY1|s_pulsedOut~4_combout\ & \DebounceKEY1|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY1|s_debounceCnt\(5),
	datab => \DebounceKEY1|s_pulsedOut~5_combout\,
	datac => \DebounceKEY1|s_pulsedOut~4_combout\,
	datad => \DebounceKEY1|s_pulsedOut~6_combout\,
	combout => \DebounceKEY1|s_pulsedOut~7_combout\);

-- Location: FF_X96_Y8_N21
\DebounceKEY1|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY1|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY1|s_pulsedOut~q\);

-- Location: LCCOMB_X96_Y8_N0
\s_Mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_Mode~0_combout\ = !\s_Mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_Mode~q\,
	combout => \s_Mode~0_combout\);

-- Location: FF_X96_Y8_N1
s_Mode : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DebounceKEY1|ALT_INV_s_pulsedOut~q\,
	d => \s_Mode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_Mode~q\);

-- Location: LCCOMB_X74_Y15_N6
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

-- Location: LCCOMB_X74_Y14_N22
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

-- Location: LCCOMB_X74_Y14_N24
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

-- Location: FF_X74_Y14_N25
\Hz1Lane|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[25]~76_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(25));

-- Location: LCCOMB_X96_Y37_N10
\DebounceKEY0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~0_combout\ = \DebounceKEY0|s_debounceCnt\(0) $ (VCC)
-- \DebounceKEY0|Add0~1\ = CARRY(\DebounceKEY0|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(0),
	datad => VCC,
	combout => \DebounceKEY0|Add0~0_combout\,
	cout => \DebounceKEY0|Add0~1\);

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

-- Location: LCCOMB_X103_Y37_N4
\DebounceKEY0|s_dirtyIn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_dirtyIn~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	combout => \DebounceKEY0|s_dirtyIn~0_combout\);

-- Location: FF_X103_Y37_N5
\DebounceKEY0|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_dirtyIn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_dirtyIn~q\);

-- Location: FF_X98_Y37_N31
\DebounceKEY0|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \DebounceKEY0|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_previousIn~q\);

-- Location: LCCOMB_X97_Y37_N12
\DebounceKEY0|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~5_combout\ = (!\DebounceKEY0|s_debounceCnt\(4) & (!\DebounceKEY0|s_debounceCnt\(1) & (!\DebounceKEY0|s_debounceCnt\(3) & !\DebounceKEY0|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(4),
	datab => \DebounceKEY0|s_debounceCnt\(1),
	datac => \DebounceKEY0|s_debounceCnt\(3),
	datad => \DebounceKEY0|s_debounceCnt\(2),
	combout => \DebounceKEY0|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X97_Y37_N4
\DebounceKEY0|s_debounceCnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[18]~3_combout\ = ((\DebounceKEY0|s_debounceCnt\(22)) # ((\DebounceKEY0|s_debounceCnt[18]~2_combout\) # (!\DebounceKEY0|s_dirtyIn~q\))) # (!\DebounceKEY0|s_previousIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datab => \DebounceKEY0|s_debounceCnt\(22),
	datac => \DebounceKEY0|s_dirtyIn~q\,
	datad => \DebounceKEY0|s_debounceCnt[18]~2_combout\,
	combout => \DebounceKEY0|s_debounceCnt[18]~3_combout\);

-- Location: LCCOMB_X96_Y36_N18
\DebounceKEY0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~40_combout\ = (\DebounceKEY0|s_debounceCnt\(20) & ((GND) # (!\DebounceKEY0|Add0~39\))) # (!\DebounceKEY0|s_debounceCnt\(20) & (\DebounceKEY0|Add0~39\ $ (GND)))
-- \DebounceKEY0|Add0~41\ = CARRY((\DebounceKEY0|s_debounceCnt\(20)) # (!\DebounceKEY0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(20),
	datad => VCC,
	cin => \DebounceKEY0|Add0~39\,
	combout => \DebounceKEY0|Add0~40_combout\,
	cout => \DebounceKEY0|Add0~41\);

-- Location: LCCOMB_X96_Y36_N20
\DebounceKEY0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~42_combout\ = (\DebounceKEY0|s_debounceCnt\(21) & (\DebounceKEY0|Add0~41\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(21) & (!\DebounceKEY0|Add0~41\))
-- \DebounceKEY0|Add0~43\ = CARRY((!\DebounceKEY0|s_debounceCnt\(21) & !\DebounceKEY0|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(21),
	datad => VCC,
	cin => \DebounceKEY0|Add0~41\,
	combout => \DebounceKEY0|Add0~42_combout\,
	cout => \DebounceKEY0|Add0~43\);

-- Location: LCCOMB_X98_Y37_N2
\DebounceKEY0|s_debounceCnt[21]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[21]~9_combout\ = (\DebounceKEY0|s_debounceCnt[18]~4_combout\ & (\DebounceKEY0|s_debounceCnt[18]~3_combout\ & \DebounceKEY0|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	datac => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	datad => \DebounceKEY0|Add0~42_combout\,
	combout => \DebounceKEY0|s_debounceCnt[21]~9_combout\);

-- Location: FF_X98_Y37_N3
\DebounceKEY0|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt[21]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(21));

-- Location: LCCOMB_X96_Y37_N0
\DebounceKEY0|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|LessThan0~4_combout\ = (\DebounceKEY0|s_debounceCnt\(15)) # ((\DebounceKEY0|s_debounceCnt\(16)) # (\DebounceKEY0|s_debounceCnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(15),
	datac => \DebounceKEY0|s_debounceCnt\(16),
	datad => \DebounceKEY0|s_debounceCnt\(17),
	combout => \DebounceKEY0|LessThan0~4_combout\);

-- Location: LCCOMB_X96_Y37_N20
\DebounceKEY0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~10_combout\ = (\DebounceKEY0|s_debounceCnt\(5) & (\DebounceKEY0|Add0~9\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(5) & (!\DebounceKEY0|Add0~9\))
-- \DebounceKEY0|Add0~11\ = CARRY((!\DebounceKEY0|s_debounceCnt\(5) & !\DebounceKEY0|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(5),
	datad => VCC,
	cin => \DebounceKEY0|Add0~9\,
	combout => \DebounceKEY0|Add0~10_combout\,
	cout => \DebounceKEY0|Add0~11\);

-- Location: LCCOMB_X96_Y37_N22
\DebounceKEY0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~12_combout\ = (\DebounceKEY0|s_debounceCnt\(6) & ((GND) # (!\DebounceKEY0|Add0~11\))) # (!\DebounceKEY0|s_debounceCnt\(6) & (\DebounceKEY0|Add0~11\ $ (GND)))
-- \DebounceKEY0|Add0~13\ = CARRY((\DebounceKEY0|s_debounceCnt\(6)) # (!\DebounceKEY0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(6),
	datad => VCC,
	cin => \DebounceKEY0|Add0~11\,
	combout => \DebounceKEY0|Add0~12_combout\,
	cout => \DebounceKEY0|Add0~13\);

-- Location: LCCOMB_X97_Y37_N16
\DebounceKEY0|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~1_combout\ = (\DebounceKEY0|s_debounceCnt[18]~0_combout\ & ((\DebounceKEY0|Add0~12_combout\) # (!\DebounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datab => \DebounceKEY0|Add0~12_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~0_combout\,
	combout => \DebounceKEY0|s_debounceCnt~1_combout\);

-- Location: FF_X97_Y37_N17
\DebounceKEY0|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~1_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(6));

-- Location: LCCOMB_X96_Y37_N24
\DebounceKEY0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~14_combout\ = (\DebounceKEY0|s_debounceCnt\(7) & (\DebounceKEY0|Add0~13\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(7) & (!\DebounceKEY0|Add0~13\))
-- \DebounceKEY0|Add0~15\ = CARRY((!\DebounceKEY0|s_debounceCnt\(7) & !\DebounceKEY0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(7),
	datad => VCC,
	cin => \DebounceKEY0|Add0~13\,
	combout => \DebounceKEY0|Add0~14_combout\,
	cout => \DebounceKEY0|Add0~15\);

-- Location: LCCOMB_X98_Y37_N8
\DebounceKEY0|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~12_combout\ = (\DebounceKEY0|Add0~14_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~14_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~12_combout\);

-- Location: FF_X98_Y37_N9
\DebounceKEY0|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~12_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(7));

-- Location: LCCOMB_X96_Y37_N26
\DebounceKEY0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~16_combout\ = (\DebounceKEY0|s_debounceCnt\(8) & ((GND) # (!\DebounceKEY0|Add0~15\))) # (!\DebounceKEY0|s_debounceCnt\(8) & (\DebounceKEY0|Add0~15\ $ (GND)))
-- \DebounceKEY0|Add0~17\ = CARRY((\DebounceKEY0|s_debounceCnt\(8)) # (!\DebounceKEY0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(8),
	datad => VCC,
	cin => \DebounceKEY0|Add0~15\,
	combout => \DebounceKEY0|Add0~16_combout\,
	cout => \DebounceKEY0|Add0~17\);

-- Location: LCCOMB_X98_Y37_N14
\DebounceKEY0|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~13_combout\ = (\DebounceKEY0|s_debounceCnt[18]~0_combout\ & ((\DebounceKEY0|Add0~16_combout\) # (!\DebounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datac => \DebounceKEY0|s_debounceCnt[18]~0_combout\,
	datad => \DebounceKEY0|Add0~16_combout\,
	combout => \DebounceKEY0|s_debounceCnt~13_combout\);

-- Location: FF_X98_Y37_N15
\DebounceKEY0|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~13_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(8));

-- Location: LCCOMB_X96_Y37_N28
\DebounceKEY0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~18_combout\ = (\DebounceKEY0|s_debounceCnt\(9) & (\DebounceKEY0|Add0~17\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(9) & (!\DebounceKEY0|Add0~17\))
-- \DebounceKEY0|Add0~19\ = CARRY((!\DebounceKEY0|s_debounceCnt\(9) & !\DebounceKEY0|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(9),
	datad => VCC,
	cin => \DebounceKEY0|Add0~17\,
	combout => \DebounceKEY0|Add0~18_combout\,
	cout => \DebounceKEY0|Add0~19\);

-- Location: LCCOMB_X98_Y37_N20
\DebounceKEY0|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~14_combout\ = (\DebounceKEY0|s_debounceCnt[18]~0_combout\ & ((\DebounceKEY0|Add0~18_combout\) # (!\DebounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datac => \DebounceKEY0|s_debounceCnt[18]~0_combout\,
	datad => \DebounceKEY0|Add0~18_combout\,
	combout => \DebounceKEY0|s_debounceCnt~14_combout\);

-- Location: FF_X98_Y37_N21
\DebounceKEY0|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~14_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(9));

-- Location: LCCOMB_X96_Y37_N30
\DebounceKEY0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~20_combout\ = (\DebounceKEY0|s_debounceCnt\(10) & ((GND) # (!\DebounceKEY0|Add0~19\))) # (!\DebounceKEY0|s_debounceCnt\(10) & (\DebounceKEY0|Add0~19\ $ (GND)))
-- \DebounceKEY0|Add0~21\ = CARRY((\DebounceKEY0|s_debounceCnt\(10)) # (!\DebounceKEY0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(10),
	datad => VCC,
	cin => \DebounceKEY0|Add0~19\,
	combout => \DebounceKEY0|Add0~20_combout\,
	cout => \DebounceKEY0|Add0~21\);

-- Location: LCCOMB_X98_Y37_N26
\DebounceKEY0|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~15_combout\ = (\DebounceKEY0|Add0~20_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|Add0~20_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~15_combout\);

-- Location: FF_X98_Y37_N27
\DebounceKEY0|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~15_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(10));

-- Location: LCCOMB_X96_Y36_N0
\DebounceKEY0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~22_combout\ = (\DebounceKEY0|s_debounceCnt\(11) & (\DebounceKEY0|Add0~21\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(11) & (!\DebounceKEY0|Add0~21\))
-- \DebounceKEY0|Add0~23\ = CARRY((!\DebounceKEY0|s_debounceCnt\(11) & !\DebounceKEY0|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(11),
	datad => VCC,
	cin => \DebounceKEY0|Add0~21\,
	combout => \DebounceKEY0|Add0~22_combout\,
	cout => \DebounceKEY0|Add0~23\);

-- Location: LCCOMB_X97_Y36_N20
\DebounceKEY0|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~16_combout\ = (\DebounceKEY0|s_debounceCnt[18]~0_combout\ & ((\DebounceKEY0|Add0~22_combout\) # (!\DebounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_previousIn~q\,
	datac => \DebounceKEY0|Add0~22_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~0_combout\,
	combout => \DebounceKEY0|s_debounceCnt~16_combout\);

-- Location: FF_X97_Y36_N21
\DebounceKEY0|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~16_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(11));

-- Location: LCCOMB_X96_Y36_N2
\DebounceKEY0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~24_combout\ = (\DebounceKEY0|s_debounceCnt\(12) & ((GND) # (!\DebounceKEY0|Add0~23\))) # (!\DebounceKEY0|s_debounceCnt\(12) & (\DebounceKEY0|Add0~23\ $ (GND)))
-- \DebounceKEY0|Add0~25\ = CARRY((\DebounceKEY0|s_debounceCnt\(12)) # (!\DebounceKEY0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(12),
	datad => VCC,
	cin => \DebounceKEY0|Add0~23\,
	combout => \DebounceKEY0|Add0~24_combout\,
	cout => \DebounceKEY0|Add0~25\);

-- Location: LCCOMB_X98_Y37_N16
\DebounceKEY0|s_debounceCnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~10_combout\ = (\DebounceKEY0|Add0~24_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~24_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~10_combout\);

-- Location: FF_X98_Y37_N17
\DebounceKEY0|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~10_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(12));

-- Location: LCCOMB_X96_Y36_N4
\DebounceKEY0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~26_combout\ = (\DebounceKEY0|s_debounceCnt\(13) & (\DebounceKEY0|Add0~25\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(13) & (!\DebounceKEY0|Add0~25\))
-- \DebounceKEY0|Add0~27\ = CARRY((!\DebounceKEY0|s_debounceCnt\(13) & !\DebounceKEY0|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(13),
	datad => VCC,
	cin => \DebounceKEY0|Add0~25\,
	combout => \DebounceKEY0|Add0~26_combout\,
	cout => \DebounceKEY0|Add0~27\);

-- Location: LCCOMB_X98_Y37_N22
\DebounceKEY0|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~11_combout\ = (\DebounceKEY0|Add0~26_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~26_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~11_combout\);

-- Location: FF_X98_Y37_N23
\DebounceKEY0|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~11_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(13));

-- Location: LCCOMB_X97_Y37_N20
\DebounceKEY0|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|LessThan0~0_combout\ = (\DebounceKEY0|s_debounceCnt\(6) & ((\DebounceKEY0|s_debounceCnt\(0)) # ((\DebounceKEY0|s_debounceCnt\(5)) # (!\DebounceKEY0|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(0),
	datab => \DebounceKEY0|s_debounceCnt\(6),
	datac => \DebounceKEY0|s_debounceCnt\(5),
	datad => \DebounceKEY0|s_pulsedOut~5_combout\,
	combout => \DebounceKEY0|LessThan0~0_combout\);

-- Location: LCCOMB_X98_Y37_N24
\DebounceKEY0|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|LessThan0~1_combout\ = (\DebounceKEY0|s_debounceCnt\(9) & ((\DebounceKEY0|s_debounceCnt\(7)) # (\DebounceKEY0|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(9),
	datac => \DebounceKEY0|s_debounceCnt\(7),
	datad => \DebounceKEY0|LessThan0~0_combout\,
	combout => \DebounceKEY0|LessThan0~1_combout\);

-- Location: LCCOMB_X98_Y37_N6
\DebounceKEY0|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|LessThan0~2_combout\ = (\DebounceKEY0|s_debounceCnt\(11) & ((\DebounceKEY0|s_debounceCnt\(10)) # ((\DebounceKEY0|s_debounceCnt\(8) & \DebounceKEY0|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(10),
	datab => \DebounceKEY0|s_debounceCnt\(8),
	datac => \DebounceKEY0|s_debounceCnt\(11),
	datad => \DebounceKEY0|LessThan0~1_combout\,
	combout => \DebounceKEY0|LessThan0~2_combout\);

-- Location: LCCOMB_X98_Y37_N12
\DebounceKEY0|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|LessThan0~3_combout\ = (\DebounceKEY0|s_debounceCnt\(14) & ((\DebounceKEY0|s_debounceCnt\(13)) # ((\DebounceKEY0|s_debounceCnt\(12)) # (\DebounceKEY0|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(13),
	datab => \DebounceKEY0|s_debounceCnt\(14),
	datac => \DebounceKEY0|s_debounceCnt\(12),
	datad => \DebounceKEY0|LessThan0~2_combout\,
	combout => \DebounceKEY0|LessThan0~3_combout\);

-- Location: LCCOMB_X98_Y37_N10
\DebounceKEY0|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|LessThan0~5_combout\ = (\DebounceKEY0|s_debounceCnt\(19) & ((\DebounceKEY0|LessThan0~4_combout\) # (\DebounceKEY0|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(19),
	datac => \DebounceKEY0|LessThan0~4_combout\,
	datad => \DebounceKEY0|LessThan0~3_combout\,
	combout => \DebounceKEY0|LessThan0~5_combout\);

-- Location: LCCOMB_X98_Y37_N28
\DebounceKEY0|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|LessThan0~6_combout\ = (\DebounceKEY0|s_debounceCnt\(21)) # ((\DebounceKEY0|s_debounceCnt\(20)) # ((\DebounceKEY0|s_debounceCnt\(18) & \DebounceKEY0|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(21),
	datab => \DebounceKEY0|s_debounceCnt\(18),
	datac => \DebounceKEY0|s_debounceCnt\(20),
	datad => \DebounceKEY0|LessThan0~5_combout\,
	combout => \DebounceKEY0|LessThan0~6_combout\);

-- Location: LCCOMB_X98_Y37_N30
\DebounceKEY0|s_debounceCnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[18]~0_combout\ = (\DebounceKEY0|s_dirtyIn~q\ & ((!\DebounceKEY0|LessThan0~6_combout\) # (!\DebounceKEY0|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(22),
	datac => \DebounceKEY0|s_dirtyIn~q\,
	datad => \DebounceKEY0|LessThan0~6_combout\,
	combout => \DebounceKEY0|s_debounceCnt[18]~0_combout\);

-- Location: LCCOMB_X96_Y36_N6
\DebounceKEY0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~28_combout\ = (\DebounceKEY0|s_debounceCnt\(14) & ((GND) # (!\DebounceKEY0|Add0~27\))) # (!\DebounceKEY0|s_debounceCnt\(14) & (\DebounceKEY0|Add0~27\ $ (GND)))
-- \DebounceKEY0|Add0~29\ = CARRY((\DebounceKEY0|s_debounceCnt\(14)) # (!\DebounceKEY0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(14),
	datad => VCC,
	cin => \DebounceKEY0|Add0~27\,
	combout => \DebounceKEY0|Add0~28_combout\,
	cout => \DebounceKEY0|Add0~29\);

-- Location: LCCOMB_X98_Y37_N0
\DebounceKEY0|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~17_combout\ = (\DebounceKEY0|s_debounceCnt[18]~0_combout\ & ((\DebounceKEY0|Add0~28_combout\) # (!\DebounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datac => \DebounceKEY0|s_debounceCnt[18]~0_combout\,
	datad => \DebounceKEY0|Add0~28_combout\,
	combout => \DebounceKEY0|s_debounceCnt~17_combout\);

-- Location: FF_X98_Y37_N1
\DebounceKEY0|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~17_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(14));

-- Location: LCCOMB_X96_Y36_N8
\DebounceKEY0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~30_combout\ = (\DebounceKEY0|s_debounceCnt\(15) & (\DebounceKEY0|Add0~29\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(15) & (!\DebounceKEY0|Add0~29\))
-- \DebounceKEY0|Add0~31\ = CARRY((!\DebounceKEY0|s_debounceCnt\(15) & !\DebounceKEY0|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(15),
	datad => VCC,
	cin => \DebounceKEY0|Add0~29\,
	combout => \DebounceKEY0|Add0~30_combout\,
	cout => \DebounceKEY0|Add0~31\);

-- Location: LCCOMB_X96_Y37_N4
\DebounceKEY0|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~5_combout\ = (\DebounceKEY0|Add0~30_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~30_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~5_combout\);

-- Location: FF_X96_Y37_N5
\DebounceKEY0|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~5_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(15));

-- Location: LCCOMB_X96_Y36_N10
\DebounceKEY0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~32_combout\ = (\DebounceKEY0|s_debounceCnt\(16) & ((GND) # (!\DebounceKEY0|Add0~31\))) # (!\DebounceKEY0|s_debounceCnt\(16) & (\DebounceKEY0|Add0~31\ $ (GND)))
-- \DebounceKEY0|Add0~33\ = CARRY((\DebounceKEY0|s_debounceCnt\(16)) # (!\DebounceKEY0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(16),
	datad => VCC,
	cin => \DebounceKEY0|Add0~31\,
	combout => \DebounceKEY0|Add0~32_combout\,
	cout => \DebounceKEY0|Add0~33\);

-- Location: LCCOMB_X97_Y36_N16
\DebounceKEY0|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~6_combout\ = (\DebounceKEY0|Add0~32_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|Add0~32_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~6_combout\);

-- Location: FF_X97_Y36_N17
\DebounceKEY0|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~6_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(16));

-- Location: LCCOMB_X96_Y36_N12
\DebounceKEY0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~34_combout\ = (\DebounceKEY0|s_debounceCnt\(17) & (\DebounceKEY0|Add0~33\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(17) & (!\DebounceKEY0|Add0~33\))
-- \DebounceKEY0|Add0~35\ = CARRY((!\DebounceKEY0|s_debounceCnt\(17) & !\DebounceKEY0|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(17),
	datad => VCC,
	cin => \DebounceKEY0|Add0~33\,
	combout => \DebounceKEY0|Add0~34_combout\,
	cout => \DebounceKEY0|Add0~35\);

-- Location: LCCOMB_X97_Y36_N30
\DebounceKEY0|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~7_combout\ = (\DebounceKEY0|Add0~34_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|Add0~34_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~7_combout\);

-- Location: FF_X97_Y36_N31
\DebounceKEY0|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~7_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(17));

-- Location: LCCOMB_X96_Y36_N14
\DebounceKEY0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~36_combout\ = (\DebounceKEY0|s_debounceCnt\(18) & ((GND) # (!\DebounceKEY0|Add0~35\))) # (!\DebounceKEY0|s_debounceCnt\(18) & (\DebounceKEY0|Add0~35\ $ (GND)))
-- \DebounceKEY0|Add0~37\ = CARRY((\DebounceKEY0|s_debounceCnt\(18)) # (!\DebounceKEY0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(18),
	datad => VCC,
	cin => \DebounceKEY0|Add0~35\,
	combout => \DebounceKEY0|Add0~36_combout\,
	cout => \DebounceKEY0|Add0~37\);

-- Location: LCCOMB_X96_Y36_N28
\DebounceKEY0|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[18]~18_combout\ = (\DebounceKEY0|s_debounceCnt[18]~3_combout\ & (\DebounceKEY0|s_debounceCnt[18]~0_combout\ & ((\DebounceKEY0|Add0~36_combout\) # (!\DebounceKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datab => \DebounceKEY0|Add0~36_combout\,
	datac => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~0_combout\,
	combout => \DebounceKEY0|s_debounceCnt[18]~18_combout\);

-- Location: FF_X96_Y36_N29
\DebounceKEY0|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(18));

-- Location: LCCOMB_X96_Y36_N16
\DebounceKEY0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~38_combout\ = (\DebounceKEY0|s_debounceCnt\(19) & (\DebounceKEY0|Add0~37\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(19) & (!\DebounceKEY0|Add0~37\))
-- \DebounceKEY0|Add0~39\ = CARRY((!\DebounceKEY0|s_debounceCnt\(19) & !\DebounceKEY0|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(19),
	datad => VCC,
	cin => \DebounceKEY0|Add0~37\,
	combout => \DebounceKEY0|Add0~38_combout\,
	cout => \DebounceKEY0|Add0~39\);

-- Location: LCCOMB_X96_Y36_N30
\DebounceKEY0|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[19]~19_combout\ = (\DebounceKEY0|s_debounceCnt[18]~3_combout\ & (\DebounceKEY0|s_debounceCnt[18]~0_combout\ & ((\DebounceKEY0|Add0~38_combout\) # (!\DebounceKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datab => \DebounceKEY0|Add0~38_combout\,
	datac => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~0_combout\,
	combout => \DebounceKEY0|s_debounceCnt[19]~19_combout\);

-- Location: FF_X96_Y36_N31
\DebounceKEY0|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(19));

-- Location: LCCOMB_X98_Y37_N4
\DebounceKEY0|s_debounceCnt[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[20]~8_combout\ = (\DebounceKEY0|s_debounceCnt[18]~4_combout\ & (\DebounceKEY0|s_debounceCnt[18]~3_combout\ & \DebounceKEY0|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	datac => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	datad => \DebounceKEY0|Add0~40_combout\,
	combout => \DebounceKEY0|s_debounceCnt[20]~8_combout\);

-- Location: FF_X98_Y37_N5
\DebounceKEY0|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt[20]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(20));

-- Location: LCCOMB_X97_Y37_N10
\DebounceKEY0|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~1_combout\ = (!\DebounceKEY0|s_debounceCnt\(20) & (!\DebounceKEY0|s_debounceCnt\(12) & (!\DebounceKEY0|s_debounceCnt\(13) & !\DebounceKEY0|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(20),
	datab => \DebounceKEY0|s_debounceCnt\(12),
	datac => \DebounceKEY0|s_debounceCnt\(13),
	datad => \DebounceKEY0|s_debounceCnt\(21),
	combout => \DebounceKEY0|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X97_Y37_N28
\DebounceKEY0|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~2_combout\ = (!\DebounceKEY0|s_debounceCnt\(9) & (!\DebounceKEY0|s_debounceCnt\(7) & (!\DebounceKEY0|s_debounceCnt\(8) & !\DebounceKEY0|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(9),
	datab => \DebounceKEY0|s_debounceCnt\(7),
	datac => \DebounceKEY0|s_debounceCnt\(8),
	datad => \DebounceKEY0|s_debounceCnt\(10),
	combout => \DebounceKEY0|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X96_Y37_N6
\DebounceKEY0|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~0_combout\ = (!\DebounceKEY0|s_debounceCnt\(6) & (!\DebounceKEY0|s_debounceCnt\(15) & (!\DebounceKEY0|s_debounceCnt\(16) & !\DebounceKEY0|s_debounceCnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(6),
	datab => \DebounceKEY0|s_debounceCnt\(15),
	datac => \DebounceKEY0|s_debounceCnt\(16),
	datad => \DebounceKEY0|s_debounceCnt\(17),
	combout => \DebounceKEY0|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X96_Y37_N8
\DebounceKEY0|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~3_combout\ = (!\DebounceKEY0|s_debounceCnt\(18) & (!\DebounceKEY0|s_debounceCnt\(14) & (!\DebounceKEY0|s_debounceCnt\(19) & !\DebounceKEY0|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(18),
	datab => \DebounceKEY0|s_debounceCnt\(14),
	datac => \DebounceKEY0|s_debounceCnt\(19),
	datad => \DebounceKEY0|s_debounceCnt\(11),
	combout => \DebounceKEY0|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X97_Y37_N6
\DebounceKEY0|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~4_combout\ = (\DebounceKEY0|s_pulsedOut~1_combout\ & (\DebounceKEY0|s_pulsedOut~2_combout\ & (\DebounceKEY0|s_pulsedOut~0_combout\ & \DebounceKEY0|s_pulsedOut~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_pulsedOut~1_combout\,
	datab => \DebounceKEY0|s_pulsedOut~2_combout\,
	datac => \DebounceKEY0|s_pulsedOut~0_combout\,
	datad => \DebounceKEY0|s_pulsedOut~3_combout\,
	combout => \DebounceKEY0|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X97_Y37_N18
\DebounceKEY0|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[18]~2_combout\ = (\DebounceKEY0|s_debounceCnt\(0)) # ((\DebounceKEY0|s_debounceCnt\(5)) # ((!\DebounceKEY0|s_pulsedOut~4_combout\) # (!\DebounceKEY0|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(0),
	datab => \DebounceKEY0|s_debounceCnt\(5),
	datac => \DebounceKEY0|s_pulsedOut~5_combout\,
	datad => \DebounceKEY0|s_pulsedOut~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X97_Y37_N26
\DebounceKEY0|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[22]~25_combout\ = (\DebounceKEY0|s_debounceCnt\(22) & (((!\DebounceKEY0|LessThan0~6_combout\)))) # (!\DebounceKEY0|s_debounceCnt\(22) & (((\DebounceKEY0|s_debounceCnt[18]~2_combout\)) # (!\DebounceKEY0|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datab => \DebounceKEY0|s_debounceCnt[18]~2_combout\,
	datac => \DebounceKEY0|s_debounceCnt\(22),
	datad => \DebounceKEY0|LessThan0~6_combout\,
	combout => \DebounceKEY0|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X96_Y36_N22
\DebounceKEY0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~44_combout\ = \DebounceKEY0|Add0~43\ $ (\DebounceKEY0|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DebounceKEY0|s_debounceCnt\(22),
	cin => \DebounceKEY0|Add0~43\,
	combout => \DebounceKEY0|Add0~44_combout\);

-- Location: LCCOMB_X97_Y37_N0
\DebounceKEY0|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[22]~26_combout\ = (\DebounceKEY0|s_dirtyIn~q\ & (\DebounceKEY0|s_debounceCnt[22]~25_combout\ & ((\DebounceKEY0|Add0~44_combout\) # (!\DebounceKEY0|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datab => \DebounceKEY0|s_dirtyIn~q\,
	datac => \DebounceKEY0|s_debounceCnt[22]~25_combout\,
	datad => \DebounceKEY0|Add0~44_combout\,
	combout => \DebounceKEY0|s_debounceCnt[22]~26_combout\);

-- Location: FF_X97_Y37_N1
\DebounceKEY0|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(22));

-- Location: LCCOMB_X98_Y37_N18
\DebounceKEY0|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt[18]~4_combout\ = (\DebounceKEY0|s_previousIn~q\ & (\DebounceKEY0|s_dirtyIn~q\ & ((!\DebounceKEY0|LessThan0~6_combout\) # (!\DebounceKEY0|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_previousIn~q\,
	datab => \DebounceKEY0|s_dirtyIn~q\,
	datac => \DebounceKEY0|s_debounceCnt\(22),
	datad => \DebounceKEY0|LessThan0~6_combout\,
	combout => \DebounceKEY0|s_debounceCnt[18]~4_combout\);

-- Location: LCCOMB_X97_Y37_N30
\DebounceKEY0|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~24_combout\ = (\DebounceKEY0|Add0~0_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|Add0~0_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~24_combout\);

-- Location: FF_X97_Y37_N31
\DebounceKEY0|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~24_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(0));

-- Location: LCCOMB_X96_Y37_N12
\DebounceKEY0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~2_combout\ = (\DebounceKEY0|s_debounceCnt\(1) & (\DebounceKEY0|Add0~1\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(1) & (!\DebounceKEY0|Add0~1\))
-- \DebounceKEY0|Add0~3\ = CARRY((!\DebounceKEY0|s_debounceCnt\(1) & !\DebounceKEY0|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(1),
	datad => VCC,
	cin => \DebounceKEY0|Add0~1\,
	combout => \DebounceKEY0|Add0~2_combout\,
	cout => \DebounceKEY0|Add0~3\);

-- Location: LCCOMB_X97_Y37_N24
\DebounceKEY0|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~20_combout\ = (\DebounceKEY0|Add0~2_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|Add0~2_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~20_combout\);

-- Location: FF_X97_Y37_N25
\DebounceKEY0|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~20_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(1));

-- Location: LCCOMB_X96_Y37_N14
\DebounceKEY0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~4_combout\ = (\DebounceKEY0|s_debounceCnt\(2) & ((GND) # (!\DebounceKEY0|Add0~3\))) # (!\DebounceKEY0|s_debounceCnt\(2) & (\DebounceKEY0|Add0~3\ $ (GND)))
-- \DebounceKEY0|Add0~5\ = CARRY((\DebounceKEY0|s_debounceCnt\(2)) # (!\DebounceKEY0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(2),
	datad => VCC,
	cin => \DebounceKEY0|Add0~3\,
	combout => \DebounceKEY0|Add0~4_combout\,
	cout => \DebounceKEY0|Add0~5\);

-- Location: LCCOMB_X97_Y37_N2
\DebounceKEY0|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~21_combout\ = (\DebounceKEY0|Add0~4_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|Add0~4_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~21_combout\);

-- Location: FF_X97_Y37_N3
\DebounceKEY0|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~21_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(2));

-- Location: LCCOMB_X96_Y37_N16
\DebounceKEY0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~6_combout\ = (\DebounceKEY0|s_debounceCnt\(3) & (\DebounceKEY0|Add0~5\ & VCC)) # (!\DebounceKEY0|s_debounceCnt\(3) & (!\DebounceKEY0|Add0~5\))
-- \DebounceKEY0|Add0~7\ = CARRY((!\DebounceKEY0|s_debounceCnt\(3) & !\DebounceKEY0|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(3),
	datad => VCC,
	cin => \DebounceKEY0|Add0~5\,
	combout => \DebounceKEY0|Add0~6_combout\,
	cout => \DebounceKEY0|Add0~7\);

-- Location: LCCOMB_X97_Y37_N8
\DebounceKEY0|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~22_combout\ = (\DebounceKEY0|Add0~6_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DebounceKEY0|Add0~6_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~22_combout\);

-- Location: FF_X97_Y37_N9
\DebounceKEY0|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~22_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(3));

-- Location: LCCOMB_X96_Y37_N18
\DebounceKEY0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|Add0~8_combout\ = (\DebounceKEY0|s_debounceCnt\(4) & ((GND) # (!\DebounceKEY0|Add0~7\))) # (!\DebounceKEY0|s_debounceCnt\(4) & (\DebounceKEY0|Add0~7\ $ (GND)))
-- \DebounceKEY0|Add0~9\ = CARRY((\DebounceKEY0|s_debounceCnt\(4)) # (!\DebounceKEY0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|s_debounceCnt\(4),
	datad => VCC,
	cin => \DebounceKEY0|Add0~7\,
	combout => \DebounceKEY0|Add0~8_combout\,
	cout => \DebounceKEY0|Add0~9\);

-- Location: LCCOMB_X97_Y37_N22
\DebounceKEY0|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~23_combout\ = (\DebounceKEY0|Add0~8_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|Add0~8_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~23_combout\);

-- Location: FF_X97_Y37_N23
\DebounceKEY0|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~23_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(4));

-- Location: LCCOMB_X97_Y37_N14
\DebounceKEY0|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_debounceCnt~27_combout\ = (\DebounceKEY0|Add0~10_combout\ & \DebounceKEY0|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DebounceKEY0|Add0~10_combout\,
	datad => \DebounceKEY0|s_debounceCnt[18]~4_combout\,
	combout => \DebounceKEY0|s_debounceCnt~27_combout\);

-- Location: FF_X97_Y37_N15
\DebounceKEY0|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_debounceCnt~27_combout\,
	ena => \DebounceKEY0|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_debounceCnt\(5));

-- Location: LCCOMB_X96_Y37_N2
\DebounceKEY0|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~6_combout\ = (\DebounceKEY0|s_debounceCnt\(0) & (!\DebounceKEY0|s_debounceCnt\(22) & (\DebounceKEY0|s_previousIn~q\ & \DebounceKEY0|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(0),
	datab => \DebounceKEY0|s_debounceCnt\(22),
	datac => \DebounceKEY0|s_previousIn~q\,
	datad => \DebounceKEY0|s_dirtyIn~q\,
	combout => \DebounceKEY0|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X95_Y37_N0
\DebounceKEY0|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DebounceKEY0|s_pulsedOut~7_combout\ = (!\DebounceKEY0|s_debounceCnt\(5) & (\DebounceKEY0|s_pulsedOut~5_combout\ & (\DebounceKEY0|s_pulsedOut~4_combout\ & \DebounceKEY0|s_pulsedOut~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DebounceKEY0|s_debounceCnt\(5),
	datab => \DebounceKEY0|s_pulsedOut~5_combout\,
	datac => \DebounceKEY0|s_pulsedOut~4_combout\,
	datad => \DebounceKEY0|s_pulsedOut~6_combout\,
	combout => \DebounceKEY0|s_pulsedOut~7_combout\);

-- Location: FF_X95_Y37_N1
\DebounceKEY0|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \DebounceKEY0|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebounceKEY0|s_pulsedOut~q\);

-- Location: LCCOMB_X74_Y14_N26
\Hz1Lane|count_proc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~0_combout\ = (\Hz1Lane|s_counter\(19) & (\Hz1Lane|s_counter\(22) & (\Hz1Lane|s_counter\(20) & \Hz1Lane|s_counter\(21))))

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
	combout => \Hz1Lane|count_proc~0_combout\);

-- Location: LCCOMB_X73_Y15_N26
\Hz1Lane|count_proc~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~1_combout\ = (\Hz1Lane|s_counter\(12) & (\Hz1Lane|s_counter\(13) & (\Hz1Lane|s_counter\(15) & \Hz1Lane|s_counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(12),
	datab => \Hz1Lane|s_counter\(13),
	datac => \Hz1Lane|s_counter\(15),
	datad => \Hz1Lane|s_counter\(14),
	combout => \Hz1Lane|count_proc~1_combout\);

-- Location: LCCOMB_X74_Y15_N0
\Hz1Lane|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~1_combout\ = (!\Hz1Lane|s_counter\(8) & (!\Hz1Lane|s_counter\(9) & (!\Hz1Lane|s_counter\(10) & !\Hz1Lane|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(8),
	datab => \Hz1Lane|s_counter\(9),
	datac => \Hz1Lane|s_counter\(10),
	datad => \Hz1Lane|s_counter\(7),
	combout => \Hz1Lane|LessThan1~1_combout\);

-- Location: LCCOMB_X74_Y15_N2
\Hz1Lane|count_proc~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~2_combout\ = (\Hz1Lane|s_counter\(2) & (\Hz1Lane|s_counter\(6) & (\Hz1Lane|s_counter\(1) & \Hz1Lane|s_counter\(0))))

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
	combout => \Hz1Lane|count_proc~2_combout\);

-- Location: LCCOMB_X74_Y15_N4
\Hz1Lane|count_proc~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~3_combout\ = (\Hz1Lane|s_counter\(3) & (\Hz1Lane|s_counter\(5) & (\Hz1Lane|s_counter\(4) & \Hz1Lane|count_proc~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(3),
	datab => \Hz1Lane|s_counter\(5),
	datac => \Hz1Lane|s_counter\(4),
	datad => \Hz1Lane|count_proc~2_combout\,
	combout => \Hz1Lane|count_proc~3_combout\);

-- Location: LCCOMB_X73_Y15_N0
\Hz1Lane|count_proc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~4_combout\ = (\Hz1Lane|count_proc~1_combout\ & ((\Hz1Lane|s_counter\(11)) # ((\Hz1Lane|count_proc~3_combout\) # (!\Hz1Lane|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|count_proc~1_combout\,
	datab => \Hz1Lane|s_counter\(11),
	datac => \Hz1Lane|LessThan1~1_combout\,
	datad => \Hz1Lane|count_proc~3_combout\,
	combout => \Hz1Lane|count_proc~4_combout\);

-- Location: LCCOMB_X73_Y15_N12
\Hz1Lane|count_proc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~5_combout\ = (\Hz1Lane|s_counter\(18)) # ((\Hz1Lane|s_counter\(17) & ((\Hz1Lane|s_counter\(16)) # (\Hz1Lane|count_proc~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(18),
	datab => \Hz1Lane|s_counter\(16),
	datac => \Hz1Lane|s_counter\(17),
	datad => \Hz1Lane|count_proc~4_combout\,
	combout => \Hz1Lane|count_proc~5_combout\);

-- Location: LCCOMB_X73_Y15_N20
\Hz1Lane|count_proc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~6_combout\ = (\Hz1Lane|s_counter\(24)) # ((\Hz1Lane|s_counter\(23) & (\Hz1Lane|count_proc~0_combout\ & \Hz1Lane|count_proc~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(23),
	datab => \Hz1Lane|s_counter\(24),
	datac => \Hz1Lane|count_proc~0_combout\,
	datad => \Hz1Lane|count_proc~5_combout\,
	combout => \Hz1Lane|count_proc~6_combout\);

-- Location: LCCOMB_X73_Y15_N30
\Hz1Lane|count_proc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|count_proc~7_combout\ = (\DebounceKEY0|s_pulsedOut~q\) # ((\Hz1Lane|s_counter\(25) & \Hz1Lane|count_proc~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(25),
	datac => \DebounceKEY0|s_pulsedOut~q\,
	datad => \Hz1Lane|count_proc~6_combout\,
	combout => \Hz1Lane|count_proc~7_combout\);

-- Location: FF_X74_Y15_N7
\Hz1Lane|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[0]~26_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(0));

-- Location: LCCOMB_X74_Y15_N8
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

-- Location: FF_X74_Y15_N9
\Hz1Lane|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[1]~28_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(1));

-- Location: LCCOMB_X74_Y15_N10
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

-- Location: FF_X74_Y15_N11
\Hz1Lane|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[2]~30_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(2));

-- Location: LCCOMB_X74_Y15_N12
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

-- Location: FF_X74_Y15_N13
\Hz1Lane|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[3]~32_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(3));

-- Location: LCCOMB_X74_Y15_N14
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

-- Location: FF_X74_Y15_N15
\Hz1Lane|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[4]~34_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(4));

-- Location: LCCOMB_X74_Y15_N16
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

-- Location: FF_X74_Y15_N17
\Hz1Lane|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[5]~36_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(5));

-- Location: LCCOMB_X74_Y15_N18
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

-- Location: FF_X74_Y15_N19
\Hz1Lane|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[6]~38_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(6));

-- Location: LCCOMB_X74_Y15_N20
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

-- Location: FF_X74_Y15_N21
\Hz1Lane|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[7]~40_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(7));

-- Location: LCCOMB_X74_Y15_N22
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

-- Location: FF_X74_Y15_N23
\Hz1Lane|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[8]~42_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(8));

-- Location: LCCOMB_X74_Y15_N24
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

-- Location: FF_X74_Y15_N25
\Hz1Lane|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[9]~44_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(9));

-- Location: LCCOMB_X74_Y15_N26
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

-- Location: FF_X74_Y15_N27
\Hz1Lane|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[10]~46_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(10));

-- Location: LCCOMB_X74_Y15_N28
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

-- Location: FF_X74_Y15_N29
\Hz1Lane|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[11]~48_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(11));

-- Location: LCCOMB_X74_Y15_N30
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

-- Location: FF_X74_Y15_N31
\Hz1Lane|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[12]~50_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(12));

-- Location: LCCOMB_X74_Y14_N0
\Hz1Lane|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[13]~52_combout\ = (\Hz1Lane|s_counter\(13) & (!\Hz1Lane|s_counter[12]~51\)) # (!\Hz1Lane|s_counter\(13) & ((\Hz1Lane|s_counter[12]~51\) # (GND)))
-- \Hz1Lane|s_counter[13]~53\ = CARRY((!\Hz1Lane|s_counter[12]~51\) # (!\Hz1Lane|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(13),
	datad => VCC,
	cin => \Hz1Lane|s_counter[12]~51\,
	combout => \Hz1Lane|s_counter[13]~52_combout\,
	cout => \Hz1Lane|s_counter[13]~53\);

-- Location: FF_X74_Y14_N1
\Hz1Lane|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[13]~52_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(13));

-- Location: LCCOMB_X74_Y14_N2
\Hz1Lane|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[14]~54_combout\ = (\Hz1Lane|s_counter\(14) & (\Hz1Lane|s_counter[13]~53\ $ (GND))) # (!\Hz1Lane|s_counter\(14) & (!\Hz1Lane|s_counter[13]~53\ & VCC))
-- \Hz1Lane|s_counter[14]~55\ = CARRY((\Hz1Lane|s_counter\(14) & !\Hz1Lane|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(14),
	datad => VCC,
	cin => \Hz1Lane|s_counter[13]~53\,
	combout => \Hz1Lane|s_counter[14]~54_combout\,
	cout => \Hz1Lane|s_counter[14]~55\);

-- Location: FF_X74_Y14_N3
\Hz1Lane|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[14]~54_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(14));

-- Location: LCCOMB_X74_Y14_N4
\Hz1Lane|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[15]~56_combout\ = (\Hz1Lane|s_counter\(15) & (!\Hz1Lane|s_counter[14]~55\)) # (!\Hz1Lane|s_counter\(15) & ((\Hz1Lane|s_counter[14]~55\) # (GND)))
-- \Hz1Lane|s_counter[15]~57\ = CARRY((!\Hz1Lane|s_counter[14]~55\) # (!\Hz1Lane|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(15),
	datad => VCC,
	cin => \Hz1Lane|s_counter[14]~55\,
	combout => \Hz1Lane|s_counter[15]~56_combout\,
	cout => \Hz1Lane|s_counter[15]~57\);

-- Location: FF_X74_Y14_N5
\Hz1Lane|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[15]~56_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(15));

-- Location: LCCOMB_X74_Y14_N6
\Hz1Lane|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[16]~58_combout\ = (\Hz1Lane|s_counter\(16) & (\Hz1Lane|s_counter[15]~57\ $ (GND))) # (!\Hz1Lane|s_counter\(16) & (!\Hz1Lane|s_counter[15]~57\ & VCC))
-- \Hz1Lane|s_counter[16]~59\ = CARRY((\Hz1Lane|s_counter\(16) & !\Hz1Lane|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(16),
	datad => VCC,
	cin => \Hz1Lane|s_counter[15]~57\,
	combout => \Hz1Lane|s_counter[16]~58_combout\,
	cout => \Hz1Lane|s_counter[16]~59\);

-- Location: FF_X74_Y14_N7
\Hz1Lane|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[16]~58_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(16));

-- Location: LCCOMB_X74_Y14_N8
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

-- Location: FF_X74_Y14_N9
\Hz1Lane|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[17]~60_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(17));

-- Location: LCCOMB_X74_Y14_N10
\Hz1Lane|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|s_counter[18]~62_combout\ = (\Hz1Lane|s_counter\(18) & (\Hz1Lane|s_counter[17]~61\ $ (GND))) # (!\Hz1Lane|s_counter\(18) & (!\Hz1Lane|s_counter[17]~61\ & VCC))
-- \Hz1Lane|s_counter[18]~63\ = CARRY((\Hz1Lane|s_counter\(18) & !\Hz1Lane|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(18),
	datad => VCC,
	cin => \Hz1Lane|s_counter[17]~61\,
	combout => \Hz1Lane|s_counter[18]~62_combout\,
	cout => \Hz1Lane|s_counter[18]~63\);

-- Location: FF_X74_Y14_N11
\Hz1Lane|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[18]~62_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(18));

-- Location: LCCOMB_X74_Y14_N12
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

-- Location: FF_X74_Y14_N13
\Hz1Lane|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[19]~64_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(19));

-- Location: LCCOMB_X74_Y14_N14
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

-- Location: FF_X74_Y14_N15
\Hz1Lane|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[20]~66_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(20));

-- Location: LCCOMB_X74_Y14_N16
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

-- Location: FF_X74_Y14_N17
\Hz1Lane|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[21]~68_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(21));

-- Location: LCCOMB_X74_Y14_N18
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

-- Location: FF_X74_Y14_N19
\Hz1Lane|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[22]~70_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(22));

-- Location: LCCOMB_X74_Y14_N20
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

-- Location: FF_X74_Y14_N21
\Hz1Lane|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[23]~72_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(23));

-- Location: FF_X74_Y14_N23
\Hz1Lane|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|s_counter[24]~74_combout\,
	sclr => \Hz1Lane|count_proc~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|s_counter\(24));

-- Location: LCCOMB_X73_Y15_N24
\Hz1Lane|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~0_combout\ = (((!\Hz1Lane|s_counter\(13)) # (!\Hz1Lane|s_counter\(14))) # (!\Hz1Lane|s_counter\(11))) # (!\Hz1Lane|s_counter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(12),
	datab => \Hz1Lane|s_counter\(11),
	datac => \Hz1Lane|s_counter\(14),
	datad => \Hz1Lane|s_counter\(13),
	combout => \Hz1Lane|LessThan1~0_combout\);

-- Location: LCCOMB_X73_Y15_N18
\Hz1Lane|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~2_combout\ = (!\Hz1Lane|s_counter\(15) & ((\Hz1Lane|LessThan1~0_combout\) # ((!\Hz1Lane|s_counter\(6) & \Hz1Lane|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(6),
	datab => \Hz1Lane|s_counter\(15),
	datac => \Hz1Lane|LessThan1~1_combout\,
	datad => \Hz1Lane|LessThan1~0_combout\,
	combout => \Hz1Lane|LessThan1~2_combout\);

-- Location: LCCOMB_X73_Y15_N4
\Hz1Lane|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~3_combout\ = (!\Hz1Lane|s_counter\(17) & ((\Hz1Lane|LessThan1~2_combout\) # (!\Hz1Lane|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(16),
	datac => \Hz1Lane|s_counter\(17),
	datad => \Hz1Lane|LessThan1~2_combout\,
	combout => \Hz1Lane|LessThan1~3_combout\);

-- Location: LCCOMB_X73_Y15_N2
\Hz1Lane|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~4_combout\ = (!\Hz1Lane|s_counter\(23) & (((\Hz1Lane|LessThan1~3_combout\) # (!\Hz1Lane|s_counter\(18))) # (!\Hz1Lane|count_proc~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Hz1Lane|s_counter\(23),
	datab => \Hz1Lane|count_proc~0_combout\,
	datac => \Hz1Lane|LessThan1~3_combout\,
	datad => \Hz1Lane|s_counter\(18),
	combout => \Hz1Lane|LessThan1~4_combout\);

-- Location: LCCOMB_X73_Y15_N8
\Hz1Lane|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Hz1Lane|LessThan1~5_combout\ = (\Hz1Lane|s_counter\(25)) # ((\Hz1Lane|s_counter\(24) & !\Hz1Lane|LessThan1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Hz1Lane|s_counter\(24),
	datac => \Hz1Lane|s_counter\(25),
	datad => \Hz1Lane|LessThan1~4_combout\,
	combout => \Hz1Lane|LessThan1~5_combout\);

-- Location: FF_X73_Y15_N9
\Hz1Lane|blink\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Hz1Lane|LessThan1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Hz1Lane|blink~q\);

-- Location: CLKCTRL_G15
\Hz1Lane|blink~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Hz1Lane|blink~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Hz1Lane|blink~clkctrl_outclk\);

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

-- Location: FF_X95_Y37_N23
s_Swi0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_Swi0~q\);

-- Location: FF_X95_Y37_N11
\ShiftReg|s_ShiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz1Lane|blink~clkctrl_outclk\,
	asdata => \s_Swi0~q\,
	clrn => \DebounceKEY0|ALT_INV_s_pulsedOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_ShiftReg\(0));

-- Location: LCCOMB_X95_Y37_N2
\ShiftReg|s_ShiftReg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_ShiftReg[1]~feeder_combout\ = \ShiftReg|s_ShiftReg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_ShiftReg\(0),
	combout => \ShiftReg|s_ShiftReg[1]~feeder_combout\);

-- Location: FF_X95_Y37_N3
\ShiftReg|s_ShiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz1Lane|blink~clkctrl_outclk\,
	d => \ShiftReg|s_ShiftReg[1]~feeder_combout\,
	clrn => \DebounceKEY0|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_ShiftReg\(1));

-- Location: LCCOMB_X95_Y37_N18
\ShiftReg|s_ShiftReg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_ShiftReg[2]~feeder_combout\ = \ShiftReg|s_ShiftReg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_ShiftReg\(1),
	combout => \ShiftReg|s_ShiftReg[2]~feeder_combout\);

-- Location: FF_X95_Y37_N19
\ShiftReg|s_ShiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz1Lane|blink~clkctrl_outclk\,
	d => \ShiftReg|s_ShiftReg[2]~feeder_combout\,
	clrn => \DebounceKEY0|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_ShiftReg\(2));

-- Location: LCCOMB_X95_Y37_N16
\ShiftReg|s_ShiftReg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_ShiftReg[3]~feeder_combout\ = \ShiftReg|s_ShiftReg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_ShiftReg\(2),
	combout => \ShiftReg|s_ShiftReg[3]~feeder_combout\);

-- Location: FF_X95_Y37_N17
\ShiftReg|s_ShiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz1Lane|blink~clkctrl_outclk\,
	d => \ShiftReg|s_ShiftReg[3]~feeder_combout\,
	clrn => \DebounceKEY0|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_ShiftReg\(3));

-- Location: LCCOMB_X95_Y37_N12
\ShiftReg|s_ShiftReg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_ShiftReg[4]~feeder_combout\ = \ShiftReg|s_ShiftReg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_ShiftReg\(3),
	combout => \ShiftReg|s_ShiftReg[4]~feeder_combout\);

-- Location: FF_X95_Y37_N13
\ShiftReg|s_ShiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz1Lane|blink~clkctrl_outclk\,
	d => \ShiftReg|s_ShiftReg[4]~feeder_combout\,
	clrn => \DebounceKEY0|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_ShiftReg\(4));

-- Location: LCCOMB_X87_Y32_N0
\Display5|binOutput~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~11_combout\ = (\ShiftReg|s_ShiftReg\(3)) # ((\ShiftReg|s_ShiftReg\(4) & ((\ShiftReg|s_ShiftReg\(1)) # (\ShiftReg|s_ShiftReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(3),
	datab => \ShiftReg|s_ShiftReg\(1),
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \ShiftReg|s_ShiftReg\(4),
	combout => \Display5|binOutput~11_combout\);

-- Location: LCCOMB_X87_Y32_N12
\Display5|binOutput~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~13_combout\ = (\ShiftReg|s_ShiftReg\(3) & ((\ShiftReg|s_ShiftReg\(2)) # (\ShiftReg|s_ShiftReg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftReg|s_ShiftReg\(2),
	datac => \ShiftReg|s_ShiftReg\(1),
	datad => \ShiftReg|s_ShiftReg\(3),
	combout => \Display5|binOutput~13_combout\);

-- Location: LCCOMB_X95_Y37_N28
\ShiftReg|s_ShiftReg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftReg|s_ShiftReg[5]~feeder_combout\ = \ShiftReg|s_ShiftReg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftReg|s_ShiftReg\(4),
	combout => \ShiftReg|s_ShiftReg[5]~feeder_combout\);

-- Location: FF_X95_Y37_N29
\ShiftReg|s_ShiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Hz1Lane|blink~clkctrl_outclk\,
	d => \ShiftReg|s_ShiftReg[5]~feeder_combout\,
	clrn => \DebounceKEY0|ALT_INV_s_pulsedOut~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftReg|s_ShiftReg\(5));

-- Location: LCCOMB_X87_Y32_N30
\Display5|binOutput[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[3]~12_combout\ = (!\ShiftReg|s_ShiftReg\(2) & !\ShiftReg|s_ShiftReg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftReg|s_ShiftReg\(2),
	datad => \ShiftReg|s_ShiftReg\(3),
	combout => \Display5|binOutput[3]~12_combout\);

-- Location: LCCOMB_X87_Y32_N26
\Display5|binOutput~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~14_combout\ = (\ShiftReg|s_ShiftReg\(5) & (((\ShiftReg|s_ShiftReg\(4))))) # (!\ShiftReg|s_ShiftReg\(5) & ((\ShiftReg|s_ShiftReg\(4) & ((\Display5|binOutput[3]~12_combout\))) # (!\ShiftReg|s_ShiftReg\(4) & 
-- (\Display5|binOutput~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|binOutput~13_combout\,
	datab => \ShiftReg|s_ShiftReg\(5),
	datac => \Display5|binOutput[3]~12_combout\,
	datad => \ShiftReg|s_ShiftReg\(4),
	combout => \Display5|binOutput~14_combout\);

-- Location: LCCOMB_X87_Y32_N28
\Display5|binOutput~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~15_combout\ = (\s_Mode~q\) # (\Display5|binOutput~14_combout\ $ (((\Display5|binOutput~11_combout\ & \ShiftReg|s_ShiftReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_Mode~q\,
	datab => \Display5|binOutput~11_combout\,
	datac => \Display5|binOutput~14_combout\,
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Display5|binOutput~15_combout\);

-- Location: LCCOMB_X87_Y32_N18
\Display5|binOutput[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[1]~16_combout\ = (\ShiftReg|s_ShiftReg\(5) & ((\ShiftReg|s_ShiftReg\(3)) # ((\ShiftReg|s_ShiftReg\(1)) # (\ShiftReg|s_ShiftReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(3),
	datab => \ShiftReg|s_ShiftReg\(1),
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Display5|binOutput[1]~16_combout\);

-- Location: LCCOMB_X88_Y33_N4
\Display5|binOutput[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[1]~17_combout\ = (\s_Mode~q\) # ((\ShiftReg|s_ShiftReg\(4) & \Display5|binOutput[1]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftReg|s_ShiftReg\(4),
	datac => \s_Mode~q\,
	datad => \Display5|binOutput[1]~16_combout\,
	combout => \Display5|binOutput[1]~17_combout\);

-- Location: LCCOMB_X95_Y37_N30
\Display5|binOutput~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~6_combout\ = (\ShiftReg|s_ShiftReg\(3) & ((!\ShiftReg|s_ShiftReg\(2)) # (!\ShiftReg|s_ShiftReg\(1)))) # (!\ShiftReg|s_ShiftReg\(3) & ((\ShiftReg|s_ShiftReg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(1),
	datab => \ShiftReg|s_ShiftReg\(3),
	datac => \ShiftReg|s_ShiftReg\(2),
	combout => \Display5|binOutput~6_combout\);

-- Location: LCCOMB_X95_Y37_N4
\Display5|binOutput~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~28_combout\ = (\s_Mode~q\) # ((\Display5|binOutput~6_combout\ & (\ShiftReg|s_ShiftReg\(4) & !\ShiftReg|s_ShiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|binOutput~6_combout\,
	datab => \ShiftReg|s_ShiftReg\(4),
	datac => \ShiftReg|s_ShiftReg\(5),
	datad => \s_Mode~q\,
	combout => \Display5|binOutput~28_combout\);

-- Location: LCCOMB_X87_Y32_N6
\Display5|binOutput[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[3]~19_combout\ = (!\ShiftReg|s_ShiftReg\(4) & ((\ShiftReg|s_ShiftReg\(1)) # ((\ShiftReg|s_ShiftReg\(2)) # (\ShiftReg|s_ShiftReg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(4),
	datab => \ShiftReg|s_ShiftReg\(1),
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Display5|binOutput[3]~19_combout\);

-- Location: LCCOMB_X87_Y32_N24
\Display5|binOutput[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[3]~18_combout\ = (\Display5|binOutput[3]~12_combout\ & (\ShiftReg|s_ShiftReg\(4) & ((!\ShiftReg|s_ShiftReg\(5)) # (!\ShiftReg|s_ShiftReg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|binOutput[3]~12_combout\,
	datab => \ShiftReg|s_ShiftReg\(4),
	datac => \ShiftReg|s_ShiftReg\(1),
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Display5|binOutput[3]~18_combout\);

-- Location: LCCOMB_X87_Y32_N16
\Display5|binOutput[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[3]~20_combout\ = (\Display5|binOutput[3]~18_combout\) # ((\s_Mode~q\) # ((\Display5|binOutput[3]~19_combout\ & \ShiftReg|s_ShiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|binOutput[3]~19_combout\,
	datab => \Display5|binOutput[3]~18_combout\,
	datac => \s_Mode~q\,
	datad => \ShiftReg|s_ShiftReg\(3),
	combout => \Display5|binOutput[3]~20_combout\);

-- Location: LCCOMB_X87_Y32_N10
\Display5|binOutput[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[4]~21_combout\ = (\ShiftReg|s_ShiftReg\(3) & ((\ShiftReg|s_ShiftReg\(2) & (\ShiftReg|s_ShiftReg\(1) & !\ShiftReg|s_ShiftReg\(5))) # (!\ShiftReg|s_ShiftReg\(2) & ((\ShiftReg|s_ShiftReg\(5)))))) # (!\ShiftReg|s_ShiftReg\(3) & 
-- (((\ShiftReg|s_ShiftReg\(5)) # (!\ShiftReg|s_ShiftReg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(3),
	datab => \ShiftReg|s_ShiftReg\(1),
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Display5|binOutput[4]~21_combout\);

-- Location: LCCOMB_X87_Y32_N4
\Display5|binOutput[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[6]~22_combout\ = (!\Display5|binOutput~13_combout\ & (!\ShiftReg|s_ShiftReg\(5) & (!\s_Mode~q\ & !\ShiftReg|s_ShiftReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|binOutput~13_combout\,
	datab => \ShiftReg|s_ShiftReg\(5),
	datac => \s_Mode~q\,
	datad => \ShiftReg|s_ShiftReg\(4),
	combout => \Display5|binOutput[6]~22_combout\);

-- Location: LCCOMB_X87_Y32_N2
\Display5|binOutput[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[4]~23_combout\ = (!\Display5|binOutput[6]~22_combout\ & ((\Display5|binOutput[4]~21_combout\) # ((\s_Mode~q\) # (!\ShiftReg|s_ShiftReg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|binOutput[4]~21_combout\,
	datab => \Display5|binOutput[6]~22_combout\,
	datac => \s_Mode~q\,
	datad => \ShiftReg|s_ShiftReg\(4),
	combout => \Display5|binOutput[4]~23_combout\);

-- Location: LCCOMB_X87_Y32_N8
\Display5|binOutput~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~24_combout\ = (!\ShiftReg|s_ShiftReg\(4) & ((\ShiftReg|s_ShiftReg\(5) & ((!\ShiftReg|s_ShiftReg\(3)))) # (!\ShiftReg|s_ShiftReg\(5) & (\Display5|binOutput~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display5|binOutput~13_combout\,
	datab => \ShiftReg|s_ShiftReg\(5),
	datac => \ShiftReg|s_ShiftReg\(4),
	datad => \ShiftReg|s_ShiftReg\(3),
	combout => \Display5|binOutput~24_combout\);

-- Location: LCCOMB_X87_Y32_N22
\Display5|binOutput~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput~27_combout\ = (\s_Mode~q\) # ((\Display5|binOutput~24_combout\) # ((\ShiftReg|s_ShiftReg\(4) & !\ShiftReg|s_ShiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_Mode~q\,
	datab => \ShiftReg|s_ShiftReg\(4),
	datac => \ShiftReg|s_ShiftReg\(5),
	datad => \Display5|binOutput~24_combout\,
	combout => \Display5|binOutput~27_combout\);

-- Location: LCCOMB_X87_Y32_N14
\Display5|binOutput[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[6]~25_combout\ = ((!\ShiftReg|s_ShiftReg\(3) & !\ShiftReg|s_ShiftReg\(2))) # (!\ShiftReg|s_ShiftReg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftReg|s_ShiftReg\(3),
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \ShiftReg|s_ShiftReg\(4),
	combout => \Display5|binOutput[6]~25_combout\);

-- Location: LCCOMB_X87_Y32_N20
\Display5|binOutput[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display5|binOutput[6]~26_combout\ = (\s_Mode~q\) # ((\Display5|binOutput[6]~22_combout\) # ((\Display5|binOutput[6]~25_combout\ & !\ShiftReg|s_ShiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_Mode~q\,
	datab => \Display5|binOutput[6]~22_combout\,
	datac => \Display5|binOutput[6]~25_combout\,
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Display5|binOutput[6]~26_combout\);

-- Location: LCCOMB_X95_Y35_N20
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \ShiftReg|s_ShiftReg\(3) $ (VCC)
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\ShiftReg|s_ShiftReg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftReg|s_ShiftReg\(3),
	datad => VCC,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X95_Y35_N22
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\ShiftReg|s_ShiftReg\(4) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\ShiftReg|s_ShiftReg\(4) & 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\ShiftReg|s_ShiftReg\(4) & !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(4),
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X95_Y35_N24
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\ShiftReg|s_ShiftReg\(5) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\ShiftReg|s_ShiftReg\(5) & 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\ShiftReg|s_ShiftReg\(5) & !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ShiftReg|s_ShiftReg\(5),
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X95_Y35_N26
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X95_Y35_N10
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \ShiftReg|s_ShiftReg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X95_Y35_N16
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X95_Y37_N8
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (\ShiftReg|s_ShiftReg\(4) & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(4),
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X95_Y35_N14
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X95_Y37_N14
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\ShiftReg|s_ShiftReg\(3) & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(3),
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X95_Y35_N28
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X95_Y37_N26
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (\ShiftReg|s_ShiftReg\(2) & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X94_Y35_N28
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (\ShiftReg|s_ShiftReg\(2) & !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X95_Y35_N0
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X95_Y35_N2
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X95_Y35_N4
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\)))))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X95_Y35_N6
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X95_Y35_N8
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X95_Y35_N30
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\ShiftReg|s_ShiftReg\(3))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \ShiftReg|s_ShiftReg\(3),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X94_Y35_N2
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\);

-- Location: LCCOMB_X94_Y35_N22
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\);

-- Location: LCCOMB_X94_Y35_N8
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ = (\ShiftReg|s_ShiftReg\(2) & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(2),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\);

-- Location: LCCOMB_X94_Y35_N30
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \ShiftReg|s_ShiftReg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \ShiftReg|s_ShiftReg\(1),
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\);

-- Location: LCCOMB_X94_Y35_N0
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \ShiftReg|s_ShiftReg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \ShiftReg|s_ShiftReg\(1),
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\);

-- Location: LCCOMB_X94_Y35_N10
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\) # (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\)))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\) # (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~36_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[24]~35_combout\,
	datad => VCC,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X94_Y35_N12
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ & 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\)))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\ & 
-- !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X94_Y35_N14
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\)))))
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X95_Y35_N12
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\ShiftReg|s_ShiftReg\(5)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \ShiftReg|s_ShiftReg\(5),
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\);

-- Location: LCCOMB_X94_Y35_N24
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\);

-- Location: LCCOMB_X94_Y35_N6
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\);

-- Location: LCCOMB_X95_Y35_N18
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\ShiftReg|s_ShiftReg\(4)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \ShiftReg|s_ShiftReg\(4),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\);

-- Location: LCCOMB_X94_Y35_N16
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\ & 
-- !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~38_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[27]~44_combout\,
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X94_Y35_N18
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\) # ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\) # 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~43_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[28]~37_combout\,
	datad => VCC,
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	cout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X94_Y35_N20
\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X94_Y35_N4
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\) # 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~32_combout\,
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\);

-- Location: LCCOMB_X94_Y35_N26
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\) # 
-- ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~34_combout\,
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[25]~33_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\);

-- Location: LCCOMB_X92_Y35_N8
\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\ShiftReg|s_ShiftReg\(1)))) # 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \ShiftReg|s_ShiftReg\(1),
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\);

-- Location: LCCOMB_X91_Y4_N4
\Display4|binOutput~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~0_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\ShiftReg|s_ShiftReg\(0) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ $ 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\ShiftReg|s_ShiftReg\(0) $ 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput~0_combout\);

-- Location: LCCOMB_X91_Y4_N18
\Display4|binOutput~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~1_combout\ = (\Display4|binOutput~0_combout\) # (\s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display4|binOutput~0_combout\,
	datad => \s_Mode~q\,
	combout => \Display4|binOutput~1_combout\);

-- Location: LCCOMB_X91_Y4_N6
\Display4|binOutput~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~3_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\ShiftReg|s_ShiftReg\(0) & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (\ShiftReg|s_ShiftReg\(0) $ 
-- (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput~3_combout\);

-- Location: LCCOMB_X91_Y4_N0
\Display4|binOutput~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~2_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\) # 
-- (!\ShiftReg|s_ShiftReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput~2_combout\);

-- Location: LCCOMB_X91_Y4_N12
\Display4|binOutput~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~4_combout\ = (\Display4|binOutput~3_combout\) # ((\Display4|binOutput~2_combout\) # (\s_Mode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|binOutput~3_combout\,
	datab => \Display4|binOutput~2_combout\,
	datad => \s_Mode~q\,
	combout => \Display4|binOutput~4_combout\);

-- Location: LCCOMB_X91_Y4_N22
\Display4|binOutput~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~5_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\ShiftReg|s_ShiftReg\(0) & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput~5_combout\);

-- Location: LCCOMB_X91_Y4_N28
\Display4|binOutput~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~6_combout\ = (\Display4|binOutput~2_combout\) # ((\Display4|binOutput~5_combout\) # (\s_Mode~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Display4|binOutput~2_combout\,
	datac => \Display4|binOutput~5_combout\,
	datad => \s_Mode~q\,
	combout => \Display4|binOutput~6_combout\);

-- Location: LCCOMB_X91_Y4_N30
\Display4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|Equal0~0_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\ShiftReg|s_ShiftReg\(0) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|Equal0~0_combout\);

-- Location: LCCOMB_X91_Y4_N20
\Display4|binOutput[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[3]~7_combout\ = (!\ShiftReg|s_ShiftReg\(0) & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & ((!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput[3]~7_combout\);

-- Location: LCCOMB_X91_Y4_N14
\Display4|binOutput[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[6]~10_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\ShiftReg|s_ShiftReg\(0) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\))) # (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\ShiftReg|s_ShiftReg\(0) & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- !\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput[6]~10_combout\);

-- Location: LCCOMB_X91_Y4_N8
\Display4|binOutput[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[6]~11_combout\ = (\Display4|binOutput[6]~10_combout\ & !\s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Display4|binOutput[6]~10_combout\,
	datad => \s_Mode~q\,
	combout => \Display4|binOutput[6]~11_combout\);

-- Location: LCCOMB_X91_Y4_N2
\Display4|binOutput[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[3]~8_combout\ = (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (\ShiftReg|s_ShiftReg\(0) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ $ 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput[3]~8_combout\);

-- Location: LCCOMB_X91_Y4_N24
\Display4|binOutput[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[3]~9_combout\ = (!\Display4|binOutput[3]~8_combout\ & !\s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Display4|binOutput[3]~8_combout\,
	datad => \s_Mode~q\,
	combout => \Display4|binOutput[3]~9_combout\);

-- Location: LCCOMB_X91_Y4_N26
\Display4|binOutput[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[3]~12_combout\ = (\Display4|binOutput[6]~11_combout\ & (\Display4|Equal0~0_combout\)) # (!\Display4|binOutput[6]~11_combout\ & (((\Display4|binOutput[3]~7_combout\) # (!\Display4|binOutput[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|Equal0~0_combout\,
	datab => \Display4|binOutput[3]~7_combout\,
	datac => \Display4|binOutput[6]~11_combout\,
	datad => \Display4|binOutput[3]~9_combout\,
	combout => \Display4|binOutput[3]~12_combout\);

-- Location: LCCOMB_X92_Y8_N28
\Display4|binOutput~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~13_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & (\ShiftReg|s_ShiftReg\(0) & ((!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\)))) # 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\ & ((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & ((!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\))) # 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (\ShiftReg|s_ShiftReg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(0),
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput~13_combout\);

-- Location: LCCOMB_X92_Y8_N30
\Display4|binOutput~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~14_combout\ = (\Display4|binOutput~13_combout\) # (\s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Display4|binOutput~13_combout\,
	datac => \s_Mode~q\,
	combout => \Display4|binOutput~14_combout\);

-- Location: LCCOMB_X92_Y8_N4
\Display4|binOutput~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~15_combout\ = (\ShiftReg|s_ShiftReg\(0) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ $ (((\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\) # 
-- (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\))))) # (!\ShiftReg|s_ShiftReg\(0) & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & (!\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & 
-- \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftReg|s_ShiftReg\(0),
	datab => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput~15_combout\);

-- Location: LCCOMB_X92_Y8_N26
\Display4|binOutput~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput~16_combout\ = (\s_Mode~q\) # (\Display4|binOutput~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_Mode~q\,
	datac => \Display4|binOutput~15_combout\,
	combout => \Display4|binOutput~16_combout\);

-- Location: LCCOMB_X91_Y4_N16
\Display4|binOutput[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[6]~17_combout\ = (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\ & (!\ShiftReg|s_ShiftReg\(0) & (\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\ & 
-- !\Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[33]~39_combout\,
	datab => \ShiftReg|s_ShiftReg\(0),
	datac => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[32]~41_combout\,
	datad => \Bin2Bcd|Mod0|auto_generated|divider|divider|StageOut[31]~40_combout\,
	combout => \Display4|binOutput[6]~17_combout\);

-- Location: LCCOMB_X91_Y4_N10
\Display4|binOutput[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Display4|binOutput[6]~18_combout\ = (\Display4|binOutput[6]~11_combout\ & (!\Display4|Equal0~0_combout\)) # (!\Display4|binOutput[6]~11_combout\ & (((\Display4|binOutput[6]~17_combout\) # (!\Display4|binOutput[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Display4|Equal0~0_combout\,
	datab => \Display4|binOutput[6]~17_combout\,
	datac => \Display4|binOutput[6]~11_combout\,
	datad => \Display4|binOutput[3]~9_combout\,
	combout => \Display4|binOutput[6]~18_combout\);

-- Location: LCCOMB_X95_Y37_N10
\LEDG~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~0_combout\ = (\ShiftReg|s_ShiftReg\(0) & \s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(0),
	datad => \s_Mode~q\,
	combout => \LEDG~0_combout\);

-- Location: LCCOMB_X95_Y37_N6
\LEDG~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~1_combout\ = (\ShiftReg|s_ShiftReg\(1) & \s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(1),
	datad => \s_Mode~q\,
	combout => \LEDG~1_combout\);

-- Location: LCCOMB_X95_Y37_N24
\LEDG~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~2_combout\ = (\ShiftReg|s_ShiftReg\(2) & \s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(2),
	datad => \s_Mode~q\,
	combout => \LEDG~2_combout\);

-- Location: LCCOMB_X95_Y37_N22
\LEDG~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~3_combout\ = (\ShiftReg|s_ShiftReg\(3) & \s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftReg|s_ShiftReg\(3),
	datad => \s_Mode~q\,
	combout => \LEDG~3_combout\);

-- Location: LCCOMB_X88_Y33_N22
\LEDG~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~4_combout\ = (\s_Mode~q\ & \ShiftReg|s_ShiftReg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_Mode~q\,
	datad => \ShiftReg|s_ShiftReg\(4),
	combout => \LEDG~4_combout\);

-- Location: LCCOMB_X95_Y37_N20
\LEDG~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LEDG~5_combout\ = (\ShiftReg|s_ShiftReg\(5) & \s_Mode~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftReg|s_ShiftReg\(5),
	datad => \s_Mode~q\,
	combout => \LEDG~5_combout\);

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;
END structure;


