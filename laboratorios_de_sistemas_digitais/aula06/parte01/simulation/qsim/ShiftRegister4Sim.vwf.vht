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
-- Generated on "04/21/2022 08:07:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          shiftregister4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY shiftregister4_vhd_vec_tst IS
END shiftregister4_vhd_vec_tst;
ARCHITECTURE shiftregister4_arch OF shiftregister4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clockin : STD_LOGIC;
SIGNAL dataout : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL serialin : STD_LOGIC;
COMPONENT shiftregister4
	PORT (
	clockin : IN STD_LOGIC;
	dataout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	serialin : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : shiftregister4
	PORT MAP (
-- list connections between master ports and signals
	clockin => clockin,
	dataout => dataout,
	serialin => serialin
	);

-- clockin
t_prcs_clockin: PROCESS
BEGIN
LOOP
	clockin <= '0';
	WAIT FOR 20000 ps;
	clockin <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clockin;

-- serialin
t_prcs_serialin: PROCESS
BEGIN
	serialin <= '1';
	WAIT FOR 150000 ps;
	serialin <= '0';
	WAIT FOR 100000 ps;
	serialin <= '1';
	WAIT FOR 60000 ps;
	serialin <= '0';
WAIT;
END PROCESS t_prcs_serialin;
END shiftregister4_arch;
