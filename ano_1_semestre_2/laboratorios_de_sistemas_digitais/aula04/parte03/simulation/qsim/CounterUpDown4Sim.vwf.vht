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
-- Generated on "04/11/2022 09:52:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counterupdown4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counterupdown4_vhd_vec_tst IS
END counterupdown4_vhd_vec_tst;
ARCHITECTURE counterupdown4_arch OF counterupdown4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL updow : STD_LOGIC;
COMPONENT counterupdown4
	PORT (
	clock : IN STD_LOGIC;
	count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	updow : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counterupdown4
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	count => count,
	reset => reset,
	updow => updow
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 100000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
	WAIT FOR 40000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- updow
t_prcs_updow: PROCESS
BEGIN
	updow <= '0';
	WAIT FOR 850000 ps;
	updow <= '1';
WAIT;
END PROCESS t_prcs_updow;
END counterupdown4_arch;
