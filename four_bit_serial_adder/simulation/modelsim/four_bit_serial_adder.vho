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

-- DATE "03/04/2015 00:14:17"

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

ENTITY 	four_bit_serial_adder IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : BUFFER std_logic_vector(3 DOWNTO 0);
	done : BUFFER std_logic
	);
END four_bit_serial_adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- S[1]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- S[2]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- S[3]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- done	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- start	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_serial_adder IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \S~1_combout\ : std_logic;
SIGNAL \carry~0_combout\ : std_logic;
SIGNAL \carry~regout\ : std_logic;
SIGNAL \S[3]~reg0_regout\ : std_logic;
SIGNAL \S[2]~reg0_regout\ : std_logic;
SIGNAL \S[1]~reg0_regout\ : std_logic;
SIGNAL \S[0]~reg0_regout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL shiftB : std_logic_vector(3 DOWNTO 0);
SIGNAL shiftA : std_logic_vector(3 DOWNTO 0);
SIGNAL count : std_logic_vector(2 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_A <= A;
ww_B <= B;
S <= ww_S;
done <= ww_done;
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

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_start,
	combout => \start~combout\);

-- Location: LC_X11_Y5_N8
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS((!\start~combout\ & ((count(0) $ (count(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0550",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \start~combout\,
	datac => count(0),
	datad => count(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X11_Y5_N7
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((!count(0) & (!\start~combout\ & ((count(1)) # (!count(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => \start~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X11_Y5_N2
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS((!\start~combout\ & (count(2) $ (((count(0) & count(1)))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "006a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(2),
	datab => count(0),
	datac => count(1),
	datad => \start~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X11_Y5_N4
\always3~0\ : maxv_lcell
-- Equation(s):
-- \always3~0_combout\ = (\start~combout\) # ((count(2) & (!count(0) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => count(2),
	datac => count(0),
	datad => count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always3~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LC_X11_Y5_N9
\S~1\ : maxv_lcell
-- Equation(s):
-- \S~1_combout\ = (\start~combout\) # (((count(0)) # (count(1))) # (!count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => count(2),
	datac => count(0),
	datad => count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S~1_combout\);

-- Location: LC_X10_Y5_N4
\shiftA[3]\ : maxv_lcell
-- Equation(s):
-- shiftA(3) = DFFEAS((((\A~combout\(3) & \always3~0_combout\))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \A~combout\(3),
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftA(3));

-- Location: LC_X10_Y5_N3
\shiftA[2]\ : maxv_lcell
-- Equation(s):
-- shiftA(2) = DFFEAS(((\always3~0_combout\ & (\A~combout\(2))) # (!\always3~0_combout\ & ((shiftA(3))))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \A~combout\(2),
	datac => shiftA(3),
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftA(2));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X10_Y5_N2
\shiftA[1]\ : maxv_lcell
-- Equation(s):
-- shiftA(1) = DFFEAS(((\always3~0_combout\ & ((\A~combout\(1)))) # (!\always3~0_combout\ & (shiftA(2)))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => shiftA(2),
	datab => \A~combout\(1),
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftA(1));

-- Location: LC_X11_Y5_N1
\shiftA[0]\ : maxv_lcell
-- Equation(s):
-- shiftA(0) = DFFEAS(((\always3~0_combout\ & (\A~combout\(0))) # (!\always3~0_combout\ & ((shiftA(1))))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \A~combout\(0),
	datac => \always3~0_combout\,
	datad => shiftA(1),
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftA(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LC_X10_Y5_N6
\shiftB[3]\ : maxv_lcell
-- Equation(s):
-- shiftB(3) = DFFEAS((((\B~combout\(3) & \always3~0_combout\))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \B~combout\(3),
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftB(3));

-- Location: LC_X10_Y5_N8
\shiftB[2]\ : maxv_lcell
-- Equation(s):
-- shiftB(2) = DFFEAS(((\always3~0_combout\ & (\B~combout\(2))) # (!\always3~0_combout\ & ((shiftB(3))))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \B~combout\(2),
	datac => shiftB(3),
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftB(2));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LC_X10_Y5_N7
\shiftB[1]\ : maxv_lcell
-- Equation(s):
-- shiftB(1) = DFFEAS(((\always3~0_combout\ & ((\B~combout\(1)))) # (!\always3~0_combout\ & (shiftB(2)))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => shiftB(2),
	datab => \B~combout\(1),
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftB(1));

-- Location: LC_X11_Y5_N5
\shiftB[0]\ : maxv_lcell
-- Equation(s):
-- shiftB(0) = DFFEAS(((\always3~0_combout\ & (\B~combout\(0))) # (!\always3~0_combout\ & ((shiftB(1))))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \B~combout\(0),
	datac => \always3~0_combout\,
	datad => shiftB(1),
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => shiftB(0));

-- Location: LC_X12_Y5_N0
\carry~0\ : maxv_lcell
-- Equation(s):
-- \carry~0_combout\ = (shiftA(0) & ((shiftB(0)) # ((!\start~combout\ & \carry~regout\)))) # (!shiftA(0) & (!\start~combout\ & (\carry~regout\ & shiftB(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \carry~regout\,
	datac => shiftA(0),
	datad => shiftB(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \carry~0_combout\);

-- Location: LC_X12_Y5_N2
carry : maxv_lcell
-- Equation(s):
-- \carry~regout\ = DFFEAS((((\carry~0_combout\ & !\always3~0_combout\))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \carry~0_combout\,
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \carry~regout\);

-- Location: LC_X12_Y5_N4
\S[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \S[3]~reg0_regout\ = DFFEAS((!\always3~0_combout\ & (\carry~regout\ $ (shiftB(0) $ (shiftA(0))))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0096",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \carry~regout\,
	datab => shiftB(0),
	datac => shiftA(0),
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[3]~reg0_regout\);

-- Location: LC_X11_Y5_N3
\S[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \S[2]~reg0_regout\ = DFFEAS((((!\always3~0_combout\ & \S[3]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

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
	datac => \always3~0_combout\,
	datad => \S[3]~reg0_regout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[2]~reg0_regout\);

-- Location: LC_X11_Y5_N6
\S[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \S[1]~reg0_regout\ = DFFEAS((((!\always3~0_combout\ & \S[2]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

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
	datac => \always3~0_combout\,
	datad => \S[2]~reg0_regout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[1]~reg0_regout\);

-- Location: LC_X11_Y5_N0
\S[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \S[0]~reg0_regout\ = DFFEAS((\S[1]~reg0_regout\ & (((!\always3~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \S~1_combout\, , , , )

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
	dataa => \S[1]~reg0_regout\,
	datac => \always3~0_combout\,
	aclr => GND,
	ena => \S~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \S[0]~reg0_regout\);

-- Location: LC_X10_Y5_N5
\done~0\ : maxv_lcell
-- Equation(s):
-- \done~0_combout\ = ((!count(1) & (count(2) & !count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datac => count(2),
	datad => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done~0_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S[0]~reg0_regout\,
	oe => VCC,
	padio => ww_S(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S[1]~reg0_regout\,
	oe => VCC,
	padio => ww_S(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S[2]~reg0_regout\,
	oe => VCC,
	padio => ww_S(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\S[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \S[3]~reg0_regout\,
	oe => VCC,
	padio => ww_S(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \done~0_combout\,
	oe => VCC,
	padio => ww_done);
END structure;


