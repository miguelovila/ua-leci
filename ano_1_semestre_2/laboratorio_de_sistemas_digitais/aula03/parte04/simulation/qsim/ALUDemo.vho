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

-- DATE "03/31/2022 11:18:13"

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

ENTITY 	bin2bcd IS
    PORT (
	rinport : IN std_logic_vector(3 DOWNTO 0);
	minport : IN std_logic_vector(3 DOWNTO 0);
	binout0 : OUT std_logic_vector(3 DOWNTO 0);
	binout1 : OUT std_logic_vector(3 DOWNTO 0);
	binout2 : OUT std_logic_vector(3 DOWNTO 0)
	);
END bin2bcd;

ARCHITECTURE structure OF bin2bcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rinport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_minport : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_binout0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_binout1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_binout2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \binout0[0]~output_o\ : std_logic;
SIGNAL \binout0[1]~output_o\ : std_logic;
SIGNAL \binout0[2]~output_o\ : std_logic;
SIGNAL \binout0[3]~output_o\ : std_logic;
SIGNAL \binout1[0]~output_o\ : std_logic;
SIGNAL \binout1[1]~output_o\ : std_logic;
SIGNAL \binout1[2]~output_o\ : std_logic;
SIGNAL \binout1[3]~output_o\ : std_logic;
SIGNAL \binout2[0]~output_o\ : std_logic;
SIGNAL \binout2[1]~output_o\ : std_logic;
SIGNAL \binout2[2]~output_o\ : std_logic;
SIGNAL \binout2[3]~output_o\ : std_logic;
SIGNAL \rinport[0]~input_o\ : std_logic;
SIGNAL \minport[3]~input_o\ : std_logic;
SIGNAL \minport[2]~input_o\ : std_logic;
SIGNAL \minport[1]~input_o\ : std_logic;
SIGNAL \minport[0]~input_o\ : std_logic;
SIGNAL \rinport[3]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ : std_logic;
SIGNAL \rinport[2]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ : std_logic;
SIGNAL \rinport[1]~input_o\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ : std_logic;

BEGIN

ww_rinport <= rinport;
ww_minport <= minport;
binout0 <= ww_binout0;
binout1 <= ww_binout1;
binout2 <= ww_binout2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~10_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\ <= NOT \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\;
\Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\ <= NOT \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\;

\binout0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\,
	devoe => ww_devoe,
	o => \binout0[0]~output_o\);

\binout0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\,
	devoe => ww_devoe,
	o => \binout0[1]~output_o\);

\binout0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\,
	devoe => ww_devoe,
	o => \binout0[2]~output_o\);

\binout0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\,
	devoe => ww_devoe,
	o => \binout0[3]~output_o\);

\binout1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \binout1[0]~output_o\);

\binout1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \binout1[1]~output_o\);

\binout1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_5_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \binout1[2]~output_o\);

\binout1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~8_combout\,
	devoe => ww_devoe,
	o => \binout1[3]~output_o\);

\binout2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_7_result_int[8]~12_combout\,
	devoe => ww_devoe,
	o => \binout2[0]~output_o\);

\binout2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Div0|auto_generated|divider|divider|ALT_INV_add_sub_6_result_int[7]~10_combout\,
	devoe => ww_devoe,
	o => \binout2[1]~output_o\);

\binout2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binout2[2]~output_o\);

\binout2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binout2[3]~output_o\);

\rinport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rinport(0),
	o => \rinport[0]~input_o\);

\minport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minport(3),
	o => \minport[3]~input_o\);

\minport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minport(2),
	o => \minport[2]~input_o\);

\minport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minport(1),
	o => \minport[1]~input_o\);

\minport[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_minport(0),
	o => \minport[0]~input_o\);

\rinport[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rinport(3),
	o => \rinport[3]~input_o\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \rinport[3]~input_o\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\rinport[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[3]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\minport[0]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\minport[0]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\minport[0]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[0]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\minport[1]~input_o\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\minport[1]~input_o\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\minport[1]~input_o\) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[1]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\minport[2]~input_o\ & (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\minport[2]~input_o\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\minport[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[2]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\minport[3]~input_o\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\minport[3]~input_o\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\minport[3]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[3]~input_o\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

\Mod0|auto_generated|divider|divider|StageOut[54]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ = (\minport[3]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\);

\Mod0|auto_generated|divider|divider|StageOut[54]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\);

\Mod0|auto_generated|divider|divider|StageOut[53]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\ = (\minport[2]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\);

\Mod0|auto_generated|divider|divider|StageOut[53]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\);

\Mod0|auto_generated|divider|divider|StageOut[52]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ = (\minport[1]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[1]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\);

\Mod0|auto_generated|divider|divider|StageOut[52]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\);

