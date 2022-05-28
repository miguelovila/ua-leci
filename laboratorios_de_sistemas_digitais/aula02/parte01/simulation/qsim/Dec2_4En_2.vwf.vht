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
-- Generated on "03/22/2022 10:43:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          dec2_4endemo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY dec2_4endemo_vhd_vec_tst IS
END dec2_4endemo_vhd_vec_tst;
ARCHITECTURE dec2_4endemo_arch OF dec2_4endemo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ledg : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT dec2_4endemo
	PORT (
	ledg : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : dec2_4endemo
	PORT MAP (
-- list connections between master ports and signals
	ledg => ledg,
	sw => sw
	);
END dec2_4endemo_arch;
