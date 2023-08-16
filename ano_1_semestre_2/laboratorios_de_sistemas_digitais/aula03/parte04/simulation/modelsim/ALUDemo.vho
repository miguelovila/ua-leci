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

-- DATE "03/31/2022 11:28:54"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END ALUDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALUDemo IS
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
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \inst|Add0~5_cout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ : std_logic;
SIGNAL \inst|Mux1~3_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~53_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~58_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~67_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~68_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~69_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~70_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux2~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ : std_logic;
SIGNAL \inst|Mux2~3_combout\ : std_logic;
SIGNAL \inst|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~36_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~35_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux3~2_combout\ : std_logic;
SIGNAL \inst|Mux3~3_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Mux3~4_combout\ : std_logic;
SIGNAL \inst|Mux3~5_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~41_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~40_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ : std_logic;
SIGNAL \inst3|binoutput[6]~0_combout\ : std_logic;
SIGNAL \inst3|binoutput[5]~1_combout\ : std_logic;
SIGNAL \inst3|binoutput[4]~2_combout\ : std_logic;
SIGNAL \inst3|binoutput[3]~3_combout\ : std_logic;
SIGNAL \inst3|binoutput[2]~4_combout\ : std_logic;
SIGNAL \inst3|binoutput[1]~5_combout\ : std_logic;
SIGNAL \inst3|binoutput[0]~6_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~16_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~17_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~9_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~10_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~8_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~11_combout\ : std_logic;
SIGNAL \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~12_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~18_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~19_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~14_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~13_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~6_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~7_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~15_combout\ : std_logic;
SIGNAL \inst4|binoutput[2]~21_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~65_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~20_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~22_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~23_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~28_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~27_combout\ : std_logic;
SIGNAL \inst4|binoutput~26_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~29_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~30_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~24_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~25_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~31_combout\ : std_logic;
SIGNAL \inst4|binoutput[5]~32_combout\ : std_logic;
SIGNAL \inst4|binoutput[4]~33_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~42_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~41_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~43_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~39_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~40_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~34_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~35_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~36_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~37_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~38_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~44_combout\ : std_logic;
SIGNAL \inst4|binoutput[2]~49_combout\ : std_logic;
SIGNAL \inst4|binoutput~45_combout\ : std_logic;
SIGNAL \inst4|binoutput[6]~46_combout\ : std_logic;
SIGNAL \inst4|binoutput[3]~47_combout\ : std_logic;
SIGNAL \inst4|binoutput[2]~66_combout\ : std_logic;
SIGNAL \inst4|binoutput[2]~48_combout\ : std_logic;
SIGNAL \inst4|binoutput[2]~50_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~56_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~55_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~57_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~51_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~52_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~53_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~54_combout\ : std_logic;
SIGNAL \inst4|binoutput[1]~58_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~63_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~61_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~62_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~67_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~68_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~59_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~60_combout\ : std_logic;
SIGNAL \inst4|binoutput[0]~64_combout\ : std_logic;
SIGNAL \inst5|binoutput[6]~0_combout\ : std_logic;
SIGNAL \inst5|binoutput[6]~1_combout\ : std_logic;
SIGNAL \inst|m[0]~10_combout\ : std_logic;
SIGNAL \inst|m[2]~9_combout\ : std_logic;
SIGNAL \inst5|binoutput[5]~2_combout\ : std_logic;
SIGNAL \inst|m[3]~8_combout\ : std_logic;
SIGNAL \inst5|binoutput[5]~3_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst5|binoutput[3]~4_combout\ : std_logic;
SIGNAL \inst5|binoutput[3]~5_combout\ : std_logic;
SIGNAL \inst|m[1]~11_combout\ : std_logic;
SIGNAL \inst|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mod0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst5|ALT_INV_binoutput[3]~5_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_binoutput[6]~1_combout\ : std_logic;
SIGNAL \inst1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst5|ALT_INV_binoutput[3]~5_combout\ <= NOT \inst5|binoutput[3]~5_combout\;
\inst5|ALT_INV_binoutput[6]~1_combout\ <= NOT \inst5|binoutput[6]~1_combout\;
\inst1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
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
	i => \inst3|binoutput[6]~0_combout\,
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
	i => \inst3|binoutput[5]~1_combout\,
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
	i => \inst3|binoutput[4]~2_combout\,
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
	i => \inst3|binoutput[3]~3_combout\,
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
	i => \inst3|binoutput[2]~4_combout\,
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
	i => \inst3|binoutput[1]~5_combout\,
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
	i => \inst3|binoutput[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|binoutput[6]~23_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|binoutput[5]~32_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|binoutput[4]~33_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|binoutput[3]~44_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|binoutput[2]~50_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|binoutput[1]~58_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|binoutput[0]~64_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|binoutput[6]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|binoutput[5]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_binoutput[3]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_binoutput[6]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_binoutput[3]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[3]~8_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[2]~9_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[1]~11_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|m[0]~10_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~1_combout\,
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
	i => \inst|Mux1~1_combout\,
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
	i => \inst|Mux2~1_combout\,
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
	i => \inst|Mux3~5_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X111_Y14_N0
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\SW[10]~input_o\ & (\SW[9]~input_o\ & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Equal0~0_combout\);

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

-- Location: LCCOMB_X109_Y14_N16
\inst|Mult0|auto_generated|le4a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(5) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(5));

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

