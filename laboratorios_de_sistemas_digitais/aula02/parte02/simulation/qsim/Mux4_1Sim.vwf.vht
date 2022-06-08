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
-- Generated on "03/22/2022 12:42:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux4_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux4_1_vhd_vec_tst IS
END mux4_1_vhd_vec_tst;
ARCHITECTURE mux4_1_arch OF mux4_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inpport : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL outport : STD_LOGIC;
SIGNAL selport : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mux4_1
	PORT (
	inpport : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	outport : OUT STD_LOGIC;
	selport : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux4_1
	PORT MAP (
-- list connections between master ports and signals
	inpport => inpport,
	outport => outport,
	selport => selport
	);
-- inpport[3]
t_prcs_inpport_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		inpport(3) <= '0';
		WAIT FOR 80000 ps;
		inpport(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	inpport(3) <= '0';
WAIT;
END PROCESS t_prcs_inpport_3;
-- inpport[2]
t_prcs_inpport_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		inpport(2) <= '0';
		WAIT FOR 40000 ps;
		inpport(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	inpport(2) <= '0';
WAIT;
END PROCESS t_prcs_inpport_2;
-- inpport[1]
t_prcs_inpport_1: PROCESS
BEGIN
LOOP
	inpport(1) <= '0';
	WAIT FOR 20000 ps;
	inpport(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_inpport_1;
-- inpport[0]
t_prcs_inpport_0: PROCESS
BEGIN
LOOP
	inpport(0) <= '0';
	WAIT FOR 10000 ps;
	inpport(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_inpport_0;
-- selport[1]
t_prcs_selport_1: PROCESS
BEGIN
	selport(1) <= '0';
	WAIT FOR 320000 ps;
	selport(1) <= '1';
	WAIT FOR 320000 ps;
	selport(1) <= '0';
	WAIT FOR 320000 ps;
	selport(1) <= '1';
WAIT;
END PROCESS t_prcs_selport_1;
-- selport[0]
t_prcs_selport_0: PROCESS
BEGIN
	selport(0) <= '0';
	WAIT FOR 160000 ps;
	selport(0) <= '1';
	WAIT FOR 160000 ps;
	selport(0) <= '0';
	WAIT FOR 160000 ps;
	selport(0) <= '1';
	WAIT FOR 160000 ps;
	selport(0) <= '0';
	WAIT FOR 160000 ps;
	selport(0) <= '1';
	WAIT FOR 160000 ps;
	selport(0) <= '0';
WAIT;
END PROCESS t_prcs_selport_0;
END mux4_1_arch;
