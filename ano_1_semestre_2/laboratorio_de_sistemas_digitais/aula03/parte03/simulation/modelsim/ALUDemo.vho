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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/29/2022 22:41:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin7segdecoder IS
    PORT (
	bininput : IN std_logic_vector(3 DOWNTO 0);
	binoutput : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END bin7segdecoder;

-- Design Ports Information
-- binoutput[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binoutput[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binoutput[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binoutput[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binoutput[4]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binoutput[5]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binoutput[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bininput[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bininput[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bininput[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bininput[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bin7segdecoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_bininput : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_binoutput : std_logic_vector(6 DOWNTO 0);
SIGNAL \binoutput[0]~output_o\ : std_logic;
SIGNAL \binoutput[1]~output_o\ : std_logic;
SIGNAL \binoutput[2]~output_o\ : std_logic;
SIGNAL \binoutput[3]~output_o\ : std_logic;
SIGNAL \binoutput[4]~output_o\ : std_logic;
SIGNAL \binoutput[5]~output_o\ : std_logic;
SIGNAL \binoutput[6]~output_o\ : std_logic;
SIGNAL \bininput[0]~input_o\ : std_logic;
SIGNAL \bininput[2]~input_o\ : std_logic;
SIGNAL \bininput[1]~input_o\ : std_logic;
SIGNAL \bininput[3]~input_o\ : std_logic;
SIGNAL \binoutput~0_combout\ : std_logic;
SIGNAL \binoutput~1_combout\ : std_logic;
SIGNAL \binoutput~2_combout\ : std_logic;
SIGNAL \binoutput~3_combout\ : std_logic;
SIGNAL \binoutput~4_combout\ : std_logic;
SIGNAL \binoutput~5_combout\ : std_logic;
SIGNAL \binoutput~6_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_bininput <= bininput;
binoutput <= ww_binoutput;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y46_N23
\binoutput[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binoutput~0_combout\,
	devoe => ww_devoe,
	o => \binoutput[0]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\binoutput[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binoutput~1_combout\,
	devoe => ww_devoe,
	o => \binoutput[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\binoutput[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binoutput~2_combout\,
	devoe => ww_devoe,
	o => \binoutput[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\binoutput[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binoutput~3_combout\,
	devoe => ww_devoe,
	o => \binoutput[3]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\binoutput[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binoutput~4_combout\,
	devoe => ww_devoe,
	o => \binoutput[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\binoutput[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binoutput~5_combout\,
	devoe => ww_devoe,
	o => \binoutput[5]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\binoutput[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binoutput~6_combout\,
	devoe => ww_devoe,
	o => \binoutput[6]~output_o\);

-- Location: IOIBUF_X0_Y42_N8
\bininput[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bininput(0),
	o => \bininput[0]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\bininput[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bininput(2),
	o => \bininput[2]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\bininput[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bininput(1),
	o => \bininput[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\bininput[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bininput(3),
	o => \bininput[3]~input_o\);

-- Location: LCCOMB_X1_Y44_N0
\binoutput~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binoutput~0_combout\ = (\bininput[2]~input_o\ & (!\bininput[1]~input_o\ & (\bininput[0]~input_o\ $ (!\bininput[3]~input_o\)))) # (!\bininput[2]~input_o\ & (\bininput[0]~input_o\ & (\bininput[1]~input_o\ $ (!\bininput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bininput[0]~input_o\,
	datab => \bininput[2]~input_o\,
	datac => \bininput[1]~input_o\,
	datad => \bininput[3]~input_o\,
	combout => \binoutput~0_combout\);

-- Location: LCCOMB_X1_Y44_N2
\binoutput~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \binoutput~1_combout\ = (\bininput[1]~input_o\ & ((\bininput[0]~input_o\ & ((\bininput[3]~input_o\))) # (!\bininput[0]~input_o\ & (\bininput[2]~input_o\)))) # (!\bininput[1]~input_o\ & (\bininput[2]~input_o\ & (\bininput[0]~input_o\ $ 
-- (\bininput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bininput[0]~input_o\,
	datab => \bininput[2]~input_o\,
	datac => \bininput[1]~input_o\,
	datad => \bininput[3]~input_o\,
	combout => \binoutput~1_combout\);

-- Location: LCCOMB_X1_Y44_N12
\binoutput~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \binoutput~2_combout\ = (\bininput[2]~input_o\ & (\bininput[3]~input_o\ & ((\bininput[1]~input_o\) # (!\bininput[0]~input_o\)))) # (!\bininput[2]~input_o\ & (!\bininput[0]~input_o\ & (\bininput[1]~input_o\ & !\bininput[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bininput[0]~input_o\,
	datab => \bininput[2]~input_o\,
	datac => \bininput[1]~input_o\,
	datad => \bininput[3]~input_o\,
	combout => \binoutput~2_combout\);

-- Location: LCCOMB_X1_Y44_N14
\binoutput~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \binoutput~3_combout\ = (\bininput[1]~input_o\ & ((\bininput[0]~input_o\ & (\bininput[2]~input_o\)) # (!\bininput[0]~input_o\ & (!\bininput[2]~input_o\ & \bininput[3]~input_o\)))) # (!\bininput[1]~input_o\ & (!\bininput[3]~input_o\ & 
-- (\bininput[0]~input_o\ $ (\bininput[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bininput[0]~input_o\,
	datab => \bininput[2]~input_o\,
	datac => \bininput[1]~input_o\,
	datad => \bininput[3]~input_o\,
	combout => \binoutput~3_combout\);

-- Location: LCCOMB_X1_Y44_N16
\binoutput~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \binoutput~4_combout\ = (\bininput[1]~input_o\ & (\bininput[0]~input_o\ & ((!\bininput[3]~input_o\)))) # (!\bininput[1]~input_o\ & ((\bininput[2]~input_o\ & ((!\bininput[3]~input_o\))) # (!\bininput[2]~input_o\ & (\bininput[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bininput[0]~input_o\,
	datab => \bininput[2]~input_o\,
	datac => \bininput[1]~input_o\,
	datad => \bininput[3]~input_o\,
	combout => \binoutput~4_combout\);

-- Location: LCCOMB_X1_Y44_N18
\binoutput~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \binoutput~5_combout\ = (\bininput[0]~input_o\ & (\bininput[3]~input_o\ $ (((\bininput[1]~input_o\) # (!\bininput[2]~input_o\))))) # (!\bininput[0]~input_o\ & (!\bininput[2]~input_o\ & (\bininput[1]~input_o\ & !\bininput[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bininput[0]~input_o\,
	datab => \bininput[2]~input_o\,
	datac => \bininput[1]~input_o\,
	datad => \bininput[3]~input_o\,
	combout => \binoutput~5_combout\);

-- Location: LCCOMB_X1_Y44_N28
\binoutput~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \binoutput~6_combout\ = (\bininput[0]~input_o\ & (!\bininput[3]~input_o\ & (\bininput[2]~input_o\ $ (!\bininput[1]~input_o\)))) # (!\bininput[0]~input_o\ & (!\bininput[1]~input_o\ & (\bininput[2]~input_o\ $ (!\bininput[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bininput[0]~input_o\,
	datab => \bininput[2]~input_o\,
	datac => \bininput[1]~input_o\,
	datad => \bininput[3]~input_o\,
	combout => \binoutput~6_combout\);

ww_binoutput(0) <= \binoutput[0]~output_o\;

ww_binoutput(1) <= \binoutput[1]~output_o\;

ww_binoutput(2) <= \binoutput[2]~output_o\;

ww_binoutput(3) <= \binoutput[3]~output_o\;

ww_binoutput(4) <= \binoutput[4]~output_o\;

ww_binoutput(5) <= \binoutput[5]~output_o\;

ww_binoutput(6) <= \binoutput[6]~output_o\;
END structure;