-- Location: LCCOMB_X110_Y14_N10
\inst|Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(3) = (\SW[7]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X114_Y14_N28
\inst|Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(4) = (\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[1]~input_o\)))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ $ (((\SW[2]~input_o\ & \SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(4));

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

-- Location: LCCOMB_X110_Y14_N12
\inst|Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(2) = (\SW[6]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X109_Y14_N30
\inst|Mult0|auto_generated|cs2a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|cs2a[1]~0_combout\ = \SW[2]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X110_Y14_N14
\inst|Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(3) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[7]~input_o\ $ ((\inst|Mult0|auto_generated|le4a\(5))))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\inst|Mult0|auto_generated|le4a\(5) & 
-- !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(3));

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

-- Location: LCCOMB_X110_Y14_N0
\inst|Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(1) = (\SW[5]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(1));

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

-- Location: LCCOMB_X110_Y14_N2
\inst|Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(4) = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X110_Y14_N4
\inst|Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(2) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(5) $ (\SW[6]~input_o\)))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (!\SW[5]~input_o\ & 
-- (\inst|Mult0|auto_generated|le4a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[6]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X110_Y14_N30
\inst|Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(3) = (\SW[0]~input_o\ & (\SW[7]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X110_Y14_N16
\inst|Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(2) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[6]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[5]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X110_Y14_N18
\inst|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~0_combout\ = (\inst|Mult0|auto_generated|le4a\(5) & (\inst|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\inst|Mult0|auto_generated|le4a\(5) & (\inst|Mult0|auto_generated|le3a\(2) & VCC))
-- \inst|Mult0|auto_generated|op_1~1\ = CARRY((\inst|Mult0|auto_generated|le4a\(5) & \inst|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(5),
	datab => \inst|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_1~0_combout\,
	cout => \inst|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X110_Y14_N20
\inst|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~2_combout\ = (\inst|Mult0|auto_generated|le3a\(3) & (!\inst|Mult0|auto_generated|op_1~1\)) # (!\inst|Mult0|auto_generated|le3a\(3) & ((\inst|Mult0|auto_generated|op_1~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_1~3\ = CARRY((!\inst|Mult0|auto_generated|op_1~1\) # (!\inst|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~1\,
	combout => \inst|Mult0|auto_generated|op_1~2_combout\,
	cout => \inst|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X110_Y14_N22
\inst|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~4_combout\ = ((\inst|Mult0|auto_generated|le3a\(4) $ (\inst|Mult0|auto_generated|le4a\(2) $ (!\inst|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~5\ = CARRY((\inst|Mult0|auto_generated|le3a\(4) & ((\inst|Mult0|auto_generated|le4a\(2)) # (!\inst|Mult0|auto_generated|op_1~3\))) # (!\inst|Mult0|auto_generated|le3a\(4) & (\inst|Mult0|auto_generated|le4a\(2) & 
-- !\inst|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le3a\(4),
	datab => \inst|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~3\,
	combout => \inst|Mult0|auto_generated|op_1~4_combout\,
	cout => \inst|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X110_Y14_N24
\inst|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~6_combout\ = (\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|le5a\(1) & (\inst|Mult0|auto_generated|op_1~5\ & VCC)) # (!\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|op_1~5\)))) # 
-- (!\inst|Mult0|auto_generated|le4a\(3) & ((\inst|Mult0|auto_generated|le5a\(1) & (!\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le5a\(1) & ((\inst|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \inst|Mult0|auto_generated|op_1~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(3) & (!\inst|Mult0|auto_generated|le5a\(1) & !\inst|Mult0|auto_generated|op_1~5\)) # (!\inst|Mult0|auto_generated|le4a\(3) & ((!\inst|Mult0|auto_generated|op_1~5\) # 
-- (!\inst|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(3),
	datab => \inst|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~5\,
	combout => \inst|Mult0|auto_generated|op_1~6_combout\,
	cout => \inst|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X110_Y14_N26
\inst|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~8_combout\ = ((\inst|Mult0|auto_generated|le4a\(4) $ (\inst|Mult0|auto_generated|le5a\(2) $ (!\inst|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_1~9\ = CARRY((\inst|Mult0|auto_generated|le4a\(4) & ((\inst|Mult0|auto_generated|le5a\(2)) # (!\inst|Mult0|auto_generated|op_1~7\))) # (!\inst|Mult0|auto_generated|le4a\(4) & (\inst|Mult0|auto_generated|le5a\(2) & 
-- !\inst|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(4),
	datab => \inst|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_1~7\,
	combout => \inst|Mult0|auto_generated|op_1~8_combout\,
	cout => \inst|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X110_Y14_N28
\inst|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_1~10_combout\ = \inst|Mult0|auto_generated|le4a\(5) $ (\inst|Mult0|auto_generated|op_1~9\ $ (!\inst|Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(5),
	datad => \inst|Mult0|auto_generated|le5a\(3),
	cin => \inst|Mult0|auto_generated|op_1~9\,
	combout => \inst|Mult0|auto_generated|op_1~10_combout\);

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

-- Location: LCCOMB_X112_Y14_N24
\inst|Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le5a\(0) = (\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X110_Y14_N6
\inst|Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(1) = (\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (\SW[5]~input_o\ $ ((\inst|Mult0|auto_generated|le4a\(5))))) # (!\inst|Mult0|auto_generated|cs2a[1]~0_combout\ & (((\inst|Mult0|auto_generated|le4a\(5) & 
-- !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Mult0|auto_generated|cs2a[1]~0_combout\,
	datac => \inst|Mult0|auto_generated|le4a\(5),
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X112_Y14_N10
\inst|Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le4a\(0) = \SW[3]~input_o\ $ (((\SW[1]~input_o\ & ((\SW[2]~input_o\) # (\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X112_Y14_N12
\inst|Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(1) = (\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[5]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X112_Y14_N14
\inst|Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|le3a\(0) = \SW[1]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X111_Y14_N4
\inst|Mult0|auto_generated|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~0_combout\ = (\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\inst|Mult0|auto_generated|le3a\(0) & VCC))
-- \inst|Mult0|auto_generated|op_3~1\ = CARRY((\SW[1]~input_o\ & \inst|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \inst|Mult0|auto_generated|op_3~0_combout\,
	cout => \inst|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X111_Y14_N6
\inst|Mult0|auto_generated|op_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~2_combout\ = (\inst|Mult0|auto_generated|le3a\(1) & (!\inst|Mult0|auto_generated|op_3~1\)) # (!\inst|Mult0|auto_generated|le3a\(1) & ((\inst|Mult0|auto_generated|op_3~1\) # (GND)))
-- \inst|Mult0|auto_generated|op_3~3\ = CARRY((!\inst|Mult0|auto_generated|op_3~1\) # (!\inst|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~1\,
	combout => \inst|Mult0|auto_generated|op_3~2_combout\,
	cout => \inst|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X111_Y14_N8
\inst|Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~4_combout\ = ((\inst|Mult0|auto_generated|op_1~0_combout\ $ (\inst|Mult0|auto_generated|le4a\(0) $ (!\inst|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~5\ = CARRY((\inst|Mult0|auto_generated|op_1~0_combout\ & ((\inst|Mult0|auto_generated|le4a\(0)) # (!\inst|Mult0|auto_generated|op_3~3\))) # (!\inst|Mult0|auto_generated|op_1~0_combout\ & (\inst|Mult0|auto_generated|le4a\(0) 
-- & !\inst|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~0_combout\,
	datab => \inst|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~3\,
	combout => \inst|Mult0|auto_generated|op_3~4_combout\,
	cout => \inst|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X111_Y14_N10
\inst|Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~6_combout\ = (\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (\inst|Mult0|auto_generated|op_3~5\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & 
-- (!\inst|Mult0|auto_generated|op_3~5\)))) # (!\inst|Mult0|auto_generated|le4a\(1) & ((\inst|Mult0|auto_generated|op_1~2_combout\ & (!\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|op_1~2_combout\ & ((\inst|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \inst|Mult0|auto_generated|op_3~7\ = CARRY((\inst|Mult0|auto_generated|le4a\(1) & (!\inst|Mult0|auto_generated|op_1~2_combout\ & !\inst|Mult0|auto_generated|op_3~5\)) # (!\inst|Mult0|auto_generated|le4a\(1) & ((!\inst|Mult0|auto_generated|op_3~5\) # 
-- (!\inst|Mult0|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|le4a\(1),
	datab => \inst|Mult0|auto_generated|op_1~2_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~5\,
	combout => \inst|Mult0|auto_generated|op_3~6_combout\,
	cout => \inst|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X111_Y14_N12
\inst|Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~8_combout\ = ((\inst|Mult0|auto_generated|op_1~4_combout\ $ (\inst|Mult0|auto_generated|le5a\(0) $ (!\inst|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~9\ = CARRY((\inst|Mult0|auto_generated|op_1~4_combout\ & ((\inst|Mult0|auto_generated|le5a\(0)) # (!\inst|Mult0|auto_generated|op_3~7\))) # (!\inst|Mult0|auto_generated|op_1~4_combout\ & (\inst|Mult0|auto_generated|le5a\(0) 
-- & !\inst|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_1~4_combout\,
	datab => \inst|Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~7\,
	combout => \inst|Mult0|auto_generated|op_3~8_combout\,
	cout => \inst|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X111_Y14_N14
\inst|Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~10_combout\ = (\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (\inst|Mult0|auto_generated|op_3~9\ & VCC)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)))) # 
-- (!\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~6_combout\ & (!\inst|Mult0|auto_generated|op_3~9\)) # (!\inst|Mult0|auto_generated|op_1~6_combout\ & ((\inst|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \inst|Mult0|auto_generated|op_3~11\ = CARRY((\SW[1]~input_o\ & (!\inst|Mult0|auto_generated|op_1~6_combout\ & !\inst|Mult0|auto_generated|op_3~9\)) # (!\SW[1]~input_o\ & ((!\inst|Mult0|auto_generated|op_3~9\) # 
-- (!\inst|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~9\,
	combout => \inst|Mult0|auto_generated|op_3~10_combout\,
	cout => \inst|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X111_Y14_N16
\inst|Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~12_combout\ = ((\SW[1]~input_o\ $ (\inst|Mult0|auto_generated|op_1~8_combout\ $ (!\inst|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \inst|Mult0|auto_generated|op_3~13\ = CARRY((\SW[1]~input_o\ & ((\inst|Mult0|auto_generated|op_1~8_combout\) # (!\inst|Mult0|auto_generated|op_3~11\))) # (!\SW[1]~input_o\ & (\inst|Mult0|auto_generated|op_1~8_combout\ & 
-- !\inst|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \inst|Mult0|auto_generated|op_3~11\,
	combout => \inst|Mult0|auto_generated|op_3~12_combout\,
	cout => \inst|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X111_Y14_N18
\inst|Mult0|auto_generated|op_3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|auto_generated|op_3~14_combout\ = \SW[1]~input_o\ $ (\inst|Mult0|auto_generated|op_1~10_combout\ $ (!\inst|Mult0|auto_generated|op_3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mult0|auto_generated|op_1~10_combout\,
	cin => \inst|Mult0|auto_generated|op_3~13\,
	combout => \inst|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X113_Y14_N8
\inst|Mod0|auto_generated|divider|divider|selnose[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\);

-- Location: LCCOMB_X112_Y14_N30
\inst|Mod0|auto_generated|divider|divider|selnose[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose\(0) = ((\SW[1]~input_o\) # ((!\SW[7]~input_o\ & \SW[0]~input_o\))) # (!\inst|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose[0]~1_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose\(0));

-- Location: LCCOMB_X111_Y14_N28
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\SW[9]~input_o\ & !\SW[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y14_N26
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\SW[10]~input_o\) # ((\SW[9]~input_o\ & \SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[10]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y14_N6
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \SW[8]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X113_Y14_N0
\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = \SW[8]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X113_Y14_N28
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = \SW[1]~input_o\ $ (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X113_Y14_N30
\inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = \SW[8]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Add0~3_combout\);

-- Location: LCCOMB_X113_Y14_N10
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_cout\ = CARRY(\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datad => VCC,
	cout => \inst|Add0~5_cout\);

-- Location: LCCOMB_X113_Y14_N12
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|Add0~3_combout\ & ((\SW[4]~input_o\ & (\inst|Add0~5_cout\ & VCC)) # (!\SW[4]~input_o\ & (!\inst|Add0~5_cout\)))) # (!\inst|Add0~3_combout\ & ((\SW[4]~input_o\ & (!\inst|Add0~5_cout\)) # (!\SW[4]~input_o\ & 
-- ((\inst|Add0~5_cout\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst|Add0~3_combout\ & (!\SW[4]~input_o\ & !\inst|Add0~5_cout\)) # (!\inst|Add0~3_combout\ & ((!\inst|Add0~5_cout\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~3_combout\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst|Add0~5_cout\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X113_Y14_N14
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst|Add0~2_combout\ $ (\SW[5]~input_o\ $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst|Add0~2_combout\ & ((\SW[5]~input_o\) # (!\inst|Add0~7\))) # (!\inst|Add0~2_combout\ & (\SW[5]~input_o\ & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X113_Y14_N16
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\SW[6]~input_o\ & ((\inst|Add0~1_combout\ & (\inst|Add0~9\ & VCC)) # (!\inst|Add0~1_combout\ & (!\inst|Add0~9\)))) # (!\SW[6]~input_o\ & ((\inst|Add0~1_combout\ & (!\inst|Add0~9\)) # (!\inst|Add0~1_combout\ & ((\inst|Add0~9\) # 
-- (GND)))))
-- \inst|Add0~11\ = CARRY((\SW[6]~input_o\ & (!\inst|Add0~1_combout\ & !\inst|Add0~9\)) # (!\SW[6]~input_o\ & ((!\inst|Add0~9\) # (!\inst|Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \inst|Add0~1_combout\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X113_Y14_N18
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \SW[7]~input_o\ $ (\inst|Add0~11\ $ (!\inst|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datad => \inst|Add0~0_combout\,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X112_Y14_N28
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|Equal0~1_combout\ & ((\inst|Mult0|auto_generated|op_3~6_combout\) # ((\inst|Mux3~0_combout\)))) # (!\inst|Equal0~1_combout\ & (((!\inst|Mux3~0_combout\ & \inst|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~6_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y14_N2
\inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\SW[7]~input_o\ & ((\SW[9]~input_o\ $ (\SW[3]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[7]~input_o\ & ((\SW[9]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[7]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X113_Y14_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (\SW[1]~input_o\ & (!\SW[6]~input_o\ & \SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X113_Y14_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\SW[7]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\) # ((\SW[3]~input_o\) # (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X113_Y14_N4
\inst|Mod0|auto_generated|divider|divider|selnose[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\SW[3]~input_o\) # ((\SW[2]~input_o\) # ((\SW[1]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X112_Y14_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ = (\SW[6]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datab => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\);

-- Location: LCCOMB_X109_Y14_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X109_Y14_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X109_Y14_N22
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\SW[2]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X109_Y14_N24
\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X109_Y14_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\);

-- Location: LCCOMB_X109_Y14_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\);

-- Location: LCCOMB_X109_Y14_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SW[5]~input_o\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\);

-- Location: LCCOMB_X114_Y14_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & ((\SW[4]~input_o\) # (GND)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X114_Y14_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\SW[1]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & (\SW[1]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\ & ((\SW[1]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X114_Y14_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\SW[2]~input_o\ $ (\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ $ (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\SW[2]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)) # (!\SW[2]~input_o\ 
-- & ((\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X114_Y14_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\SW[3]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # (!\SW[3]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & (\SW[3]~input_o\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\ & ((\SW[3]~input_o\) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X114_Y14_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X114_Y14_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\);

-- Location: LCCOMB_X113_Y14_N20
\inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst|Mux0~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\) # ((\SW[9]~input_o\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~6_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X112_Y14_N16
\inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst|Mux0~0_combout\ & (((!\inst|Mux3~0_combout\)) # (!\inst|Mod0|auto_generated|divider|divider|selnose\(0)))) # (!\inst|Mux0~0_combout\ & (((\inst|Mux3~0_combout\ & \inst|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose\(0),
	datab => \inst|Mux0~0_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mux0~3_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X96_Y26_N12
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst|Mux0~1_combout\ $ (VCC)
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux0~1_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X96_Y26_N14
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Mult0|auto_generated|op_3~8_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # 
-- (!\inst|Mult0|auto_generated|op_3~8_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))) # (!\inst|Equal0~0_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & ((!\inst|Mult0|auto_generated|op_3~8_combout\) # (!\inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X96_Y26_N16
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\inst|Equal0~0_combout\ & \inst|Mult0|auto_generated|op_3~10_combout\))))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\inst|Equal0~0_combout\ & \inst|Mult0|auto_generated|op_3~10_combout\)) # (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((\inst|Equal0~0_combout\ & \inst|Mult0|auto_generated|op_3~10_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X96_Y26_N18
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\inst|Equal0~0_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((\inst|Equal0~0_combout\ & \inst|Mult0|auto_generated|op_3~12_combout\)) # (GND)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X96_Y26_N20
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & VCC))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\inst|Equal0~0_combout\ & \inst|Mult0|auto_generated|op_3~14_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X96_Y26_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X96_Y26_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\);

-- Location: LCCOMB_X96_Y26_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & \inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst|Equal0~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\);

-- Location: LCCOMB_X97_Y26_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst|Equal0~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\);

-- Location: LCCOMB_X96_Y26_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\);

-- Location: LCCOMB_X96_Y26_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\ = (\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\);

-- Location: LCCOMB_X95_Y26_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\);

-- Location: LCCOMB_X95_Y26_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\);

-- Location: LCCOMB_X96_Y26_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & \inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	datac => \inst|Equal0~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\);

-- Location: LCCOMB_X96_Y26_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\);

-- Location: LCCOMB_X96_Y26_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\);

-- Location: LCCOMB_X112_Y14_N20
\inst|Mod0|auto_generated|divider|divider|selnose[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((!\SW[6]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datab => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\);

-- Location: LCCOMB_X114_Y14_N4
\inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = (\SW[6]~input_o\ & ((\SW[9]~input_o\ $ (\SW[2]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[6]~input_o\ & ((\SW[9]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[9]~input_o\ & (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \inst|Mux1~2_combout\);

-- Location: LCCOMB_X114_Y14_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[14]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\);

-- Location: LCCOMB_X113_Y14_N22
\inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~3_combout\ = (\inst|Mux1~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\) # ((\SW[9]~input_o\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[14]~7_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux1~3_combout\);

-- Location: LCCOMB_X112_Y14_N18
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst|Equal0~1_combout\ & (((\inst|Mux3~0_combout\)))) # (!\inst|Equal0~1_combout\ & ((\inst|Mux3~0_combout\ & (\inst|Mux1~3_combout\)) # (!\inst|Mux3~0_combout\ & ((\inst|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux1~3_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X111_Y14_N22
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|Equal0~1_combout\ & ((\inst|Mux1~0_combout\ & (!\inst|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\)) # (!\inst|Mux1~0_combout\ & ((\inst|Mult0|auto_generated|op_3~4_combout\))))) # (!\inst|Equal0~1_combout\ & 
-- (((\inst|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|selnose[5]~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Mult0|auto_generated|op_3~4_combout\,
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X97_Y26_N22
\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\);

-- Location: LCCOMB_X97_Y26_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\);

-- Location: LCCOMB_X95_Y26_N18
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~27_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datad => VCC,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X95_Y26_N20
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X95_Y26_N22
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\) # (GND))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X95_Y26_N24
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X95_Y26_N26
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\)))))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X95_Y26_N28
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\)))
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\,
	datad => VCC,
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X95_Y26_N30
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X96_Y26_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\);

-- Location: LCCOMB_X95_Y29_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\);

-- Location: LCCOMB_X96_Y26_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\);

-- Location: LCCOMB_X95_Y29_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\);

-- Location: LCCOMB_X95_Y26_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\);

-- Location: LCCOMB_X95_Y29_N20
\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\);

-- Location: LCCOMB_X95_Y29_N4
\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X95_Y29_N6
\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X95_Y29_N8
\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\)))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X95_Y29_N10
\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X95_Y31_N8
\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50_combout\);

-- Location: LCCOMB_X96_Y30_N18
\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\);

-- Location: LCCOMB_X96_Y30_N20
\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\);

-- Location: LCCOMB_X95_Y31_N26
\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51_combout\);

-- Location: LCCOMB_X95_Y29_N12
\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\);

-- Location: LCCOMB_X95_Y31_N28
\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52_combout\);

-- Location: LCCOMB_X95_Y26_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\);

-- Location: LCCOMB_X92_Y30_N26
\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\);

-- Location: LCCOMB_X95_Y30_N0
\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X95_Y31_N30
\inst1|Mod1|auto_generated|divider|divider|StageOut[24]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~53_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~53_combout\);

-- Location: LCCOMB_X95_Y30_N8
\inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\);

-- Location: LCCOMB_X95_Y31_N10
\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst1|Mod1|auto_generated|divider|divider|StageOut[24]~53_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[24]~53_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~53_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X95_Y31_N12
\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~52_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X95_Y31_N14
\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51_combout\)))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~51_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X95_Y31_N16
\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~50_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X95_Y31_N18
\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X95_Y31_N20
\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\) # 
-- ((!\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[27]~76_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\);

-- Location: LCCOMB_X95_Y31_N0
\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\);

-- Location: LCCOMB_X95_Y31_N6
\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\) # 
-- ((!\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[26]~77_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\);

-- Location: LCCOMB_X94_Y31_N0
\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55_combout\);

-- Location: LCCOMB_X94_Y31_N26
\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56_combout\);

-- Location: LCCOMB_X95_Y31_N24
\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[25]~78_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\);

-- Location: LCCOMB_X95_Y31_N2
\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\) # 
-- ((!\inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[24]~79_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\);

-- Location: LCCOMB_X94_Y31_N28
\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57_combout\);

-- Location: LCCOMB_X96_Y26_N30
\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst|Mux0~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\);

-- Location: LCCOMB_X95_Y30_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\);

-- Location: LCCOMB_X95_Y30_N18
\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X94_Y31_N30
\inst1|Mod1|auto_generated|divider|divider|StageOut[32]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~58_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~58_combout\);

-- Location: LCCOMB_X95_Y30_N2
\inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\);

-- Location: LCCOMB_X94_Y31_N10
\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst1|Mod1|auto_generated|divider|divider|StageOut[32]~58_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[32]~58_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~58_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X94_Y31_N12
\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~57_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X94_Y31_N14
\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\)))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~56_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X94_Y31_N16
\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~55_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X94_Y31_N18
\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\))))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\) # (GND))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\) # ((\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~54_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X94_Y31_N20
\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X95_Y31_N4
\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\) # 
-- ((!\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[36]~80_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\);

-- Location: LCCOMB_X95_Y34_N8
\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59_combout\);

-- Location: LCCOMB_X95_Y34_N10
\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60_combout\);

-- Location: LCCOMB_X95_Y31_N22
\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[35]~81_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\);

-- Location: LCCOMB_X95_Y34_N12
\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61_combout\);

-- Location: LCCOMB_X94_Y31_N6
\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\) # 
-- ((!\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[34]~82_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\);

-- Location: LCCOMB_X94_Y31_N8
\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62_combout\);

-- Location: LCCOMB_X94_Y31_N24
\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[33]~83_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\);

-- Location: LCCOMB_X94_Y31_N2
\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[32]~84_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\);

-- Location: LCCOMB_X95_Y34_N14
\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63_combout\);

-- Location: LCCOMB_X94_Y30_N4
\inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst|Mux1~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\);

-- Location: LCCOMB_X94_Y30_N18
\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34_combout\);

-- Location: LCCOMB_X94_Y30_N8
\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33_combout\);

