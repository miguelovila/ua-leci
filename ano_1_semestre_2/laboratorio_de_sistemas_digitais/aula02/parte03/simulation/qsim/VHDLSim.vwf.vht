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
-- Generated on "03/26/2022 18:40:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          displaydemovhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY displaydemovhdl_vhd_vec_tst IS
END displaydemovhdl_vhd_vec_tst;
ARCHITECTURE displaydemovhdl_arch OF displaydemovhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL hex0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL key : STD_LOGIC_VECTOR(0 DOWNTO 0);
SIGNAL ledg : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ledr : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT displaydemovhdl
	PORT (
	hex0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	key : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
	ledg : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ledr : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : displaydemovhdl
	PORT MAP (
-- list connections between master ports and signals
	hex0 => hex0,
	key => key,
	ledg => ledg,
	ledr => ledr,
	sw => sw
	);

-- key[0]
t_prcs_key_0: PROCESS
BEGIN
	key(0) <= '1';
	WAIT FOR 640000 ps;
	key(0) <= '0';
WAIT;
END PROCESS t_prcs_key_0;
-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		sw(3) <= '0';
		WAIT FOR 160000 ps;
		sw(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	sw(3) <= '0';
WAIT;
END PROCESS t_prcs_sw_3;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		sw(2) <= '0';
		WAIT FOR 80000 ps;
		sw(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	sw(2) <= '0';
WAIT;
END PROCESS t_prcs_sw_2;
-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		sw(1) <= '0';
		WAIT FOR 40000 ps;
		sw(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;
-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
LOOP
	sw(0) <= '0';
	WAIT FOR 20000 ps;
	sw(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sw_0;
END displaydemovhdl_arch;
