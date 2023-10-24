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

-- DATE "03/26/2022 17:56:29"

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

ENTITY 	displaydemovhdl IS
    PORT (
	sw : IN std_logic_vector(3 DOWNTO 0);
	key : IN std_logic_vector(0 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	ledg : BUFFER std_logic_vector(3 DOWNTO 0);
	ledr : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END displaydemovhdl;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledg[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ledr[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF displaydemovhdl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_ledg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ledr : std_logic_vector(6 DOWNTO 0);
SIGNAL \hex0[0]~output_o\ : std_logic;
SIGNAL \hex0[1]~output_o\ : std_logic;
SIGNAL \hex0[2]~output_o\ : std_logic;
SIGNAL \hex0[3]~output_o\ : std_logic;
SIGNAL \hex0[4]~output_o\ : std_logic;
SIGNAL \hex0[5]~output_o\ : std_logic;
SIGNAL \hex0[6]~output_o\ : std_logic;
SIGNAL \ledg[0]~output_o\ : std_logic;
SIGNAL \ledg[1]~output_o\ : std_logic;
SIGNAL \ledg[2]~output_o\ : std_logic;
SIGNAL \ledg[3]~output_o\ : std_logic;
SIGNAL \ledr[0]~output_o\ : std_logic;
SIGNAL \ledr[1]~output_o\ : std_logic;
SIGNAL \ledr[2]~output_o\ : std_logic;
SIGNAL \ledr[3]~output_o\ : std_logic;
SIGNAL \ledr[4]~output_o\ : std_logic;
SIGNAL \ledr[5]~output_o\ : std_logic;
SIGNAL \ledr[6]~output_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \system_core|decout_n~6_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \system_core|decout_n~7_combout\ : std_logic;
SIGNAL \system_core|decout_n~8_combout\ : std_logic;
SIGNAL \system_core|decout_n~9_combout\ : std_logic;
SIGNAL \system_core|decout_n~10_combout\ : std_logic;
SIGNAL \system_core|decout_n~11_combout\ : std_logic;
SIGNAL \system_core|decout_n~12_combout\ : std_logic;
SIGNAL \system_core|decout_n[3]~2_combout\ : std_logic;
SIGNAL \system_core|decout_n[3]~17_combout\ : std_logic;
SIGNAL \system_core|decout_n~13_combout\ : std_logic;
SIGNAL \system_core|decout_n~14_combout\ : std_logic;
SIGNAL \system_core|decout_n~15_combout\ : std_logic;
SIGNAL \system_core|decout_n~16_combout\ : std_logic;
SIGNAL \system_core|decout_n[6]~5_combout\ : std_logic;
SIGNAL \system_core|decout_n[6]~18_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_sw <= sw;
ww_key <= key;
hex0 <= ww_hex0;
ledg <= ww_ledg;
ledr <= ww_ledr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\hex0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~7_combout\,
	devoe => ww_devoe,
	o => \hex0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\hex0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~10_combout\,
	devoe => ww_devoe,
	o => \hex0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\hex0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~12_combout\,
	devoe => ww_devoe,
	o => \hex0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\hex0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[3]~17_combout\,
	devoe => ww_devoe,
	o => \hex0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\hex0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~14_combout\,
	devoe => ww_devoe,
	o => \hex0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\hex0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n~16_combout\,
	devoe => ww_devoe,
	o => \hex0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\hex0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \system_core|decout_n[6]~18_combout\,
	devoe => ww_devoe,
	o => \hex0[6]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\ledg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[0]~input_o\,
	devoe => ww_devoe,
	o => \ledg[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\ledg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[1]~input_o\,
	devoe => ww_devoe,
	o => \ledg[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\ledg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[2]~input_o\,
	devoe => ww_devoe,
	o => \ledg[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\ledg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sw[3]~input_o\,
	devoe => ww_devoe,
	o => \ledg[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\ledr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledr[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\ledr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledr[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\ledr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledr[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\ledr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledr[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\ledr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledr[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\ledr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledr[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\ledr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ledr[6]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\sw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\sw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\sw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\sw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X114_Y69_N16
\system_core|decout_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~6_combout\ = (\sw[3]~input_o\ & (\sw[0]~input_o\ & (\sw[1]~input_o\ $ (\sw[2]~input_o\)))) # (!\sw[3]~input_o\ & (!\sw[1]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~6_combout\);

-- Location: IOIBUF_X115_Y40_N8
\key[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LCCOMB_X114_Y69_N2
\system_core|decout_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~7_combout\ = (\system_core|decout_n~6_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|decout_n~6_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~7_combout\);

-- Location: LCCOMB_X114_Y69_N12
\system_core|decout_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~8_combout\ = (\sw[3]~input_o\ & (\sw[2]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~8_combout\);

-- Location: LCCOMB_X114_Y69_N22
\system_core|decout_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~9_combout\ = (\sw[3]~input_o\ & (\sw[1]~input_o\ & (\sw[0]~input_o\ & !\sw[2]~input_o\))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (\sw[1]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~9_combout\);

-- Location: LCCOMB_X114_Y69_N24
\system_core|decout_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~10_combout\ = (\system_core|decout_n~8_combout\) # ((\system_core|decout_n~9_combout\) # (!\key[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~8_combout\,
	datac => \system_core|decout_n~9_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~10_combout\);

-- Location: LCCOMB_X114_Y69_N18
\system_core|decout_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~11_combout\ = (!\sw[3]~input_o\ & (\sw[1]~input_o\ & (!\sw[0]~input_o\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~11_combout\);

-- Location: LCCOMB_X114_Y69_N4
\system_core|decout_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~12_combout\ = (\system_core|decout_n~8_combout\) # ((\system_core|decout_n~11_combout\) # (!\key[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~8_combout\,
	datab => \system_core|decout_n~11_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~12_combout\);

-- Location: LCCOMB_X114_Y69_N6
\system_core|decout_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[3]~2_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[0]~input_o\ & (\sw[3]~input_o\ & !\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n[3]~2_combout\);

-- Location: LCCOMB_X114_Y69_N0
\system_core|decout_n[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[3]~17_combout\ = (\system_core|decout_n[3]~2_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n[3]~2_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n[3]~17_combout\);

-- Location: LCCOMB_X114_Y69_N30
\system_core|decout_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~13_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & (!\sw[3]~input_o\)) # (!\sw[2]~input_o\ & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~13_combout\);

-- Location: LCCOMB_X114_Y69_N8
\system_core|decout_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~14_combout\ = (\system_core|decout_n~13_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|decout_n~13_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~14_combout\);

-- Location: LCCOMB_X114_Y69_N10
\system_core|decout_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~15_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & ((\sw[0]~input_o\) # (!\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (\sw[3]~input_o\ $ (!\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n~15_combout\);

-- Location: LCCOMB_X114_Y69_N20
\system_core|decout_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n~16_combout\ = (\system_core|decout_n~15_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \system_core|decout_n~15_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n~16_combout\);

-- Location: LCCOMB_X114_Y69_N26
\system_core|decout_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[6]~5_combout\ = (\sw[0]~input_o\ & (!\sw[3]~input_o\ & (\sw[1]~input_o\ $ (!\sw[2]~input_o\)))) # (!\sw[0]~input_o\ & (!\sw[1]~input_o\ & (\sw[3]~input_o\ $ (!\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \system_core|decout_n[6]~5_combout\);

-- Location: LCCOMB_X114_Y69_N28
\system_core|decout_n[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|decout_n[6]~18_combout\ = (\system_core|decout_n[6]~5_combout\) # (!\key[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \system_core|decout_n[6]~5_combout\,
	datad => \key[0]~input_o\,
	combout => \system_core|decout_n[6]~18_combout\);

ww_hex0(0) <= \hex0[0]~output_o\;

ww_hex0(1) <= \hex0[1]~output_o\;

ww_hex0(2) <= \hex0[2]~output_o\;

ww_hex0(3) <= \hex0[3]~output_o\;

ww_hex0(4) <= \hex0[4]~output_o\;

ww_hex0(5) <= \hex0[5]~output_o\;

ww_hex0(6) <= \hex0[6]~output_o\;

ww_ledg(0) <= \ledg[0]~output_o\;

ww_ledg(1) <= \ledg[1]~output_o\;

ww_ledg(2) <= \ledg[2]~output_o\;

ww_ledg(3) <= \ledg[3]~output_o\;

ww_ledr(0) <= \ledr[0]~output_o\;

ww_ledr(1) <= \ledr[1]~output_o\;

ww_ledr(2) <= \ledr[2]~output_o\;

ww_ledr(3) <= \ledr[3]~output_o\;

ww_ledr(4) <= \ledr[4]~output_o\;

ww_ledr(5) <= \ledr[5]~output_o\;

ww_ledr(6) <= \ledr[6]~output_o\;
END structure;