-- Location: LCCOMB_X94_Y30_N24
\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

-- Location: LCCOMB_X95_Y34_N16
\inst1|Mod1|auto_generated|divider|divider|StageOut[40]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X95_Y34_N18
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X95_Y34_N20
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~63_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X95_Y34_N22
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\)))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~62_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X95_Y34_N24
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~61_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X95_Y34_N26
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\))))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\) # (GND))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60_combout\) # ((\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~60_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X95_Y34_N28
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~59_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X95_Y34_N30
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X95_Y34_N4
\inst1|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[45]~85_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X94_Y34_N2
\inst1|Mod1|auto_generated|divider|divider|StageOut[54]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~67_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~67_combout\);

-- Location: LCCOMB_X95_Y34_N6
\inst1|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[44]~86_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X94_Y34_N4
\inst1|Mod1|auto_generated|divider|divider|StageOut[53]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~68_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~68_combout\);

-- Location: LCCOMB_X94_Y34_N6
\inst1|Mod1|auto_generated|divider|divider|StageOut[52]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~69_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~69_combout\);

-- Location: LCCOMB_X94_Y31_N4
\inst1|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\) # 
-- ((!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[43]~87_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X95_Y34_N2
\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~70_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~70_combout\);

-- Location: LCCOMB_X94_Y31_N22
\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[42]~88_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X94_Y34_N8
\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\);