\Mod0|auto_generated|divider|divider|StageOut[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\ = (\minport[0]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[0]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\);

\Mod0|auto_generated|divider|divider|StageOut[51]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\);

\Mod0|auto_generated|divider|divider|StageOut[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ = (\rinport[3]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[3]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\);

\Mod0|auto_generated|divider|divider|StageOut[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\);

\rinport[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rinport(2),
	o => \rinport[2]~input_o\);

\Mod0|auto_generated|divider|divider|StageOut[49]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \rinport[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rinport[2]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\);

\Mod0|auto_generated|divider|divider|StageOut[49]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\ = (\rinport[2]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[2]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~50_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~51_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~49_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~45_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~43_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~41_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

\Mod0|auto_generated|divider|divider|StageOut[56]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\ = (\rinport[0]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[0]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\);

\Mod0|auto_generated|divider|divider|StageOut[56]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\ = (\rinport[0]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~52_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[56]~53_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\);

\Mod0|auto_generated|divider|divider|StageOut[63]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\minport[3]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \minport[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\);

\Mod0|auto_generated|divider|divider|StageOut[63]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\);

\Mod0|auto_generated|divider|divider|StageOut[62]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\minport[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \minport[2]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\);

\Mod0|auto_generated|divider|divider|StageOut[62]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\);

\Mod0|auto_generated|divider|divider|StageOut[61]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\minport[1]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \minport[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\);

\Mod0|auto_generated|divider|divider|StageOut[61]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\);

\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

\Mod1|auto_generated|divider|divider|StageOut[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\);

\Mod1|auto_generated|divider|divider|StageOut[27]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\);

\Mod1|auto_generated|divider|divider|StageOut[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\);

\Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

\Mod1|auto_generated|divider|divider|StageOut[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\);

\Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

\Mod0|auto_generated|divider|divider|StageOut[60]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\minport[0]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \minport[0]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\);

\Mod1|auto_generated|divider|divider|StageOut[24]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\);

\Mod0|auto_generated|divider|divider|StageOut[60]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\);

\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

\Mod1|auto_generated|divider|divider|StageOut[24]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\);

\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~59_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~56_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

\Mod1|auto_generated|divider|divider|StageOut[36]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[27]~82_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\);

\Mod1|auto_generated|divider|divider|StageOut[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\);

\Mod1|auto_generated|divider|divider|StageOut[35]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[26]~83_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\);

\Mod1|auto_generated|divider|divider|StageOut[35]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\);

\Mod1|auto_generated|divider|divider|StageOut[34]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[25]~84_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\);

\Mod1|auto_generated|divider|divider|StageOut[34]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\);

\Mod1|auto_generated|divider|divider|StageOut[33]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[24]~85_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\);

\Mod1|auto_generated|divider|divider|StageOut[33]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\);

\Mod0|auto_generated|divider|divider|StageOut[59]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\rinport[3]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \rinport[3]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\);

\Mod1|auto_generated|divider|divider|StageOut[32]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\);

\Mod0|auto_generated|divider|divider|StageOut[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\);

\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

\Mod1|auto_generated|divider|divider|StageOut[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\);

\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~64_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~63_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[34]~62_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~61_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

\Mod1|auto_generated|divider|divider|StageOut[45]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[36]~86_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\);

\Mod1|auto_generated|divider|divider|StageOut[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\);

\Mod1|auto_generated|divider|divider|StageOut[44]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[35]~87_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\);

\Mod1|auto_generated|divider|divider|StageOut[44]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\);

\Mod1|auto_generated|divider|divider|StageOut[43]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[34]~88_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\);

\Mod1|auto_generated|divider|divider|StageOut[43]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\);

\Mod1|auto_generated|divider|divider|StageOut[42]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[33]~89_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\);

\Mod1|auto_generated|divider|divider|StageOut[42]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\);

\Mod1|auto_generated|divider|divider|StageOut[41]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[32]~90_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\);

\Mod1|auto_generated|divider|divider|StageOut[41]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\);

\Mod1|auto_generated|divider|divider|StageOut[40]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\rinport[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \rinport[2]~input_o\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\);

\Mod0|auto_generated|divider|divider|StageOut[58]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\ = (\rinport[2]~input_o\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[2]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\);

\Mod0|auto_generated|divider|divider|StageOut[58]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\);

\Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\);

\Mod1|auto_generated|divider|divider|StageOut[40]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[41]~69_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[42]~68_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[43]~67_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[44]~66_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[45]~65_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

