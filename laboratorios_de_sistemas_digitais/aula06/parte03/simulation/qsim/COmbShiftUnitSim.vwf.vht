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
-- Generated on "04/21/2022 11:25:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          combshiftunit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY combshiftunit_vhd_vec_tst IS
END combshiftunit_vhd_vec_tst;
ARCHITECTURE combshiftunit_arch OF combshiftunit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL datain : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dirleft : STD_LOGIC;
SIGNAL loaden : STD_LOGIC;
SIGNAL rotate : STD_LOGIC;
SIGNAL shamount : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sharith : STD_LOGIC;
COMPONENT combshiftunit
	PORT (
	clk : IN STD_LOGIC;
	datain : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	dirleft : IN STD_LOGIC;
	loaden : IN STD_LOGIC;
	rotate : IN STD_LOGIC;
	shamount : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	sharith : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : combshiftunit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	datain => datain,
	dataout => dataout,
	dirleft => dirleft,
	loaden => loaden,
	rotate => rotate,
	shamount => shamount,
	sharith => sharith
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- datain[7]
t_prcs_datain_7: PROCESS
BEGIN
	datain(7) <= '0';
WAIT;
END PROCESS t_prcs_datain_7;
-- datain[6]
t_prcs_datain_6: PROCESS
BEGIN
	datain(6) <= '1';
WAIT;
END PROCESS t_prcs_datain_6;
-- datain[5]
t_prcs_datain_5: PROCESS
BEGIN
	datain(5) <= '1';
WAIT;
END PROCESS t_prcs_datain_5;
-- datain[4]
t_prcs_datain_4: PROCESS
BEGIN
	datain(4) <= '0';
WAIT;
END PROCESS t_prcs_datain_4;
-- datain[3]
t_prcs_datain_3: PROCESS
BEGIN
	datain(3) <= '0';
WAIT;
END PROCESS t_prcs_datain_3;
-- datain[2]
t_prcs_datain_2: PROCESS
BEGIN
	datain(2) <= '0';
WAIT;
END PROCESS t_prcs_datain_2;
-- datain[1]
t_prcs_datain_1: PROCESS
BEGIN
	datain(1) <= '0';
WAIT;
END PROCESS t_prcs_datain_1;
-- datain[0]
t_prcs_datain_0: PROCESS
BEGIN
	datain(0) <= '0';
WAIT;
END PROCESS t_prcs_datain_0;

-- dirleft
t_prcs_dirleft: PROCESS
BEGIN
	dirleft <= '0';
	WAIT FOR 30000 ps;
	dirleft <= '1';
	WAIT FOR 20000 ps;
	dirleft <= '0';
	WAIT FOR 70000 ps;
	dirleft <= '1';
	WAIT FOR 60000 ps;
	dirleft <= '0';
	WAIT FOR 420000 ps;
	dirleft <= '1';
	WAIT FOR 240000 ps;
	dirleft <= '0';
WAIT;
END PROCESS t_prcs_dirleft;

-- loaden
t_prcs_loaden: PROCESS
BEGIN
	loaden <= '0';
	WAIT FOR 10000 ps;
	loaden <= '1';
	WAIT FOR 20000 ps;
	loaden <= '0';
	WAIT FOR 150000 ps;
	loaden <= '1';
	WAIT FOR 60000 ps;
	loaden <= '0';
	WAIT FOR 280000 ps;
	loaden <= '1';
	WAIT FOR 80000 ps;
	loaden <= '0';
WAIT;
END PROCESS t_prcs_loaden;

-- rotate
t_prcs_rotate: PROCESS
BEGIN
	rotate <= '0';
	WAIT FOR 10000 ps;
	rotate <= '1';
	WAIT FOR 20000 ps;
	rotate <= '0';
	WAIT FOR 290000 ps;
	rotate <= '1';
	WAIT FOR 120000 ps;
	rotate <= '0';
WAIT;
END PROCESS t_prcs_rotate;

-- sharith
t_prcs_sharith: PROCESS
BEGIN
	sharith <= '0';
	WAIT FOR 260000 ps;
	sharith <= '1';
	WAIT FOR 220000 ps;
	sharith <= '0';
	WAIT FOR 320000 ps;
	sharith <= '1';
	WAIT FOR 160000 ps;
	sharith <= '0';
WAIT;
END PROCESS t_prcs_sharith;
-- shamount[2]
t_prcs_shamount_2: PROCESS
BEGIN
	shamount(2) <= '0';
WAIT;
END PROCESS t_prcs_shamount_2;
-- shamount[1]
t_prcs_shamount_1: PROCESS
BEGIN
	shamount(1) <= '0';
	WAIT FOR 440000 ps;
	shamount(1) <= '1';
WAIT;
END PROCESS t_prcs_shamount_1;
-- shamount[0]
t_prcs_shamount_0: PROCESS
BEGIN
	shamount(0) <= '0';
WAIT;
END PROCESS t_prcs_shamount_0;
END combshiftunit_arch;