-- Location: LCCOMB_X95_Y34_N0
\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[41]~89_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\);

-- Location: LCCOMB_X94_Y30_N22
\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\) # 
-- ((!\inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[40]~97_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\);

-- Location: LCCOMB_X94_Y34_N0
\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\ = (!\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\);

-- Location: LCCOMB_X109_Y14_N8
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\SW[5]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[5]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\SW[5]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X109_Y14_N10
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\SW[1]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\SW[1]~input_o\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # 
-- (!\SW[1]~input_o\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X109_Y14_N12
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ (\SW[2]~input_o\ $ (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\ & (!\SW[2]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X109_Y14_N14
\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X110_Y14_N8
\inst|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|selnose\(10) = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	combout => \inst|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X111_Y14_N24
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|Equal0~1_combout\ & ((\inst|Mult0|auto_generated|op_3~2_combout\) # ((\inst|Mux3~0_combout\)))) # (!\inst|Equal0~1_combout\ & (((!\inst|Mux3~0_combout\ & \inst|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y14_N6
\inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~2_combout\ = (\SW[5]~input_o\ & ((\SW[1]~input_o\ $ (\SW[9]~input_o\)) # (!\SW[8]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[9]~input_o\ & (\SW[1]~input_o\)) # (!\SW[9]~input_o\ & ((!\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux2~2_combout\);

-- Location: LCCOMB_X114_Y14_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[13]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\);

-- Location: LCCOMB_X114_Y14_N0
\inst|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~3_combout\ = (\inst|Mux2~2_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\) # ((\SW[9]~input_o\) # (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~2_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[13]~8_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux2~3_combout\);

-- Location: LCCOMB_X111_Y14_N2
\inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~1_combout\ = (\inst|Mux2~0_combout\ & (((!\inst|Mux3~0_combout\)) # (!\inst|Div0|auto_generated|divider|divider|selnose\(10)))) # (!\inst|Mux2~0_combout\ & (((\inst|Mux3~0_combout\ & \inst|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|selnose\(10),
	datab => \inst|Mux2~0_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mux2~3_combout\,
	combout => \inst|Mux2~1_combout\);

-- Location: LCCOMB_X97_Y26_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~36_combout\ = (\inst|Mux2~1_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~36_combout\);

-- Location: LCCOMB_X97_Y26_N24
\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~35_combout\ = (\inst|Mux2~1_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux2~1_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~35_combout\);

-- Location: LCCOMB_X97_Y26_N8
\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~36_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[48]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~36_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[48]~35_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X94_Y30_N0
\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\);

-- Location: LCCOMB_X94_Y30_N14
\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38_combout\);

-- Location: LCCOMB_X94_Y30_N26
\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

-- Location: LCCOMB_X94_Y30_N10
\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\);

-- Location: LCCOMB_X94_Y30_N16
\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst|Mux2~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mux2~1_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\);

-- Location: LCCOMB_X94_Y34_N16
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\,
	datad => VCC,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X94_Y34_N18
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\)))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X94_Y34_N20
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\)))))
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X94_Y34_N22
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~70_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~70_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X94_Y34_N24
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[52]~69_combout\) # ((\inst1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~69_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X94_Y34_N26
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[53]~68_combout\ & 
-- !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[53]~68_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X94_Y34_N28
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst1|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # ((\inst1|Mod1|auto_generated|divider|divider|StageOut[54]~67_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[54]~67_combout\,
	datad => VCC,
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X94_Y34_N30
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X94_Y34_N14
\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~71_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[50]~96_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\);

