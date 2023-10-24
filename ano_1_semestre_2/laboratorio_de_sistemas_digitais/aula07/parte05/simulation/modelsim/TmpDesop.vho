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

-- DATE "05/05/2022 11:53:03"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TmpDesop IS
    PORT (
	LEDR : OUT std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0)
	);
END TmpDesop;

-- Design Ports Information
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TmpDesop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|s_divcounter~0_combout\ : std_logic;
SIGNAL \inst3|s_divcounter~1_combout\ : std_logic;
SIGNAL \inst3|s_divcounter~3_combout\ : std_logic;
SIGNAL \inst3|s_divcounter~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|clkout~0_combout\ : std_logic;
SIGNAL \inst3|clkout~feeder_combout\ : std_logic;
SIGNAL \inst3|clkout~q\ : std_logic;
SIGNAL \inst3|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \inst|s_countval[0]~3_combout\ : std_logic;
SIGNAL \inst|s_countval[1]~2_combout\ : std_logic;
SIGNAL \inst|s_countval[2]~1_combout\ : std_logic;
SIGNAL \inst|s_countval[3]~0_combout\ : std_logic;
SIGNAL \inst3|s_divcounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|s_countval\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst3|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|clkout~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_countval\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_countval\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_countval\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_countval\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N22
\inst3|s_divcounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divcounter~0_combout\ = (!\inst3|s_divcounter\(0) & (((!\inst3|s_divcounter\(1) & !\inst3|s_divcounter\(2))) # (!\inst3|s_divcounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divcounter\(3),
	datab => \inst3|s_divcounter\(1),
	datac => \inst3|s_divcounter\(0),
	datad => \inst3|s_divcounter\(2),
	combout => \inst3|s_divcounter~0_combout\);

-- Location: FF_X1_Y36_N23
\inst3|s_divcounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divcounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divcounter\(0));

-- Location: LCCOMB_X1_Y36_N28
\inst3|s_divcounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divcounter~1_combout\ = (!\inst3|s_divcounter\(3) & (\inst3|s_divcounter\(1) $ (\inst3|s_divcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divcounter\(3),
	datac => \inst3|s_divcounter\(1),
	datad => \inst3|s_divcounter\(0),
	combout => \inst3|s_divcounter~1_combout\);

-- Location: FF_X1_Y36_N29
\inst3|s_divcounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divcounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divcounter\(1));

-- Location: LCCOMB_X1_Y36_N26
\inst3|s_divcounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divcounter~3_combout\ = (\inst3|s_divcounter\(2) & (\inst3|s_divcounter\(1) & (!\inst3|s_divcounter\(3) & \inst3|s_divcounter\(0)))) # (!\inst3|s_divcounter\(2) & (!\inst3|s_divcounter\(1) & (\inst3|s_divcounter\(3) & !\inst3|s_divcounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divcounter\(2),
	datab => \inst3|s_divcounter\(1),
	datac => \inst3|s_divcounter\(3),
	datad => \inst3|s_divcounter\(0),
	combout => \inst3|s_divcounter~3_combout\);

-- Location: FF_X1_Y36_N27
\inst3|s_divcounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divcounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divcounter\(3));

-- Location: LCCOMB_X1_Y36_N6
\inst3|s_divcounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_divcounter~2_combout\ = (!\inst3|s_divcounter\(3) & (\inst3|s_divcounter\(2) $ (((\inst3|s_divcounter\(1) & \inst3|s_divcounter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divcounter\(3),
	datab => \inst3|s_divcounter\(1),
	datac => \inst3|s_divcounter\(2),
	datad => \inst3|s_divcounter\(0),
	combout => \inst3|s_divcounter~2_combout\);

-- Location: FF_X1_Y36_N7
\inst3|s_divcounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_divcounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_divcounter\(2));

-- Location: LCCOMB_X1_Y36_N16
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|s_divcounter\(0) & !\inst3|s_divcounter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_divcounter\(0),
	datad => \inst3|s_divcounter\(1),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y36_N20
\inst3|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkout~0_combout\ = (\inst3|LessThan0~0_combout\ & ((\inst3|s_divcounter\(2) & ((!\inst3|s_divcounter\(3)))) # (!\inst3|s_divcounter\(2) & (\inst3|clkout~q\)))) # (!\inst3|LessThan0~0_combout\ & (((\inst3|clkout~q\ & !\inst3|s_divcounter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_divcounter\(2),
	datab => \inst3|clkout~q\,
	datac => \inst3|s_divcounter\(3),
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|clkout~0_combout\);

-- Location: LCCOMB_X1_Y36_N30
\inst3|clkout~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|clkout~feeder_combout\ = \inst3|clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|clkout~0_combout\,
	combout => \inst3|clkout~feeder_combout\);

-- Location: FF_X1_Y36_N31
\inst3|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clkout~q\);

-- Location: CLKCTRL_G0
\inst3|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X95_Y72_N18
\inst|s_countval[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_countval[0]~3_combout\ = !\inst|s_countval\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_countval\(0),
	combout => \inst|s_countval[0]~3_combout\);

-- Location: FF_X95_Y72_N19
\inst|s_countval[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkout~clkctrl_outclk\,
	d => \inst|s_countval[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_countval\(0));

-- Location: LCCOMB_X95_Y72_N20
\inst|s_countval[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_countval[1]~2_combout\ = \inst|s_countval\(1) $ (\inst|s_countval\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_countval\(1),
	datad => \inst|s_countval\(0),
	combout => \inst|s_countval[1]~2_combout\);

-- Location: FF_X95_Y72_N21
\inst|s_countval[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkout~clkctrl_outclk\,
	d => \inst|s_countval[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_countval\(1));

-- Location: LCCOMB_X95_Y72_N26
\inst|s_countval[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_countval[2]~1_combout\ = \inst|s_countval\(2) $ (((\inst|s_countval\(0) & \inst|s_countval\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_countval\(0),
	datac => \inst|s_countval\(2),
	datad => \inst|s_countval\(1),
	combout => \inst|s_countval[2]~1_combout\);

-- Location: FF_X95_Y72_N27
\inst|s_countval[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkout~clkctrl_outclk\,
	d => \inst|s_countval[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_countval\(2));

-- Location: LCCOMB_X95_Y72_N24
\inst|s_countval[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_countval[3]~0_combout\ = \inst|s_countval\(3) $ (((\inst|s_countval\(2) & (\inst|s_countval\(0) & \inst|s_countval\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_countval\(2),
	datab => \inst|s_countval\(0),
	datac => \inst|s_countval\(3),
	datad => \inst|s_countval\(1),
	combout => \inst|s_countval[3]~0_combout\);

-- Location: FF_X95_Y72_N25
\inst|s_countval[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|clkout~clkctrl_outclk\,
	d => \inst|s_countval[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_countval\(3));

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


