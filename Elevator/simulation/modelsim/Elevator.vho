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

-- DATE "11/22/2024 11:12:31"

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

ENTITY 	Elevator IS
    PORT (
	up : IN std_logic;
	down : IN std_logic;
	CLK : IN std_logic;
	lights : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Elevator;

-- Design Ports Information
-- lights[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[1]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lights[3]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- down	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Elevator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_up : std_logic;
SIGNAL ww_down : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_lights : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lights[0]~output_o\ : std_logic;
SIGNAL \lights[1]~output_o\ : std_logic;
SIGNAL \lights[2]~output_o\ : std_logic;
SIGNAL \lights[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \down~input_o\ : std_logic;
SIGNAL \up~input_o\ : std_logic;
SIGNAL \comb_17|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_17|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_17|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_18|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_18|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_18|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \lights~0_combout\ : std_logic;
SIGNAL \lights~1_combout\ : std_logic;
SIGNAL \lights~2_combout\ : std_logic;
SIGNAL \lights~3_combout\ : std_logic;
SIGNAL \ALT_INV_lights~3_combout\ : std_logic;

BEGIN

ww_up <= up;
ww_down <= down;
ww_CLK <= CLK;
lights <= ww_lights;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_lights~3_combout\ <= NOT \lights~3_combout\;

-- Location: IOOBUF_X0_Y4_N2
\lights[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lights~0_combout\,
	devoe => ww_devoe,
	o => \lights[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\lights[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lights~1_combout\,
	devoe => ww_devoe,
	o => \lights[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\lights[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lights~2_combout\,
	devoe => ww_devoe,
	o => \lights[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\lights[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_lights~3_combout\,
	devoe => ww_devoe,
	o => \lights[3]~output_o\);

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

-- Location: IOIBUF_X0_Y4_N8
\down~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_down,
	o => \down~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\up~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up,
	o => \up~input_o\);

-- Location: LCCOMB_X1_Y4_N12
\comb_17|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_17|comb_4|comb_3|QInternal~0_combout\ = (\comb_17|comb_6|comb_3|QInternal~0_combout\ & (\comb_18|comb_6|comb_3|QInternal~0_combout\ & ((\up~input_o\) # (!\down~input_o\)))) # (!\comb_17|comb_6|comb_3|QInternal~0_combout\ & (((\up~input_o\) # 
-- (\comb_18|comb_6|comb_3|QInternal~0_combout\)) # (!\down~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down~input_o\,
	datab => \up~input_o\,
	datac => \comb_17|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_18|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_17|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y4_N30
\comb_17|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_17|comb_4|comb_3|QInternal~1_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_17|comb_4|comb_3|QInternal~1_combout\)) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_17|comb_4|comb_3|QInternal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_17|comb_4|comb_3|QInternal~1_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_17|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_17|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X1_Y4_N8
\comb_17|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_17|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_17|comb_4|comb_3|QInternal~1_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_17|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_17|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_17|comb_4|comb_3|QInternal~1_combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \comb_17|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y4_N28
\comb_18|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_18|comb_4|comb_3|QInternal~0_combout\ = (\comb_17|comb_6|comb_3|QInternal~0_combout\ & ((\down~input_o\) # ((\comb_18|comb_6|comb_3|QInternal~0_combout\) # (!\up~input_o\)))) # (!\comb_17|comb_6|comb_3|QInternal~0_combout\ & 
-- (\comb_18|comb_6|comb_3|QInternal~0_combout\ & ((\down~input_o\) # (!\up~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \down~input_o\,
	datab => \up~input_o\,
	datac => \comb_17|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_18|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_18|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y4_N18
\comb_18|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_18|comb_4|comb_3|QInternal~1_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_18|comb_4|comb_3|QInternal~1_combout\)) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_18|comb_4|comb_3|QInternal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_18|comb_4|comb_3|QInternal~1_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_18|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_18|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X1_Y4_N2
\comb_18|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_18|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_18|comb_4|comb_3|QInternal~1_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_18|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_18|comb_6|comb_3|QInternal~0_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_18|comb_4|comb_3|QInternal~1_combout\,
	combout => \comb_18|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y4_N16
\lights~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lights~0_combout\ = (\comb_18|comb_6|comb_3|QInternal~0_combout\ & \comb_17|comb_6|comb_3|QInternal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_18|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_17|comb_6|comb_3|QInternal~0_combout\,
	combout => \lights~0_combout\);

-- Location: LCCOMB_X1_Y4_N26
\lights~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lights~1_combout\ = (\comb_18|comb_6|comb_3|QInternal~0_combout\ & !\comb_17|comb_6|comb_3|QInternal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_18|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_17|comb_6|comb_3|QInternal~0_combout\,
	combout => \lights~1_combout\);

-- Location: LCCOMB_X1_Y4_N24
\lights~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lights~2_combout\ = (!\comb_18|comb_6|comb_3|QInternal~0_combout\ & \comb_17|comb_6|comb_3|QInternal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_18|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_17|comb_6|comb_3|QInternal~0_combout\,
	combout => \lights~2_combout\);

-- Location: LCCOMB_X1_Y4_N22
\lights~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lights~3_combout\ = (\comb_18|comb_6|comb_3|QInternal~0_combout\) # (\comb_17|comb_6|comb_3|QInternal~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_18|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_17|comb_6|comb_3|QInternal~0_combout\,
	combout => \lights~3_combout\);

ww_lights(0) <= \lights[0]~output_o\;

ww_lights(1) <= \lights[1]~output_o\;

ww_lights(2) <= \lights[2]~output_o\;

ww_lights(3) <= \lights[3]~output_o\;
END structure;


