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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/20/2015 23:52:01"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	fsm_light_sequence IS
    PORT (
	clk : IN std_logic;
	left : IN std_logic;
	right : IN std_logic;
	haz : IN std_logic;
	La : OUT std_logic;
	Lb : OUT std_logic;
	Lc : OUT std_logic;
	Ra : OUT std_logic;
	Rb : OUT std_logic;
	Rc : OUT std_logic
	);
END fsm_light_sequence;

-- Design Ports Information
-- La	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Lb	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Lc	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Ra	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Rb	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Rc	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- haz	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- right	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- left	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF fsm_light_sequence IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_left : std_logic;
SIGNAL ww_right : std_logic;
SIGNAL ww_haz : std_logic;
SIGNAL ww_La : std_logic;
SIGNAL ww_Lb : std_logic;
SIGNAL ww_Lc : std_logic;
SIGNAL ww_Ra : std_logic;
SIGNAL ww_Rb : std_logic;
SIGNAL ww_Rc : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \haz~combout\ : std_logic;
SIGNAL \right~combout\ : std_logic;
SIGNAL \left~combout\ : std_logic;
SIGNAL \state_p.R1~regout\ : std_logic;
SIGNAL \state_n.R1~regout\ : std_logic;
SIGNAL \state_p.R2~regout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \state_n.LR3~regout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \state_p.LR3~regout\ : std_logic;
SIGNAL \Selector3~1\ : std_logic;
SIGNAL \Selector4~0\ : std_logic;
SIGNAL \state_n.L1~regout\ : std_logic;
SIGNAL \state_p.L2~regout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state_p.L3~regout\ : std_logic;
SIGNAL \Selector0~0\ : std_logic;
SIGNAL \Selector1~0\ : std_logic;
SIGNAL \Lb~reg0_regout\ : std_logic;
SIGNAL \state_n.L2~regout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Rb~reg0_regout\ : std_logic;
SIGNAL \state_n.R2~regout\ : std_logic;
SIGNAL \state_p.R3~regout\ : std_logic;
SIGNAL \state_n.R3~regout\ : std_logic;
SIGNAL \state_n.L3~regout\ : std_logic;
SIGNAL \Selector6~4\ : std_logic;
SIGNAL \state_p.000~regout\ : std_logic;
SIGNAL \state_n.000~regout\ : std_logic;
SIGNAL \state_p.L1~regout\ : std_logic;
SIGNAL \Selector0~2\ : std_logic;
SIGNAL \Selector3~0\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \La~reg0_regout\ : std_logic;
SIGNAL \Lc~reg0_regout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Ra~reg0_regout\ : std_logic;
SIGNAL \Rc~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_left <= left;
ww_right <= right;
ww_haz <= haz;
La <= ww_La;
Lb <= ww_Lb;
Lc <= ww_Lc;
Ra <= ww_Ra;
Rb <= ww_Rb;
Rc <= ww_Rc;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz,
	combout => \haz~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\right~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_right,
	combout => \right~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\left~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_left,
	combout => \left~combout\);