-- Location: LCCOMB_X94_Y34_N10
\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~90_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[49]~65_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\);

-- Location: LCCOMB_X109_Y14_N0
\inst|Div0|auto_generated|divider|divider|StageOut[10]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\);

-- Location: LCCOMB_X109_Y14_N26
\inst|Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\SW[3]~input_o\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\SW[3]~input_o\ & 
-- (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Mod0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X109_Y14_N4
\inst|Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\SW[5]~input_o\)) # (!\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \SW[3]~input_o\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X112_Y14_N0
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X112_Y14_N2
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\SW[1]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\SW[1]~input_o\) # (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X112_Y14_N4
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\) # (!\SW[2]~input_o\))) # 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\SW[2]~input_o\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X112_Y14_N6
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\SW[3]~input_o\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\))) # 
-- (!\SW[3]~input_o\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[10]~0_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X112_Y14_N8
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X114_Y14_N30
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\SW[4]~input_o\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\SW[8]~input_o\ & ((\SW[4]~input_o\))) # 
-- (!\SW[8]~input_o\ & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X114_Y14_N8
\inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~2_combout\ = (\SW[9]~input_o\ & (((\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\inst|Mux3~1_combout\ & ((\SW[0]~input_o\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Mux3~1_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|Mux3~2_combout\);

-- Location: LCCOMB_X113_Y14_N2
\inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~3_combout\ = (\SW[9]~input_o\ & ((\SW[4]~input_o\ & ((!\SW[0]~input_o\) # (!\inst|Mux3~2_combout\))) # (!\SW[4]~input_o\ & ((\SW[0]~input_o\))))) # (!\SW[9]~input_o\ & (\inst|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~2_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst|Mux3~3_combout\);

-- Location: LCCOMB_X112_Y14_N22
\inst|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~4_combout\ = (\inst|Equal0~1_combout\ & (((\inst|Mux3~0_combout\)))) # (!\inst|Equal0~1_combout\ & ((\inst|Mux3~0_combout\ & (\inst|Mux3~3_combout\)) # (!\inst|Mux3~0_combout\ & ((\inst|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~3_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Mux3~4_combout\);

-- Location: LCCOMB_X111_Y14_N20
\inst|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~5_combout\ = (\inst|Equal0~1_combout\ & ((\inst|Mux3~4_combout\ & ((!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))) # (!\inst|Mux3~4_combout\ & (\inst|Mult0|auto_generated|op_3~0_combout\)))) # 
-- (!\inst|Equal0~1_combout\ & (((\inst|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \inst|Mux3~4_combout\,
	combout => \inst|Mux3~5_combout\);

-- Location: LCCOMB_X96_Y30_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~41_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Mux3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst|Mux3~5_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~41_combout\);

-- Location: LCCOMB_X96_Y30_N10
\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~40_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|Mux3~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst|Mux3~5_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~40_combout\);

-- Location: LCCOMB_X96_Y30_N24
\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~41_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[56]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~41_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[56]~40_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\);

-- Location: LCCOMB_X96_Y30_N14
\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst|Mux3~5_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~16_combout\,
	datac => \inst|Mux3~5_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\);

-- Location: LCCOMB_X94_Y34_N12
\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ = (\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\) # 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~66_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[48]~91_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\);

-- Location: LCCOMB_X100_Y54_N8
\inst3|binoutput[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[6]~0_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ $ 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ $ (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\,
	combout => \inst3|binoutput[6]~0_combout\);

-- Location: LCCOMB_X100_Y54_N2
\inst3|binoutput[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[5]~1_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ $ 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & 
-- ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\) # (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\,
	combout => \inst3|binoutput[5]~1_combout\);

-- Location: LCCOMB_X100_Y54_N20
\inst3|binoutput[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[4]~2_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\)))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\)) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\,
	combout => \inst3|binoutput[4]~2_combout\);

-- Location: LCCOMB_X100_Y54_N30
\inst3|binoutput[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[3]~3_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & !\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\)))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ $ 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\,
	combout => \inst3|binoutput[3]~3_combout\);

-- Location: LCCOMB_X100_Y54_N0
\inst3|binoutput[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[2]~4_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ & \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\,
	combout => \inst3|binoutput[2]~4_combout\);

-- Location: LCCOMB_X100_Y54_N10
\inst3|binoutput[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[1]~5_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ & ((\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\))) # 
-- (!\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ $ (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\,
	combout => \inst3|binoutput[1]~5_combout\);

-- Location: LCCOMB_X100_Y54_N28
\inst3|binoutput[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|binoutput[0]~6_combout\ = (\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\ & (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ $ 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\)))) # (!\inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\ & (!\inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\ & 
-- (\inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\ $ (\inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod1|auto_generated|divider|divider|StageOut[59]~75_combout\,
	datab => \inst1|Mod1|auto_generated|divider|divider|StageOut[58]~72_combout\,
	datac => \inst1|Mod1|auto_generated|divider|divider|StageOut[56]~73_combout\,
	datad => \inst1|Mod1|auto_generated|divider|divider|StageOut[57]~74_combout\,
	combout => \inst3|binoutput[0]~6_combout\);

-- Location: LCCOMB_X94_Y30_N28
\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Mux2~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mux2~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\);

-- Location: LCCOMB_X94_Y30_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Mux1~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\);

-- Location: LCCOMB_X95_Y26_N6
\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~20_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[52]~21_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\);

-- Location: LCCOMB_X95_Y26_N4
\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~17_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[54]~16_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\);

-- Location: LCCOMB_X96_Y29_N26
\inst4|binoutput[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~16_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	combout => \inst4|binoutput[6]~16_combout\);

-- Location: LCCOMB_X95_Y29_N30
\inst4|binoutput[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~17_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\,
	combout => \inst4|binoutput[3]~17_combout\);

-- Location: LCCOMB_X95_Y26_N16
\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~23_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[51]~22_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\);

-- Location: LCCOMB_X97_Y30_N14
\inst4|binoutput[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~9_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[3]~9_combout\);

-- Location: LCCOMB_X95_Y26_N2
\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~24_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\);

-- Location: LCCOMB_X97_Y30_N16
\inst4|binoutput[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\) # ((\inst4|binoutput[3]~9_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & ((\inst4|binoutput[3]~9_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datac => \inst4|binoutput[3]~9_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	combout => \inst4|binoutput[3]~10_combout\);

-- Location: LCCOMB_X97_Y30_N12
\inst4|binoutput[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~8_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	combout => \inst4|binoutput[3]~8_combout\);

