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
-- Generated on "03/16/2022 17:58:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          and2gate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY and2gate_vhd_vec_tst IS
END and2gate_vhd_vec_tst;
ARCHITECTURE and2gate_arch OF and2gate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inport0 : STD_LOGIC;
SIGNAL inport1 : STD_LOGIC;
SIGNAL outport : STD_LOGIC;
COMPONENT and2gate
	PORT (
	inport0 : IN STD_LOGIC;
	inport1 : IN STD_LOGIC;
	outport : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : and2gate
	PORT MAP (
-- list connections between master ports and signals
	inport0 => inport0,
	inport1 => inport1,
	outport => outport
	);

-- inport0
t_prcs_inport0: PROCESS
BEGIN
	inport0 <= '0';
	WAIT FOR 160000 ps;
	inport0 <= '1';
	WAIT FOR 160000 ps;
	inport0 <= '0';
	WAIT FOR 160000 ps;
	inport0 <= '1';
	WAIT FOR 160000 ps;
	inport0 <= '0';
WAIT;
END PROCESS t_prcs_inport0;

-- inport1
t_prcs_inport1: PROCESS
BEGIN
	inport1 <= '0';
	WAIT FOR 320000 ps;
	inport1 <= '1';
	WAIT FOR 320000 ps;
	inport1 <= '0';
WAIT;
END PROCESS t_prcs_inport1;
END and2gate_arch;
