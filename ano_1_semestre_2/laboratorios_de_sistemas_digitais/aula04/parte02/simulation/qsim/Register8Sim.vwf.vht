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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/10/2022 16:11:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          register8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY register8_vhd_vec_tst IS
END register8_vhd_vec_tst;
ARCHITECTURE register8_arch OF register8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL wrEn : STD_LOGIC;
COMPONENT register8
	PORT (
	clk : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	wrEn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : register8
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dataIn => dataIn,
	dataOut => dataOut,
	wrEn => wrEn
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 12500 ps;
	clk <= '1';
	WAIT FOR 37500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- dataIn[7]
t_prcs_dataIn_7: PROCESS
BEGIN
	dataIn(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_7;
-- dataIn[6]
t_prcs_dataIn_6: PROCESS
BEGIN
	dataIn(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_6;
-- dataIn[5]
t_prcs_dataIn_5: PROCESS
BEGIN
	dataIn(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_5;
-- dataIn[4]
t_prcs_dataIn_4: PROCESS
BEGIN
	dataIn(4) <= '0';
	WAIT FOR 800000 ps;
	dataIn(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_4;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '0';
	WAIT FOR 400000 ps;
	dataIn(3) <= '1';
	WAIT FOR 400000 ps;
	dataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		dataIn(2) <= '0';
		WAIT FOR 200000 ps;
		dataIn(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	dataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
LOOP
	dataIn(1) <= '0';
	WAIT FOR 100000 ps;
	dataIn(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
LOOP
	dataIn(0) <= '0';
	WAIT FOR 50000 ps;
	dataIn(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dataIn_0;

-- wrEn
t_prcs_wrEn: PROCESS
BEGIN
	wrEn <= '0';
	WAIT FOR 60000 ps;
	wrEn <= '1';
	WAIT FOR 10000 ps;
	wrEn <= '0';
	WAIT FOR 50000 ps;
	wrEn <= '1';
	WAIT FOR 10000 ps;
	wrEn <= '0';
	WAIT FOR 60000 ps;
	wrEn <= '1';
	WAIT FOR 20000 ps;
	wrEn <= '0';
	WAIT FOR 140000 ps;
	wrEn <= '1';
	WAIT FOR 20000 ps;
	wrEn <= '0';
	WAIT FOR 180000 ps;
	wrEn <= '1';
WAIT;
END PROCESS t_prcs_wrEn;
END register8_arch;