-- Location: LCCOMB_X97_Y30_N26
\inst4|binoutput[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~11_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ $ ((\inst4|binoutput[3]~10_combout\)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & ((\inst4|binoutput[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \inst4|binoutput[3]~10_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datad => \inst4|binoutput[3]~8_combout\,
	combout => \inst4|binoutput[3]~11_combout\);

-- Location: LCCOMB_X95_Y26_N12
\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ = (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~19_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[53]~18_combout\,
	combout => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\);

-- Location: LCCOMB_X97_Y30_N28
\inst4|binoutput[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~12_combout\ = (!\inst4|binoutput[3]~11_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[3]~11_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	combout => \inst4|binoutput[3]~12_combout\);

-- Location: LCCOMB_X96_Y29_N20
\inst4|binoutput[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~18_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\) # 
-- (!\inst4|binoutput[3]~17_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & 
-- !\inst4|binoutput[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst4|binoutput[3]~17_combout\,
	combout => \inst4|binoutput[6]~18_combout\);

-- Location: LCCOMB_X96_Y29_N22
\inst4|binoutput[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~19_combout\ = (\inst4|binoutput[3]~12_combout\ & (!\inst4|binoutput[6]~18_combout\ & ((\inst4|binoutput[6]~16_combout\) # (\inst4|binoutput[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[6]~16_combout\,
	datab => \inst4|binoutput[3]~17_combout\,
	datac => \inst4|binoutput[3]~12_combout\,
	datad => \inst4|binoutput[6]~18_combout\,
	combout => \inst4|binoutput[6]~19_combout\);

-- Location: LCCOMB_X95_Y29_N22
\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\,
	datad => VCC,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X95_Y29_N24
\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X95_Y29_N26
\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\)))))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X95_Y29_N28
\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X96_Y30_N30
\inst1|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X92_Y30_N4
\inst1|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X96_Y30_N16
\inst1|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\) # 
-- ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X92_Y30_N30
\inst1|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X95_Y29_N14
\inst1|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X92_Y30_N8
\inst1|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X92_Y30_N6
\inst1|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X92_Y30_N0
\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X92_Y30_N20
\inst1|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X92_Y30_N10
\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datad => VCC,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X92_Y30_N12
\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- (!\inst1|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X92_Y30_N14
\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X92_Y30_N16
\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X92_Y30_N18
\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X92_Y30_N24
\inst1|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X89_Y30_N8
\inst1|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X92_Y30_N2
\inst1|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X90_Y30_N0
\inst1|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X92_Y30_N28
\inst1|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X89_Y30_N10
\inst1|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X95_Y30_N12
\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X89_Y30_N12
\inst1|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X95_Y30_N28
\inst1|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\) # 
-- ((!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X89_Y30_N22
\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst1|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datad => VCC,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X89_Y30_N24
\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\inst1|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X89_Y30_N26
\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X89_Y30_N28
\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X89_Y30_N30
\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X89_Y30_N16
\inst1|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X90_Y30_N30
\inst1|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X89_Y30_N6
\inst1|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X90_Y30_N26
\inst1|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X89_Y30_N2
\inst1|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X90_Y30_N28
\inst1|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X94_Y30_N20
\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~34_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~33_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X91_Y30_N0
\inst1|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X94_Y30_N6
\inst1|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst|Mux1~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X90_Y30_N6
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst1|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => VCC,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X90_Y30_N8
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\inst1|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X90_Y30_N10
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X90_Y30_N12
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X90_Y30_N14
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X90_Y30_N16
\inst1|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X90_Y30_N24
\inst1|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X90_Y30_N2
\inst1|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X90_Y30_N18
\inst1|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X91_Y30_N12
\inst1|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X90_Y30_N20
\inst1|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X94_Y30_N30
\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~39_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~38_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X91_Y30_N10
\inst1|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X91_Y30_N24
\inst1|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\inst|Mux2~1_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \inst|Mux2~1_combout\,
	combout => \inst1|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X91_Y30_N14
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst1|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\inst1|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X91_Y30_N16
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X91_Y30_N18
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst1|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\) # 
-- (\inst1|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X91_Y30_N20
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst1|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & (!\inst1|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X91_Y30_N22
\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X91_Y30_N28
\inst4|binoutput[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~14_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst4|binoutput[3]~14_combout\);

-- Location: LCCOMB_X97_Y29_N16
\inst4|binoutput[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~13_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & \inst4|binoutput[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datad => \inst4|binoutput[3]~11_combout\,
	combout => \inst4|binoutput[3]~13_combout\);

-- Location: LCCOMB_X97_Y30_N24
\inst4|binoutput[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~6_combout\ = ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	combout => \inst4|binoutput[6]~6_combout\);

-- Location: LCCOMB_X97_Y30_N18
\inst4|binoutput[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~7_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (\inst4|binoutput[6]~6_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \inst4|binoutput[6]~6_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	combout => \inst4|binoutput[6]~7_combout\);

-- Location: LCCOMB_X96_Y29_N16
\inst4|binoutput[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~15_combout\ = (\inst4|binoutput[3]~12_combout\ & (((\inst4|binoutput[6]~7_combout\)))) # (!\inst4|binoutput[3]~12_combout\ & (!\inst4|binoutput[3]~14_combout\ & (\inst4|binoutput[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[3]~14_combout\,
	datab => \inst4|binoutput[3]~13_combout\,
	datac => \inst4|binoutput[3]~12_combout\,
	datad => \inst4|binoutput[6]~7_combout\,
	combout => \inst4|binoutput[6]~15_combout\);

-- Location: LCCOMB_X98_Y30_N18
\inst4|binoutput[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[2]~21_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ $ (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[2]~21_combout\);

-- Location: LCCOMB_X94_Y30_N2
\inst4|binoutput[5]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~65_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|Mux1~1_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst4|binoutput[5]~65_combout\);

-- Location: LCCOMB_X98_Y30_N24
\inst4|binoutput[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~20_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ $ 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[6]~20_combout\);

-- Location: LCCOMB_X97_Y30_N30
\inst4|binoutput[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~22_combout\ = (!\inst4|binoutput[3]~12_combout\ & ((\inst4|binoutput[6]~20_combout\) # ((\inst4|binoutput[2]~21_combout\ & \inst4|binoutput[5]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[3]~12_combout\,
	datab => \inst4|binoutput[2]~21_combout\,
	datac => \inst4|binoutput[5]~65_combout\,
	datad => \inst4|binoutput[6]~20_combout\,
	combout => \inst4|binoutput[6]~22_combout\);

-- Location: LCCOMB_X96_Y29_N24
\inst4|binoutput[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~23_combout\ = (\inst4|binoutput[6]~19_combout\) # ((\inst4|binoutput[6]~15_combout\) # ((\inst4|binoutput[6]~22_combout\ & !\inst4|binoutput[3]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[6]~19_combout\,
	datab => \inst4|binoutput[6]~15_combout\,
	datac => \inst4|binoutput[6]~22_combout\,
	datad => \inst4|binoutput[3]~13_combout\,
	combout => \inst4|binoutput[6]~23_combout\);

-- Location: LCCOMB_X95_Y29_N0
\inst4|binoutput[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~28_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~49_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~29_combout\,
	combout => \inst4|binoutput[5]~28_combout\);

-- Location: LCCOMB_X98_Y30_N0
\inst4|binoutput[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~27_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ $ (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	combout => \inst4|binoutput[5]~27_combout\);

-- Location: LCCOMB_X91_Y30_N6
\inst4|binoutput~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput~26_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst4|binoutput~26_combout\);

-- Location: LCCOMB_X98_Y30_N10
\inst4|binoutput[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~29_combout\ = (\inst4|binoutput[5]~27_combout\ & (((\inst4|binoutput~26_combout\) # (!\inst4|binoutput[3]~8_combout\)))) # (!\inst4|binoutput[5]~27_combout\ & (\inst4|binoutput[5]~28_combout\ & (\inst4|binoutput~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[5]~28_combout\,
	datab => \inst4|binoutput[5]~27_combout\,
	datac => \inst4|binoutput~26_combout\,
	datad => \inst4|binoutput[3]~8_combout\,
	combout => \inst4|binoutput[5]~29_combout\);

-- Location: LCCOMB_X98_Y30_N4
\inst4|binoutput[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~30_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (\inst4|binoutput~26_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datab => \inst4|binoutput~26_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[5]~30_combout\);

-- Location: LCCOMB_X98_Y30_N20
\inst4|binoutput[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~24_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & ((\inst4|binoutput[5]~65_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ 
-- & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & ((\inst4|binoutput[5]~65_combout\) # (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[5]~65_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	combout => \inst4|binoutput[5]~24_combout\);

-- Location: LCCOMB_X98_Y30_N14
\inst4|binoutput[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~25_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (\inst4|binoutput[5]~24_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datab => \inst4|binoutput[5]~24_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[5]~25_combout\);

-- Location: LCCOMB_X95_Y29_N2
\inst4|binoutput[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~31_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~48_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~28_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~50_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~30_combout\,
	combout => \inst4|binoutput[5]~31_combout\);

-- Location: LCCOMB_X98_Y30_N22
\inst4|binoutput[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[5]~32_combout\ = (\inst4|binoutput[5]~29_combout\) # ((\inst4|binoutput[5]~25_combout\) # ((\inst4|binoutput[5]~30_combout\ & \inst4|binoutput[5]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[5]~29_combout\,
	datab => \inst4|binoutput[5]~30_combout\,
	datac => \inst4|binoutput[5]~25_combout\,
	datad => \inst4|binoutput[5]~31_combout\,
	combout => \inst4|binoutput[5]~32_combout\);

-- Location: LCCOMB_X91_Y30_N8
\inst4|binoutput[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[4]~33_combout\ = (\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))) # 
-- (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (((\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst4|binoutput[4]~33_combout\);

-- Location: LCCOMB_X96_Y29_N8
\inst4|binoutput[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~42_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[3]~42_combout\);

-- Location: LCCOMB_X96_Y29_N6
\inst4|binoutput[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~41_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[3]~41_combout\);

-- Location: LCCOMB_X96_Y29_N10
\inst4|binoutput[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~43_combout\ = (\inst4|binoutput[3]~41_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (\inst4|binoutput[3]~42_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datab => \inst4|binoutput[3]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datad => \inst4|binoutput[3]~41_combout\,
	combout => \inst4|binoutput[3]~43_combout\);

-- Location: LCCOMB_X96_Y29_N18
\inst4|binoutput[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~39_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[3]~39_combout\);

-- Location: LCCOMB_X96_Y29_N4
\inst4|binoutput[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~40_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & \inst4|binoutput[3]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst4|binoutput[3]~39_combout\,
	combout => \inst4|binoutput[3]~40_combout\);

-- Location: LCCOMB_X96_Y29_N2
\inst4|binoutput[3]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~34_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	combout => \inst4|binoutput[3]~34_combout\);

-- Location: LCCOMB_X96_Y29_N28
\inst4|binoutput[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~35_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ $ (((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & 
-- \inst4|binoutput[3]~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst4|binoutput[3]~34_combout\,
	combout => \inst4|binoutput[3]~35_combout\);

-- Location: LCCOMB_X96_Y30_N8
\inst4|binoutput[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~36_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\,
	combout => \inst4|binoutput[3]~36_combout\);

-- Location: LCCOMB_X96_Y29_N30
\inst4|binoutput[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~37_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (\inst4|binoutput[3]~36_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datac => \inst4|binoutput[3]~36_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[3]~37_combout\);

-- Location: LCCOMB_X96_Y29_N0
\inst4|binoutput[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~38_combout\ = (\inst4|binoutput[3]~13_combout\ & (\inst4|binoutput[3]~14_combout\)) # (!\inst4|binoutput[3]~13_combout\ & (((\inst4|binoutput[3]~35_combout\) # (\inst4|binoutput[3]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[3]~14_combout\,
	datab => \inst4|binoutput[3]~35_combout\,
	datac => \inst4|binoutput[3]~37_combout\,
	datad => \inst4|binoutput[3]~13_combout\,
	combout => \inst4|binoutput[3]~38_combout\);

-- Location: LCCOMB_X96_Y29_N12
\inst4|binoutput[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~44_combout\ = (\inst4|binoutput[3]~12_combout\ & ((\inst4|binoutput[3]~43_combout\) # ((\inst4|binoutput[3]~40_combout\)))) # (!\inst4|binoutput[3]~12_combout\ & (((\inst4|binoutput[3]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[3]~43_combout\,
	datab => \inst4|binoutput[3]~40_combout\,
	datac => \inst4|binoutput[3]~12_combout\,
	datad => \inst4|binoutput[3]~38_combout\,
	combout => \inst4|binoutput[3]~44_combout\);

-- Location: LCCOMB_X97_Y30_N2
\inst4|binoutput[2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[2]~49_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	combout => \inst4|binoutput[2]~49_combout\);

-- Location: LCCOMB_X91_Y30_N26
\inst4|binoutput~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput~45_combout\ = (!\inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst1|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst1|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \inst1|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst4|binoutput~45_combout\);

-- Location: LCCOMB_X95_Y30_N24
\inst4|binoutput[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[6]~46_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\)))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~52_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~32_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\,
	combout => \inst4|binoutput[6]~46_combout\);

-- Location: LCCOMB_X97_Y30_N8
\inst4|binoutput[3]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[3]~47_combout\ = ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\)) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	combout => \inst4|binoutput[3]~47_combout\);

-- Location: LCCOMB_X98_Y30_N6
\inst4|binoutput[2]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[2]~66_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (((!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & \inst4|binoutput[3]~47_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & \inst4|binoutput[3]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datad => \inst4|binoutput[3]~47_combout\,
	combout => \inst4|binoutput[2]~66_combout\);

-- Location: LCCOMB_X98_Y30_N8
\inst4|binoutput[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[2]~48_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (\inst4|binoutput[5]~31_combout\ & (\inst4|binoutput[6]~46_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & 
-- (((\inst4|binoutput[2]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datab => \inst4|binoutput[5]~31_combout\,
	datac => \inst4|binoutput[6]~46_combout\,
	datad => \inst4|binoutput[2]~66_combout\,
	combout => \inst4|binoutput[2]~48_combout\);

-- Location: LCCOMB_X98_Y30_N26
\inst4|binoutput[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[2]~50_combout\ = (\inst4|binoutput[2]~49_combout\ & ((\inst4|binoutput[5]~27_combout\) # ((\inst4|binoutput~45_combout\ & \inst4|binoutput[2]~48_combout\)))) # (!\inst4|binoutput[2]~49_combout\ & (\inst4|binoutput~45_combout\ & 
-- (\inst4|binoutput[2]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[2]~49_combout\,
	datab => \inst4|binoutput~45_combout\,
	datac => \inst4|binoutput[2]~48_combout\,
	datad => \inst4|binoutput[5]~27_combout\,
	combout => \inst4|binoutput[2]~50_combout\);

-- Location: LCCOMB_X97_Y30_N0
\inst4|binoutput[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~56_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\) # ((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	combout => \inst4|binoutput[1]~56_combout\);

-- Location: LCCOMB_X97_Y30_N6
\inst4|binoutput[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~55_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	combout => \inst4|binoutput[1]~55_combout\);

-- Location: LCCOMB_X97_Y30_N10
\inst4|binoutput[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~57_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & ((\inst4|binoutput[1]~55_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (\inst4|binoutput[1]~56_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (\inst4|binoutput[1]~56_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \inst4|binoutput[1]~56_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datad => \inst4|binoutput[1]~55_combout\,
	combout => \inst4|binoutput[1]~57_combout\);

-- Location: LCCOMB_X98_Y30_N12
\inst4|binoutput[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~51_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & 
-- \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	combout => \inst4|binoutput[1]~51_combout\);

-- Location: LCCOMB_X98_Y30_N30
\inst4|binoutput[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~52_combout\ = (\inst4|binoutput[1]~51_combout\) # ((\inst4|binoutput[3]~47_combout\ & (\inst4|binoutput[2]~21_combout\ & !\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[3]~47_combout\,
	datab => \inst4|binoutput[2]~21_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datad => \inst4|binoutput[1]~51_combout\,
	combout => \inst4|binoutput[1]~52_combout\);

-- Location: LCCOMB_X97_Y30_N4
\inst4|binoutput[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~53_combout\ = (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	combout => \inst4|binoutput[1]~53_combout\);

-- Location: LCCOMB_X98_Y30_N16
\inst4|binoutput[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~54_combout\ = (\inst4|binoutput[1]~52_combout\ & ((\inst4|binoutput~45_combout\) # ((\inst4|binoutput[1]~53_combout\ & \inst4|binoutput[2]~21_combout\)))) # (!\inst4|binoutput[1]~52_combout\ & (((\inst4|binoutput[1]~53_combout\ & 
-- \inst4|binoutput[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[1]~52_combout\,
	datab => \inst4|binoutput~45_combout\,
	datac => \inst4|binoutput[1]~53_combout\,
	datad => \inst4|binoutput[2]~21_combout\,
	combout => \inst4|binoutput[1]~54_combout\);

-- Location: LCCOMB_X98_Y30_N2
\inst4|binoutput[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[1]~58_combout\ = (\inst4|binoutput[1]~54_combout\) # ((\inst4|binoutput[1]~57_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\ $ (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[1]~57_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datad => \inst4|binoutput[1]~54_combout\,
	combout => \inst4|binoutput[1]~58_combout\);

-- Location: LCCOMB_X95_Y30_N20
\inst4|binoutput[0]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~63_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~51_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~31_combout\,
	combout => \inst4|binoutput[0]~63_combout\);

-- Location: LCCOMB_X95_Y30_N10
\inst4|binoutput[0]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~61_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\) # ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & 
-- !\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	combout => \inst4|binoutput[0]~61_combout\);

-- Location: LCCOMB_X97_Y30_N22
\inst4|binoutput[0]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~62_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\)) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[62]~47_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	combout => \inst4|binoutput[0]~62_combout\);

-- Location: LCCOMB_X95_Y30_N22
\inst4|binoutput[0]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~67_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & (\inst4|binoutput[0]~61_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\))) # 
-- (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & (((\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & \inst4|binoutput[0]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput[0]~61_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datad => \inst4|binoutput[0]~62_combout\,
	combout => \inst4|binoutput[0]~67_combout\);

-- Location: LCCOMB_X95_Y30_N16
\inst4|binoutput[0]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~68_combout\ = (\inst4|binoutput[0]~67_combout\) # ((\inst4|binoutput~26_combout\ & \inst4|binoutput[0]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|binoutput~26_combout\,
	datab => \inst4|binoutput[0]~63_combout\,
	datac => \inst4|binoutput[0]~67_combout\,
	combout => \inst4|binoutput[0]~68_combout\);

-- Location: LCCOMB_X97_Y30_N20
\inst4|binoutput[0]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~59_combout\ = (\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & ((\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\) # 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\)))) # (!\inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\ & (!\inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\ & 
-- (\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[58]~46_combout\,
	datab => \inst1|Mod0|auto_generated|divider|divider|StageOut[59]~45_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datad => \inst1|Mod0|auto_generated|divider|divider|StageOut[57]~37_combout\,
	combout => \inst4|binoutput[0]~59_combout\);

-- Location: LCCOMB_X98_Y30_N28
\inst4|binoutput[0]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~60_combout\ = (\inst4|binoutput[5]~27_combout\ & ((\inst4|binoutput[0]~59_combout\) # ((!\inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\ & \inst4|binoutput~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[60]~44_combout\,
	datab => \inst4|binoutput[0]~59_combout\,
	datac => \inst4|binoutput~26_combout\,
	datad => \inst4|binoutput[5]~27_combout\,
	combout => \inst4|binoutput[0]~60_combout\);

-- Location: LCCOMB_X95_Y30_N6
\inst4|binoutput[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|binoutput[0]~64_combout\ = (\inst4|binoutput[0]~60_combout\) # ((\inst4|binoutput[0]~68_combout\ & (\inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\ $ (\inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mod0|auto_generated|divider|divider|StageOut[61]~43_combout\,
	datab => \inst4|binoutput[0]~68_combout\,
	datac => \inst1|Mod0|auto_generated|divider|divider|StageOut[63]~42_combout\,
	datad => \inst4|binoutput[0]~60_combout\,
	combout => \inst4|binoutput[0]~64_combout\);

-- Location: LCCOMB_X111_Y15_N8
\inst5|binoutput[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|binoutput[6]~0_combout\ = ((!\inst|Mux0~1_combout\ & (!\inst|Mult0|auto_generated|op_3~8_combout\ & !\inst|Mult0|auto_generated|op_3~10_combout\))) # (!\inst|Mult0|auto_generated|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \inst|Mux0~1_combout\,
	datac => \inst|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst|Mult0|auto_generated|op_3~10_combout\,
	combout => \inst5|binoutput[6]~0_combout\);

-- Location: LCCOMB_X111_Y15_N26
\inst5|binoutput[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|binoutput[6]~1_combout\ = ((\inst5|binoutput[6]~0_combout\) # (!\inst|Mult0|auto_generated|op_3~14_combout\)) # (!\inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \inst5|binoutput[6]~0_combout\,
	combout => \inst5|binoutput[6]~1_combout\);

-- Location: LCCOMB_X111_Y15_N6
\inst|m[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[0]~10_combout\ = (\SW[9]~input_o\ & (!\SW[10]~input_o\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \inst|Mult0|auto_generated|op_3~8_combout\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[0]~10_combout\);

-- Location: LCCOMB_X111_Y15_N4
\inst|m[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[2]~9_combout\ = (\inst|Mult0|auto_generated|op_3~12_combout\ & (!\SW[8]~input_o\ & (!\SW[10]~input_o\ & \SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~12_combout\,
	datab => \SW[8]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst|m[2]~9_combout\);

-- Location: LCCOMB_X111_Y15_N28
\inst5|binoutput[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|binoutput[5]~2_combout\ = (\inst|m[2]~9_combout\ & ((\inst|m[0]~10_combout\) # ((\inst|Mux1~1_combout\) # (\inst|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|m[0]~10_combout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|m[2]~9_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst5|binoutput[5]~2_combout\);

-- Location: LCCOMB_X111_Y15_N2
\inst|m[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[3]~8_combout\ = (\SW[9]~input_o\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & (!\SW[10]~input_o\ & !\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datac => \SW[10]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \inst|m[3]~8_combout\);

-- Location: LCCOMB_X111_Y15_N30
\inst5|binoutput[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|binoutput[5]~3_combout\ = (\inst|m[3]~8_combout\) # ((\inst|Mult0|auto_generated|op_3~10_combout\ & (\inst5|binoutput[5]~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst5|binoutput[5]~2_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|m[3]~8_combout\,
	combout => \inst5|binoutput[5]~3_combout\);

-- Location: LCCOMB_X111_Y15_N14
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst|Mux0~1_combout\ $ (VCC)
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux0~1_combout\,
	datad => VCC,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X111_Y15_N16
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Mult0|auto_generated|op_3~8_combout\ & (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # 
-- (!\inst|Mult0|auto_generated|op_3~8_combout\ & (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))) # (!\inst|Equal0~0_combout\ & (((!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & ((!\inst|Mult0|auto_generated|op_3~8_combout\) # (!\inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~8_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X111_Y15_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\inst|Mult0|auto_generated|op_3~10_combout\ & \inst|Equal0~0_combout\))))) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\inst|Mult0|auto_generated|op_3~10_combout\ & \inst|Equal0~0_combout\)) # (GND)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((\inst|Mult0|auto_generated|op_3~10_combout\ & \inst|Equal0~0_combout\)) # (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Equal0~0_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X111_Y15_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\inst|Equal0~0_combout\))) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((\inst|Equal0~0_combout\ & \inst|Mult0|auto_generated|op_3~12_combout\)) # (GND)))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst|Mult0|auto_generated|op_3~12_combout\)) # (!\inst|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X111_Y15_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & VCC))) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\inst|Equal0~0_combout\ & \inst|Mult0|auto_generated|op_3~14_combout\)))))
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Mult0|auto_generated|op_3~14_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X111_Y15_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X110_Y15_N2
\inst1|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X110_Y15_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~14_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~14_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X110_Y15_N6
\inst1|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X110_Y15_N4
\inst1|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~12_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~12_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X110_Y15_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X110_Y15_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~10_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X110_Y15_N12
\inst1|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\inst|Equal0~0_combout\ & (\inst|Mult0|auto_generated|op_3~8_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X110_Y15_N14
\inst1|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X111_Y15_N0
\inst1|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X110_Y15_N16
\inst1|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X112_Y15_N10
\inst1|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\inst|Mux1~1_combout\ & !\inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux1~1_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X112_Y15_N8
\inst1|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\inst|Mux1~1_combout\ & \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux1~1_combout\,
	datad => \inst1|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X110_Y15_N18
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\) # (\inst1|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datad => VCC,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X110_Y15_N20
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X110_Y15_N22
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\inst1|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # ((\inst1|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X110_Y15_N24
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\inst1|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\inst1|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X110_Y15_N26
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\inst1|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\) # 
-- (\inst1|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X110_Y15_N28
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\inst1|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & (!\inst1|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & 
-- !\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datab => \inst1|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datad => VCC,
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X110_Y15_N30
\inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \inst1|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X111_Y15_N10
\inst5|binoutput[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|binoutput[3]~4_combout\ = ((!\inst|Mux1~1_combout\ & (!\inst|Mult0|auto_generated|op_3~8_combout\ & !\inst|Mux0~1_combout\))) # (!\inst|Mult0|auto_generated|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|auto_generated|op_3~10_combout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|Mult0|auto_generated|op_3~8_combout\,
	datad => \inst|Mux0~1_combout\,
	combout => \inst5|binoutput[3]~4_combout\);

-- Location: LCCOMB_X111_Y15_N12
\inst5|binoutput[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|binoutput[3]~5_combout\ = ((!\inst|m[3]~8_combout\ & ((\inst5|binoutput[3]~4_combout\) # (!\inst|m[2]~9_combout\)))) # (!\inst5|binoutput[6]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|binoutput[3]~4_combout\,
	datab => \inst|m[2]~9_combout\,
	datac => \inst5|binoutput[6]~1_combout\,
	datad => \inst|m[3]~8_combout\,
	combout => \inst5|binoutput[3]~5_combout\);

-- Location: LCCOMB_X111_Y14_N30
\inst|m[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|m[1]~11_combout\ = (!\SW[8]~input_o\ & (\inst|Mult0|auto_generated|op_3~10_combout\ & (\SW[9]~input_o\ & !\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst|Mult0|auto_generated|op_3~10_combout\,
	datac => \SW[9]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst|m[1]~11_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