-- Location: LC_X11_Y6_N9
\state_p.R1\ : maxv_lcell
-- Equation(s):
-- \state_p.R1~regout\ = DFFEAS((\right~combout\ & (!\left~combout\ & (!\state_n.000~regout\ & !\haz~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \right~combout\,
	datab => \left~combout\,
	datac => \state_n.000~regout\,
	datad => \haz~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.R1~regout\);

-- Location: LC_X13_Y6_N5
\state_n.R1\ : maxv_lcell
-- Equation(s):
-- \Selector3~0\ = (((!state_n.R1 & !\state_n.R2~regout\)))
-- \state_n.R1~regout\ = DFFEAS(\Selector3~0\, GLOBAL(\clk~combout\), VCC, , , \state_p.R1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \state_p.R1~regout\,
	datad => \state_n.R2~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~0\,
	regout => \state_n.R1~regout\);

-- Location: LC_X11_Y6_N5
\state_p.R2\ : maxv_lcell
-- Equation(s):
-- \state_p.R2~regout\ = DFFEAS((((!\haz~combout\ & \state_n.R1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \haz~combout\,
	datad => \state_n.R1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.R2~regout\);

-- Location: LC_X11_Y6_N4
\always0~0\ : maxv_lcell
-- Equation(s):
-- \always0~0_combout\ = (\haz~combout\) # (((\right~combout\ & \left~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \haz~combout\,
	datac => \right~combout\,
	datad => \left~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~0_combout\);

-- Location: LC_X12_Y6_N7
\state_n.LR3\ : maxv_lcell
-- Equation(s):
-- \Selector3~1\ = (((!state_n.LR3 & !\state_n.R3~regout\)))
-- \state_n.LR3~regout\ = DFFEAS(\Selector3~1\, GLOBAL(\clk~combout\), VCC, , , \state_p.LR3~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \state_p.LR3~regout\,
	datad => \state_n.R3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~1\,
	regout => \state_n.LR3~regout\);

-- Location: LC_X13_Y6_N8
\Selector2~2\ : maxv_lcell
-- Equation(s):
-- \Selector2~2_combout\ = (\haz~combout\ & ((\state_n.R1~regout\) # ((\state_n.R2~regout\) # (!\Selector0~2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_n.R1~regout\,
	datab => \haz~combout\,
	datac => \Selector0~2\,
	datad => \state_n.R2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~2_combout\);

-- Location: LC_X13_Y6_N9
\state_p.LR3\ : maxv_lcell
-- Equation(s):
-- \state_p.LR3~regout\ = DFFEAS((\Selector2~2_combout\) # ((\always0~0_combout\ & ((\state_n.LR3~regout\) # (!\state_n.000~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \always0~0_combout\,
	datab => \state_n.LR3~regout\,
	datac => \state_n.000~regout\,
	datad => \Selector2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.LR3~regout\);

-- Location: LC_X13_Y6_N3
\state_n.R2\ : maxv_lcell
-- Equation(s):
-- \Selector4~0\ = ((state_n.R2 & ((\Rb~reg0_regout\) # (!\haz~combout\))))
-- \state_n.R2~regout\ = DFFEAS(\Selector4~0\, GLOBAL(\clk~combout\), VCC, , , \state_p.R2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \haz~combout\,
	datac => \state_p.R2~regout\,
	datad => \Rb~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0\,
	regout => \state_n.R2~regout\);

-- Location: LC_X13_Y6_N4
\state_n.L1\ : maxv_lcell
-- Equation(s):
-- \Selector0~2\ = (((!state_n.L1 & !\state_n.L2~regout\)))
-- \state_n.L1~regout\ = DFFEAS(\Selector0~2\, GLOBAL(\clk~combout\), VCC, , , \state_p.L1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \state_p.L1~regout\,
	datad => \state_n.L2~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~2\,
	regout => \state_n.L1~regout\);

-- Location: LC_X11_Y6_N3
\state_p.L2\ : maxv_lcell
-- Equation(s):
-- \state_p.L2~regout\ = DFFEAS((((!\haz~combout\ & \state_n.L1~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \haz~combout\,
	datad => \state_n.L1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.L2~regout\);

-- Location: LC_X13_Y6_N7
\Selector1~1\ : maxv_lcell
-- Equation(s):
-- \Selector1~1_combout\ = (\Lb~reg0_regout\ & ((\state_n.R2~regout\) # ((\state_n.R1~regout\) # (\state_n.L1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_n.R2~regout\,
	datab => \Lb~reg0_regout\,
	datac => \state_n.R1~regout\,
	datad => \state_n.L1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~1_combout\);

-- Location: LC_X12_Y6_N0
\state_p.L3\ : maxv_lcell
-- Equation(s):
-- \state_p.L3~regout\ = DFFEAS((!\haz~combout\ & (((\state_n.L2~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \haz~combout\,
	datad => \state_n.L2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.L3~regout\);

-- Location: LC_X12_Y6_N6
\state_n.L3\ : maxv_lcell
-- Equation(s):
-- \Selector0~0\ = ((!\state_n.LR3~regout\ & (!state_n.L3)))
-- \state_n.L3~regout\ = DFFEAS(\Selector0~0\, GLOBAL(\clk~combout\), VCC, , , \state_p.L3~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \state_n.LR3~regout\,
	datac => \state_p.L3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0\,
	regout => \state_n.L3~regout\);

-- Location: LC_X13_Y6_N1
\state_n.L2\ : maxv_lcell
-- Equation(s):
-- \Selector1~0\ = ((state_n.L2 & ((\Lb~reg0_regout\) # (!\haz~combout\))))
-- \state_n.L2~regout\ = DFFEAS(\Selector1~0\, GLOBAL(\clk~combout\), VCC, , , \state_p.L2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \haz~combout\,
	datac => \state_p.L2~regout\,
	datad => \Lb~reg0_regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0\,
	regout => \state_n.L2~regout\);

-- Location: LC_X13_Y6_N2
\Lb~reg0\ : maxv_lcell
-- Equation(s):
-- \Lb~reg0_regout\ = DFFEAS(((\Selector1~0\) # ((\haz~combout\ & \Selector1~1_combout\))) # (!\Selector0~0\), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff8f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \haz~combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector0~0\,
	datad => \Selector1~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Lb~reg0_regout\);

-- Location: LC_X12_Y6_N4
\Selector4~1\ : maxv_lcell
-- Equation(s):
-- \Selector4~1_combout\ = (\Rb~reg0_regout\ & ((\state_n.L2~regout\) # ((\state_n.R1~regout\) # (\state_n.L1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state_n.L2~regout\,
	datab => \state_n.R1~regout\,
	datac => \Rb~reg0_regout\,
	datad => \state_n.L1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~1_combout\);

-- Location: LC_X12_Y6_N5
\Rb~reg0\ : maxv_lcell
-- Equation(s):
-- \Rb~reg0_regout\ = DFFEAS(((\Selector4~0\) # ((\haz~combout\ & \Selector4~1_combout\))) # (!\Selector3~1\), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Selector3~1\,
	datab => \haz~combout\,
	datac => \Selector4~0\,
	datad => \Selector4~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rb~reg0_regout\);

-- Location: LC_X11_Y6_N8
\state_p.R3\ : maxv_lcell
-- Equation(s):
-- \state_p.R3~regout\ = DFFEAS((\state_n.R2~regout\ & (((!\haz~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state_n.R2~regout\,
	datac => \haz~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.R3~regout\);

-- Location: LC_X12_Y6_N3
\state_n.R3\ : maxv_lcell
-- Equation(s):
-- \state_n.R3~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \state_p.R3~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \state_p.R3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_n.R3~regout\);

-- Location: LC_X11_Y6_N6
\state_n.000\ : maxv_lcell
-- Equation(s):
-- \Selector6~4\ = (\right~combout\ & (!\left~combout\ & ((\state_n.LR3~regout\)))) # (!\right~combout\ & ((\state_n.LR3~regout\) # ((!\left~combout\ & !state_n.000))))
-- \state_n.000~regout\ = DFFEAS(\Selector6~4\, GLOBAL(\clk~combout\), VCC, , , \state_p.000~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7701",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \right~combout\,
	datab => \left~combout\,
	datac => \state_p.000~regout\,
	datad => \state_n.LR3~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector6~4\,
	regout => \state_n.000~regout\);

-- Location: LC_X11_Y6_N7
\state_p.000\ : maxv_lcell
-- Equation(s):
-- \state_p.000~regout\ = DFFEAS((!\state_n.R3~regout\ & (!\state_n.L3~regout\ & ((\haz~combout\) # (!\Selector6~4\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0405",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state_n.R3~regout\,
	datab => \haz~combout\,
	datac => \state_n.L3~regout\,
	datad => \Selector6~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.000~regout\);

-- Location: LC_X11_Y6_N2
\state_p.L1\ : maxv_lcell
-- Equation(s):
-- \state_p.L1~regout\ = DFFEAS((!\right~combout\ & (\left~combout\ & (!\state_n.000~regout\ & !\haz~combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \right~combout\,
	datab => \left~combout\,
	datac => \state_n.000~regout\,
	datad => \haz~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_p.L1~regout\);

-- Location: LC_X12_Y6_N8
\Selector0~1\ : maxv_lcell
-- Equation(s):
-- \Selector0~1_combout\ = ((\haz~combout\ & (\La~reg0_regout\ & !\Selector3~0\))) # (!\Selector0~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \haz~combout\,
	datab => \La~reg0_regout\,
	datac => \Selector0~0\,
	datad => \Selector3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~1_combout\);

-- Location: LC_X12_Y6_N9
\La~reg0\ : maxv_lcell
-- Equation(s):
-- \La~reg0_regout\ = DFFEAS((\Selector0~1_combout\) # ((!\Selector0~2\ & ((\La~reg0_regout\) # (!\haz~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff31",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \haz~combout\,
	datab => \Selector0~2\,
	datac => \La~reg0_regout\,
	datad => \Selector0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \La~reg0_regout\);

-- Location: LC_X13_Y6_N6
\Lc~reg0\ : maxv_lcell
-- Equation(s):
-- \Lc~reg0_regout\ = DFFEAS((\state_n.LR3~regout\) # ((\state_n.L3~regout\) # ((\Lc~reg0_regout\ & \Selector2~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Lc~reg0_regout\,
	datab => \state_n.LR3~regout\,
	datac => \state_n.L3~regout\,
	datad => \Selector2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Lc~reg0_regout\);

-- Location: LC_X12_Y6_N1
\Selector3~2\ : maxv_lcell
-- Equation(s):
-- \Selector3~2_combout\ = ((\haz~combout\ & (\Ra~reg0_regout\ & !\Selector0~2\))) # (!\Selector3~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f8f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \haz~combout\,
	datab => \Ra~reg0_regout\,
	datac => \Selector3~1\,
	datad => \Selector0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~2_combout\);

-- Location: LC_X12_Y6_N2
\Ra~reg0\ : maxv_lcell
-- Equation(s):
-- \Ra~reg0_regout\ = DFFEAS((\Selector3~2_combout\) # ((!\Selector3~0\ & ((\Ra~reg0_regout\) # (!\haz~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff31",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \haz~combout\,
	datab => \Selector3~0\,
	datac => \Ra~reg0_regout\,
	datad => \Selector3~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Ra~reg0_regout\);

-- Location: LC_X13_Y6_N0
\Rc~reg0\ : maxv_lcell
-- Equation(s):
-- \Rc~reg0_regout\ = DFFEAS((\state_n.R3~regout\) # ((\state_n.LR3~regout\) # ((\Rc~reg0_regout\ & \Selector2~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state_n.R3~regout\,
	datab => \state_n.LR3~regout\,
	datac => \Rc~reg0_regout\,
	datad => \Selector2~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Rc~reg0_regout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\La~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \La~reg0_regout\,
	oe => VCC,
	padio => ww_La);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Lb~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Lb~reg0_regout\,
	oe => VCC,
	padio => ww_Lb);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Lc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Lc~reg0_regout\,
	oe => VCC,
	padio => ww_Lc);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Ra~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Ra~reg0_regout\,
	oe => VCC,
	padio => ww_Ra);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Rb~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Rb~reg0_regout\,
	oe => VCC,
	padio => ww_Rb);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Rc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Rc~reg0_regout\,
	oe => VCC,
	padio => ww_Rc);
END structure;


