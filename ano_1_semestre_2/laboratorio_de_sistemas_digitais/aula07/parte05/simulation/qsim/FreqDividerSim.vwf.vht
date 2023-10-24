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
-- Generated on "05/06/2022 18:09:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          freqdivider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY freqdivider_vhd_vec_tst IS
END freqdivider_vhd_vec_tst;
ARCHITECTURE freqdivider_arch OF freqdivider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clkin : STD_LOGIC;
SIGNAL clkout : STD_LOGIC;
COMPONENT freqdivider
	PORT (
	clkin : IN STD_LOGIC;
	clkout : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : freqdivider
	PORT MAP (
-- list connections between master ports and signals
	clkin => clkin,
	clkout => clkout
	);

-- clkin
t_prcs_clkin: PROCESS
BEGIN
LOOP
	clkin <= '0';
	WAIT FOR 10000 ps;
	clkin <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clkin;
END freqdivider_arch;
