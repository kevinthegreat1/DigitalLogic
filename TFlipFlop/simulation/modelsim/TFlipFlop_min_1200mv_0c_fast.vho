-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "11/15/2024 16:44:32"

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

ENTITY 	BinaryCounterTest IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END BinaryCounterTest;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BinaryCounterTest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\ : std_logic;
SIGNAL \comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_16|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_14|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_12|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_10|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_8|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_3|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\);

\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\);

\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\);

\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\);

\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\);

\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\);

\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\);
\comb_3|comb_16|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_14|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_12|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_10|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_8|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_6|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_4|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_3|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_3|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_4|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_6|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_8|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_10|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_12|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_14|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_16|comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y40_N12
\comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0_combout\ = (\KEY[0]~input_o\ & (((\comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0_combout\)))) # (!\KEY[0]~input_o\ & (\SW[0]~input_o\ $ (((\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X114_Y40_N14
\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\ = (\KEY[0]~input_o\ & ((\comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0_combout\))) # (!\KEY[0]~input_o\ & (\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \comb_3|comb_3|comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: CLKCTRL_G5
\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N24
\comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0_combout\)) # 
-- (!GLOBAL(\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datab => \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	combout => \comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X114_Y37_N4
\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0_combout\))) # 
-- (!GLOBAL(\comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_3|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datab => \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_3|comb_4|comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: CLKCTRL_G6
\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N10
\comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (((\comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0_combout\)))) # 
-- (!GLOBAL(\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\SW[0]~input_o\ $ (((\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X114_Y37_N22
\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0_combout\))) # 
-- (!GLOBAL(\comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_4|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_6|comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: CLKCTRL_G9
\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\);

-- Location: LCCOMB_X114_Y37_N0
\comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (((\comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0_combout\)))) # 
-- (!GLOBAL(\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\SW[0]~input_o\ $ ((\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datad => \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	combout => \comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X114_Y37_N8
\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0_combout\))) # 
-- (!GLOBAL(\comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_6|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_8|comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: CLKCTRL_G7
\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y71_N0
\comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0_combout\)) # 
-- (!GLOBAL(\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\SW[0]~input_o\ $ (\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	combout => \comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X56_Y71_N10
\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0_combout\))) # 
-- (!GLOBAL(\comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_8|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_10|comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: CLKCTRL_G10
\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y72_N16
\comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0_combout\)) # 
-- (!GLOBAL(\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\SW[0]~input_o\ $ (\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	combout => \comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X56_Y72_N22
\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0_combout\))) # 
-- (!GLOBAL(\comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datab => \comb_3|comb_10|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_12|comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: CLKCTRL_G13
\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y72_N24
\comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0_combout\)) # 
-- (!GLOBAL(\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\SW[0]~input_o\ $ (\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X56_Y72_N26
\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0_combout\))) # 
-- (!GLOBAL(\comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_12|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_14|comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: CLKCTRL_G12
\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\);

-- Location: LCCOMB_X56_Y72_N20
\comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (((\comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0_combout\)))) # 
-- (!GLOBAL(\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\SW[0]~input_o\ $ (((\comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	datad => \comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X56_Y72_N28
\comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & (\comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0_combout\)) # 
-- (!GLOBAL(\comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\) & ((\comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_16|comb_3|comb_4|comb_3|QInternal~0_combout\,
	datac => \comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_3|comb_14|comb_3|comb_6|comb_3|QInternal~0clkctrl_outclk\,
	combout => \comb_3|comb_16|comb_3|comb_6|comb_3|QInternal~0_combout\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


