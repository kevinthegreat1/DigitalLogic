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

-- DATE "11/21/2024 18:01:21"

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

ENTITY 	TFlipFlop IS
    PORT (
	T : IN std_logic;
	CLK : IN std_logic;
	Q : BUFFER std_logic;
	Qbar : BUFFER std_logic
	);
END TFlipFlop;

-- Design Ports Information
-- Q	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qbar	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TFlipFlop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_T : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Qbar : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Qbar~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \T~input_o\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|QbarInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|ALT_INV_QbarInternal~0_combout\ : std_logic;

BEGIN

ww_T <= T;
ww_CLK <= CLK;
Q <= ww_Q;
Qbar <= ww_Qbar;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_6|comb_3|ALT_INV_QbarInternal~0_combout\ <= NOT \comb_3|comb_6|comb_3|QbarInternal~0_combout\;

-- Location: IOOBUF_X0_Y34_N16
\Q~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\Qbar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_6|comb_3|ALT_INV_QbarInternal~0_combout\,
	devoe => ww_devoe,
	o => \Qbar~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y34_N22
\T~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T,
	o => \T~input_o\);

-- Location: LCCOMB_X1_Y34_N0
\comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_4|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & (((\comb_3|comb_4|comb_3|QInternal~0_combout\)))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\T~input_o\ $ (((\comb_3|comb_6|comb_3|QInternal~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T~input_o\,
	datab => \comb_3|comb_4|comb_3|QInternal~0_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y34_N10
\comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_3|comb_4|comb_3|QInternal~0_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y34_N16
\comb_3|comb_6|comb_3|QbarInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_6|comb_3|QbarInternal~0_combout\ = ((\CLK~input_o\ & !\comb_3|comb_4|comb_3|QInternal~0_combout\)) # (!\comb_3|comb_6|comb_3|QInternal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK~input_o\,
	datac => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_3|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_6|comb_3|QbarInternal~0_combout\);

ww_Q <= \Q~output_o\;

ww_Qbar <= \Qbar~output_o\;
END structure;


