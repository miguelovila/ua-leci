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
-- Generated on "03/23/2022 22:03:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          penc4_2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY penc4_2_vhd_vec_tst IS
END penc4_2_vhd_vec_tst;
ARCHITECTURE penc4_2_arch OF penc4_2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inputport : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outpuport : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL validoutp : STD_LOGIC;
COMPONENT penc4_2
	PORT (
	inputport : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	outpuport : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	validoutp : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : penc4_2
	PORT MAP (
-- list connections between master ports and signals
	inputport => inputport,
	outpuport => outpuport,
	validoutp => validoutp
	);
-- inputport[3]
t_prcs_inputport_3: PROCESS
BEGIN
	inputport(3) <= '0';
	WAIT FOR 280000 ps;
	inputport(3) <= '1';
	WAIT FOR 320000 ps;
	inputport(3) <= '0';
	WAIT FOR 160000 ps;
	inputport(3) <= '1';
	WAIT FOR 40000 ps;
	inputport(3) <= '0';
	WAIT FOR 40000 ps;
	inputport(3) <= '1';
	WAIT FOR 40000 ps;
	inputport(3) <= '0';
	WAIT FOR 40000 ps;
	inputport(3) <= '1';
	WAIT FOR 40000 ps;
	inputport(3) <= '0';
WAIT;
END PROCESS t_prcs_inputport_3;
-- inputport[2]
t_prcs_inputport_2: PROCESS
BEGIN
	inputport(2) <= '0';
	WAIT FOR 120000 ps;
	inputport(2) <= '1';
	WAIT FOR 160000 ps;
	inputport(2) <= '0';
	WAIT FOR 160000 ps;
	inputport(2) <= '1';
	WAIT FOR 160000 ps;
	inputport(2) <= '0';
	WAIT FOR 120000 ps;
	inputport(2) <= '1';
	WAIT FOR 40000 ps;
	inputport(2) <= '0';
	WAIT FOR 80000 ps;
	inputport(2) <= '1';
	WAIT FOR 40000 ps;
	inputport(2) <= '0';
	WAIT FOR 40000 ps;
	inputport(2) <= '1';
	WAIT FOR 40000 ps;
	inputport(2) <= '0';
WAIT;
END PROCESS t_prcs_inputport_2;
-- inputport[1]
t_prcs_inputport_1: PROCESS
BEGIN
	inputport(1) <= '0';
	WAIT FOR 40000 ps;
	inputport(1) <= '1';
	WAIT FOR 80000 ps;
	inputport(1) <= '0';
	WAIT FOR 80000 ps;
	inputport(1) <= '1';
	WAIT FOR 80000 ps;
	inputport(1) <= '0';
	WAIT FOR 80000 ps;
	inputport(1) <= '1';
	WAIT FOR 80000 ps;
	inputport(1) <= '0';
	WAIT FOR 80000 ps;
	inputport(1) <= '1';
	WAIT FOR 80000 ps;
	inputport(1) <= '0';
	WAIT FOR 80000 ps;
	inputport(1) <= '1';
	WAIT FOR 40000 ps;
	inputport(1) <= '0';
	WAIT FOR 120000 ps;
	inputport(1) <= '1';
	WAIT FOR 40000 ps;
	inputport(1) <= '0';
	WAIT FOR 40000 ps;
	inputport(1) <= '1';
	WAIT FOR 40000 ps;
	inputport(1) <= '0';
WAIT;
END PROCESS t_prcs_inputport_1;
-- inputport[0]
t_prcs_inputport_0: PROCESS
BEGIN
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 160000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
	WAIT FOR 40000 ps;
	inputport(0) <= '1';
	WAIT FOR 40000 ps;
	inputport(0) <= '0';
WAIT;
END PROCESS t_prcs_inputport_0;
END penc4_2_arch;
