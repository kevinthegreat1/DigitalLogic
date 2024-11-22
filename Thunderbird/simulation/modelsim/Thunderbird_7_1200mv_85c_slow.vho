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

-- DATE "11/20/2024 11:49:46"

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

ENTITY 	Thunderbird IS
    PORT (
	L : IN std_logic;
	R : IN std_logic;
	Reset : IN std_logic;
	CLK : IN std_logic;
	Lout : BUFFER std_logic_vector(2 DOWNTO 0);
	Rout : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END Thunderbird;

-- Design Ports Information
-- Lout[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lout[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Lout[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[1]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Thunderbird IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Lout : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Rout : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Lout[0]~output_o\ : std_logic;
SIGNAL \Lout[1]~output_o\ : std_logic;
SIGNAL \Lout[2]~output_o\ : std_logic;
SIGNAL \Rout[0]~output_o\ : std_logic;
SIGNAL \Rout[1]~output_o\ : std_logic;
SIGNAL \Rout[2]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \L~input_o\ : std_logic;
SIGNAL \comb_26|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb_92|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_55|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_55|comb_4|comb_3|QInternal~2_combout\ : std_logic;
SIGNAL \comb_55|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_55|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_72|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_72|comb_4|comb_3|QInternal~2_combout\ : std_logic;
SIGNAL \comb_72|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_92|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_92|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb_72|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_40|comb_4|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_40|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_40|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_26|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_26|comb_4|comb_3|QInternal~2_combout\ : std_logic;
SIGNAL \comb_26|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|QInternal~1_combout\ : std_logic;
SIGNAL \comb_3|comb_4|comb_3|QInternal~2_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|QInternal~0_combout\ : std_logic;
SIGNAL \comb_92|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_72|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_55|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_40|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_26|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;
SIGNAL \comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ : std_logic;

BEGIN

ww_L <= L;
ww_R <= R;
ww_Reset <= Reset;
ww_CLK <= CLK;
Lout <= ww_Lout;
Rout <= ww_Rout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\comb_92|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_92|comb_6|comb_3|QInternal~0_combout\;
\comb_72|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_72|comb_6|comb_3|QInternal~0_combout\;
\comb_55|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_55|comb_6|comb_3|QInternal~0_combout\;
\comb_40|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_40|comb_6|comb_3|QInternal~0_combout\;
\comb_26|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_26|comb_6|comb_3|QInternal~0_combout\;
\comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\ <= NOT \comb_3|comb_6|comb_3|QInternal~0_combout\;

-- Location: IOOBUF_X0_Y33_N23
\Lout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_3|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \Lout[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Lout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_26|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \Lout[1]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Lout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_40|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \Lout[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\Rout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_55|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \Rout[0]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Rout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_72|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \Rout[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\Rout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_92|comb_6|comb_3|ALT_INV_QInternal~0_combout\,
	devoe => ww_devoe,
	o => \Rout[2]~output_o\);

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

-- Location: IOIBUF_X0_Y34_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: LCCOMB_X1_Y36_N0
\comb_3|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_4|comb_3|QInternal~0_combout\ = (\CLK~input_o\ & ((\comb_3|comb_4|comb_3|QInternal~2_combout\))) # (!\CLK~input_o\ & (\Reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \CLK~input_o\,
	datac => \comb_3|comb_4|comb_3|QInternal~2_combout\,
	combout => \comb_3|comb_4|comb_3|QInternal~0_combout\);

-- Location: IOIBUF_X0_Y32_N22
\R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\L~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L,
	o => \L~input_o\);

-- Location: LCCOMB_X1_Y32_N16
\comb_26|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_26|comb_4|comb_3|QInternal~0_combout\ = (!\CLK~input_o\ & ((!\L~input_o\) # (!\R~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datac => \CLK~input_o\,
	datad => \L~input_o\,
	combout => \comb_26|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X2_Y32_N18
\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (\R~input_o\) # ((\comb_3|comb_6|comb_3|QInternal~0_combout\) # ((\comb_26|comb_6|comb_3|QInternal~0_combout\) # (!\comb_40|comb_6|comb_3|QInternal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_26|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_40|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb~2_combout\);

-- Location: LCCOMB_X1_Y36_N26
\comb_92|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|comb_4|comb_3|QInternal~0_combout\ = (\CLK~input_o\ & (\comb_92|comb_4|comb_3|QInternal~1_combout\)) # (!\CLK~input_o\ & ((\Reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|comb_4|comb_3|QInternal~1_combout\,
	datac => \CLK~input_o\,
	datad => \Reset~input_o\,
	combout => \comb_92|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y32_N0
\comb_55|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_55|comb_4|comb_3|QInternal~1_combout\ = (!\Reset~input_o\ & ((\R~input_o\) # (\comb_55|comb_4|comb_3|QInternal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datac => \R~input_o\,
	datad => \comb_55|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_55|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X1_Y32_N22
\comb_55|comb_4|comb_3|QInternal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_55|comb_4|comb_3|QInternal~2_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_55|comb_4|comb_3|QInternal~2_combout\)) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & ((!\comb_55|comb_4|comb_3|QInternal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_55|comb_4|comb_3|QInternal~2_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_55|comb_4|comb_3|QInternal~1_combout\,
	combout => \comb_55|comb_4|comb_3|QInternal~2_combout\);

-- Location: LCCOMB_X1_Y32_N26
\comb_55|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_55|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_55|comb_4|comb_3|QInternal~2_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_55|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_55|comb_6|comb_3|QInternal~0_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_55|comb_4|comb_3|QInternal~2_combout\,
	combout => \comb_55|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y32_N2
\comb_55|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_55|comb_4|comb_3|QInternal~0_combout\ = (!\L~input_o\ & (!\comb_55|comb_6|comb_3|QInternal~0_combout\ & \comb_92|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \L~input_o\,
	datac => \comb_55|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_92|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_55|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y32_N24
\comb_72|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_72|comb_4|comb_3|QInternal~1_combout\ = (\comb_72|comb_4|comb_3|QInternal~0_combout\ & (((\CLK~input_o\ & !\comb_92|comb_4|comb_3|QInternal~1_combout\)) # (!\comb_55|comb_4|comb_3|QInternal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_55|comb_4|comb_3|QInternal~0_combout\,
	datab => \comb_72|comb_4|comb_3|QInternal~0_combout\,
	datac => \CLK~input_o\,
	datad => \comb_92|comb_4|comb_3|QInternal~1_combout\,
	combout => \comb_72|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X1_Y32_N30
\comb_72|comb_4|comb_3|QInternal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_72|comb_4|comb_3|QInternal~2_combout\ = (\comb_72|comb_4|comb_3|QInternal~1_combout\) # ((GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_72|comb_4|comb_3|QInternal~2_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\Reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \comb_72|comb_4|comb_3|QInternal~2_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_72|comb_4|comb_3|QInternal~1_combout\,
	combout => \comb_72|comb_4|comb_3|QInternal~2_combout\);

-- Location: LCCOMB_X1_Y32_N4
\comb_72|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_72|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_72|comb_4|comb_3|QInternal~2_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_72|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_72|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_72|comb_4|comb_3|QInternal~2_combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \comb_72|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\comb_92|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|comb_4|comb_3|QInternal~1_combout\ = (\comb_92|comb_4|comb_3|QInternal~0_combout\) # ((\comb_26|comb_4|comb_3|QInternal~0_combout\ & ((\comb_72|comb_6|comb_3|QInternal~0_combout\) # (!\comb_55|comb_4|comb_3|QInternal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|comb_4|comb_3|QInternal~0_combout\,
	datab => \comb_55|comb_4|comb_3|QInternal~0_combout\,
	datac => \comb_72|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_26|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_92|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X1_Y32_N6
\comb_92|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_92|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_92|comb_4|comb_3|QInternal~1_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_92|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_92|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_92|comb_4|comb_3|QInternal~1_combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \comb_92|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X1_Y32_N20
\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\comb_92|comb_6|comb_3|QInternal~0_combout\) # (((\comb_55|comb_6|comb_3|QInternal~0_combout\) # (!\comb_40|comb_6|comb_3|QInternal~0_combout\)) # (!\comb_72|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_92|comb_6|comb_3|QInternal~0_combout\,
	datab => \comb_72|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_55|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_40|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb~1_combout\);

-- Location: LCCOMB_X2_Y32_N4
\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (\comb_26|comb_6|comb_3|QInternal~0_combout\) # ((\R~input_o\ $ (\L~input_o\)) # (!\comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \L~input_o\,
	datac => \comb_26|comb_6|comb_3|QInternal~0_combout\,
	datad => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X1_Y32_N14
\comb_72|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_72|comb_4|comb_3|QInternal~0_combout\ = (!\CLK~input_o\ & ((\comb~1_combout\) # (\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~1_combout\,
	datac => \CLK~input_o\,
	datad => \comb~0_combout\,
	combout => \comb_72|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X2_Y32_N24
\comb_40|comb_4|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_40|comb_4|comb_3|QInternal~0_combout\ = (\comb_72|comb_4|comb_3|QInternal~0_combout\ & ((\comb~2_combout\) # ((\CLK~input_o\ & !\comb_40|comb_4|comb_3|QInternal~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK~input_o\,
	datab => \comb~2_combout\,
	datac => \comb_40|comb_4|comb_3|QInternal~1_combout\,
	datad => \comb_72|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_40|comb_4|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X2_Y32_N14
\comb_40|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_40|comb_4|comb_3|QInternal~1_combout\ = (\comb_40|comb_4|comb_3|QInternal~0_combout\) # ((GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_40|comb_4|comb_3|QInternal~1_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\Reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \comb_40|comb_4|comb_3|QInternal~1_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_40|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_40|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X1_Y32_N12
\comb_40|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_40|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_40|comb_4|comb_3|QInternal~1_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_40|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_40|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_40|comb_4|comb_3|QInternal~1_combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \comb_40|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X2_Y32_N26
\comb_26|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_26|comb_4|comb_3|QInternal~1_combout\ = (\comb_26|comb_4|comb_3|QInternal~0_combout\ & ((\R~input_o\) # ((\comb_3|comb_6|comb_3|QInternal~0_combout\) # (!\comb_40|comb_6|comb_3|QInternal~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \comb_26|comb_4|comb_3|QInternal~0_combout\,
	datad => \comb_40|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_26|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X2_Y32_N16
\comb_26|comb_4|comb_3|QInternal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_26|comb_4|comb_3|QInternal~2_combout\ = (\comb_26|comb_4|comb_3|QInternal~1_combout\) # ((GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_26|comb_4|comb_3|QInternal~2_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\Reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~input_o\,
	datab => \comb_26|comb_4|comb_3|QInternal~2_combout\,
	datac => \comb_26|comb_4|comb_3|QInternal~1_combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \comb_26|comb_4|comb_3|QInternal~2_combout\);

-- Location: LCCOMB_X2_Y32_N22
\comb_26|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_26|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_26|comb_4|comb_3|QInternal~2_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_26|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_26|comb_6|comb_3|QInternal~0_combout\,
	datab => \comb_26|comb_4|comb_3|QInternal~2_combout\,
	datad => \CLK~inputclkctrl_outclk\,
	combout => \comb_26|comb_6|comb_3|QInternal~0_combout\);

-- Location: LCCOMB_X2_Y32_N30
\comb_3|comb_4|comb_3|QInternal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_4|comb_3|QInternal~1_combout\ = (!\L~input_o\ & (((\comb_3|comb_6|comb_3|QInternal~0_combout\) # (!\comb_40|comb_6|comb_3|QInternal~0_combout\)) # (!\comb_26|comb_6|comb_3|QInternal~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_26|comb_6|comb_3|QInternal~0_combout\,
	datab => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \L~input_o\,
	datad => \comb_40|comb_6|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_4|comb_3|QInternal~1_combout\);

-- Location: LCCOMB_X2_Y32_N12
\comb_3|comb_4|comb_3|QInternal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_4|comb_3|QInternal~2_combout\ = (\comb_3|comb_4|comb_3|QInternal~0_combout\) # ((\comb_40|comb_4|comb_3|QInternal~0_combout\ & ((\R~input_o\) # (\comb_3|comb_4|comb_3|QInternal~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_4|comb_3|QInternal~0_combout\,
	datab => \R~input_o\,
	datac => \comb_3|comb_4|comb_3|QInternal~1_combout\,
	datad => \comb_40|comb_4|comb_3|QInternal~0_combout\,
	combout => \comb_3|comb_4|comb_3|QInternal~2_combout\);

-- Location: LCCOMB_X2_Y32_N28
\comb_3|comb_6|comb_3|QInternal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|comb_6|comb_3|QInternal~0_combout\ = (GLOBAL(\CLK~inputclkctrl_outclk\) & ((\comb_3|comb_4|comb_3|QInternal~2_combout\))) # (!GLOBAL(\CLK~inputclkctrl_outclk\) & (\comb_3|comb_6|comb_3|QInternal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|comb_6|comb_3|QInternal~0_combout\,
	datac => \CLK~inputclkctrl_outclk\,
	datad => \comb_3|comb_4|comb_3|QInternal~2_combout\,
	combout => \comb_3|comb_6|comb_3|QInternal~0_combout\);

ww_Lout(0) <= \Lout[0]~output_o\;

ww_Lout(1) <= \Lout[1]~output_o\;

ww_Lout(2) <= \Lout[2]~output_o\;

ww_Rout(0) <= \Rout[0]~output_o\;

ww_Rout(1) <= \Rout[1]~output_o\;

ww_Rout(2) <= \Rout[2]~output_o\;
END structure;


