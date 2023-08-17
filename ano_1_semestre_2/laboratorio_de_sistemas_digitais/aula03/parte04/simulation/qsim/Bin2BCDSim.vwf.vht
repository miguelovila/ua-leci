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
-- Generated on "03/31/2022 11:18:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bin2bcd
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin2bcd_vhd_vec_tst IS
END bin2bcd_vhd_vec_tst;
ARCHITECTURE bin2bcd_arch OF bin2bcd_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL binout0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL binout1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL binout2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL minport : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rinport : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT bin2bcd
	PORT (
	binout0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	binout1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	binout2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	minport : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	rinport : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bin2bcd
	PORT MAP (
-- list connections between master ports and signals
	binout0 => binout0,
	binout1 => binout1,
	binout2 => binout2,
	minport => minport,
	rinport => rinport
	);
-- minport[3]
t_prcs_minport_3: PROCESS
BEGIN
	minport(3) <= '1';
	WAIT FOR 320000 ps;
	minport(3) <= '0';
WAIT;
END PROCESS t_prcs_minport_3;
-- minport[2]
t_prcs_minport_2: PROCESS
BEGIN
	minport(2) <= '1';
	WAIT FOR 320000 ps;
	minport(2) <= '0';
WAIT;
END PROCESS t_prcs_minport_2;
-- minport[1]
t_prcs_minport_1: PROCESS
BEGIN
	minport(1) <= '1';
	WAIT FOR 320000 ps;
	minport(1) <= '0';
WAIT;
END PROCESS t_prcs_minport_1;
-- minport[0]
t_prcs_minport_0: PROCESS
BEGIN
	minport(0) <= '0';
WAIT;
END PROCESS t_prcs_minport_0;
-- rinport[3]
t_prcs_rinport_3: PROCESS
BEGIN
	rinport(3) <= '0';
WAIT;
END PROCESS t_prcs_rinport_3;
-- rinport[2]
t_prcs_rinport_2: PROCESS
BEGIN
	rinport(2) <= '0';
WAIT;
END PROCESS t_prcs_rinport_2;
-- rinport[1]
t_prcs_rinport_1: PROCESS
BEGIN
	rinport(1) <= '0';
WAIT;
END PROCESS t_prcs_rinport_1;
-- rinport[0]
t_prcs_rinport_0: PROCESS
BEGIN
	rinport(0) <= '1';
	WAIT FOR 200000 ps;
	rinport(0) <= '0';
WAIT;
END PROCESS t_prcs_rinport_0;
END bin2bcd_arch;