\Mod1|auto_generated|divider|divider|StageOut[54]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[45]~91_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\);

\Mod1|auto_generated|divider|divider|StageOut[54]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\);

\Mod1|auto_generated|divider|divider|StageOut[53]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[44]~92_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\);

\Mod1|auto_generated|divider|divider|StageOut[53]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\);

\Mod1|auto_generated|divider|divider|StageOut[52]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[43]~93_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\);

\Mod1|auto_generated|divider|divider|StageOut[52]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\);

\Mod1|auto_generated|divider|divider|StageOut[51]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[42]~94_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\);

\Mod1|auto_generated|divider|divider|StageOut[51]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\);

\Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[41]~95_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

\Mod1|auto_generated|divider|divider|StageOut[50]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\);

\Mod1|auto_generated|divider|divider|StageOut[49]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[0]~12_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[40]~102_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\);

\Mod1|auto_generated|divider|divider|StageOut[49]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\);

\rinport[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rinport(1),
	o => \rinport[1]~input_o\);

\Mod0|auto_generated|divider|divider|StageOut[48]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \rinport[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \rinport[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\);

\Mod0|auto_generated|divider|divider|StageOut[48]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\ = (\rinport[1]~input_o\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[1]~input_o\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\);

\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~63_combout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

\Mod1|auto_generated|divider|divider|StageOut[48]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\rinport[1]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \rinport[1]~input_o\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\);

\Mod0|auto_generated|divider|divider|StageOut[57]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \rinport[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \rinport[1]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\);

\Mod0|auto_generated|divider|divider|StageOut[57]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\);

\Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\);

\Mod1|auto_generated|divider|divider|StageOut[48]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[0]~14_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ & (!\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((((\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ & ((\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[51]~99_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[51]~74_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~7\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[52]~98_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[52]~73_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[53]~97_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[53]~72_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[54]~96_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[54]~71_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

\Mod1|auto_generated|divider|divider|StageOut[56]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\rinport[0]~input_o\)) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[0]~input_o\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[0]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[56]~78_combout\);

\Mod1|auto_generated|divider|divider|StageOut[57]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[48]~103_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[48]~77_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[57]~79_combout\);

\Mod1|auto_generated|divider|divider|StageOut[58]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[49]~101_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[49]~76_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[58]~80_combout\);

\Mod1|auto_generated|divider|divider|StageOut[59]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[50]~75_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[59]~81_combout\);

\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~57_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~55_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[63]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

\Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~65_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

\Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

\Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[62]~66_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

\Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

\Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[61]~67_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

\Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

\Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[60]~68_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

\Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~47_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # (\Div1|auto_generated|divider|divider|StageOut[15]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

\Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

\Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

\Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[59]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~58_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

\Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~51_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[20]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

\Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

\Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

\Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

\Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[22]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

\Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

\Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

\Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

\Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

\Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

\Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

\Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\rinport[2]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \rinport[2]~input_o\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~60_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

\Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

\Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

\Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

\Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

\Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

\Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

\Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

\Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\rinport[1]~input_o\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \rinport[1]~input_o\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~61_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~64_combout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

\Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~75_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~72_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \rinport[3]~input_o\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\rinport[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[3]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\minport[0]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\minport[0]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\minport[0]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[0]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\minport[1]~input_o\ & ((GND) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\minport[1]~input_o\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\minport[1]~input_o\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[1]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\minport[2]~input_o\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\minport[2]~input_o\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\minport[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[2]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\minport[3]~input_o\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\minport[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\minport[3]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \minport[3]~input_o\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

\Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\minport[3]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

\Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\minport[2]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

\Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

\Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\minport[1]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[1]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

\Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

\Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\minport[0]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \minport[0]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

\Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

\Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\rinport[3]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[3]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

\Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

\Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\rinport[2]~input_o\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[2]~input_o\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

\Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\rinport[2]~input_o\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rinport[2]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\Div0|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ & !\Div0|auto_generated|divider|divider|StageOut[52]~5_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

ww_binout0(0) <= \binout0[0]~output_o\;

ww_binout0(1) <= \binout0[1]~output_o\;

ww_binout0(2) <= \binout0[2]~output_o\;

ww_binout0(3) <= \binout0[3]~output_o\;

ww_binout1(0) <= \binout1[0]~output_o\;

ww_binout1(1) <= \binout1[1]~output_o\;

ww_binout1(2) <= \binout1[2]~output_o\;

ww_binout1(3) <= \binout1[3]~output_o\;

ww_binout2(0) <= \binout2[0]~output_o\;

ww_binout2(1) <= \binout2[1]~output_o\;

ww_binout2(2) <= \binout2[2]~output_o\;

ww_binout2(3) <= \binout2[3]~output_o\;
END structure;


