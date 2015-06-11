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

-- DATE "03/03/2015 23:59:24"

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

ENTITY 	four_bit_multiplier IS
    PORT (
	clk : IN std_logic;
	multstart : IN std_logic;
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	result : BUFFER std_logic_vector(7 DOWNTO 0);
	done : BUFFER std_logic
	);
END four_bit_multiplier;

-- Design Ports Information
-- result[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- result[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- result[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- result[3]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- result[4]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- result[5]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- result[6]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- result[7]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- done	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- multstart	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF four_bit_multiplier IS
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
SIGNAL ww_multstart : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \multstart~combout\ : std_logic;
SIGNAL \i0|Add0~1_combout\ : std_logic;
SIGNAL \i0|Add0~0_combout\ : std_logic;
SIGNAL \done~1_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \i1|q[0]~16_combout\ : std_logic;
SIGNAL \i1|q[0]~1\ : std_logic;
SIGNAL \i1|q[0]~1COUT1_25\ : std_logic;
SIGNAL \i1|q[1]~3\ : std_logic;
SIGNAL \i1|q[1]~3COUT1_27\ : std_logic;
SIGNAL \i1|q[2]~5\ : std_logic;
SIGNAL \i1|q[2]~5COUT1_29\ : std_logic;
SIGNAL \i1|q[3]~7\ : std_logic;
SIGNAL \i1|q[3]~7COUT1_31\ : std_logic;
SIGNAL \i1|q[4]~9\ : std_logic;
SIGNAL \i1|q[5]~11\ : std_logic;
SIGNAL \i1|q[5]~11COUT1_33\ : std_logic;
SIGNAL \i1|q[6]~13\ : std_logic;
SIGNAL \i1|q[6]~13COUT1_35\ : std_logic;
SIGNAL \i0|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL multd : std_logic_vector(3 DOWNTO 0);
SIGNAL \i1|q\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_multstart <= multstart;
ww_a <= a;
ww_b <= b;
result <= ww_result;
done <= ww_done;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\multstart~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_multstart,
	combout => \multstart~combout\);

-- Location: LC_X4_Y4_N8
\multd[0]\ : maxv_lcell
-- Equation(s):
-- multd(0) = DFFEAS((((\a~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \multstart~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \a~combout\(0),
	aclr => GND,
	ena => \multstart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => multd(0));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X3_Y4_N0
\i0|q[0]\ : maxv_lcell
-- Equation(s):
-- \i0|q\(0) = DFFEAS((\multstart~combout\ & (((\b~combout\(0))))) # (!\multstart~combout\ & (!\done~0_combout\ & (!\i0|q\(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f011",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \done~0_combout\,
	datab => \i0|q\(0),
	datac => \b~combout\(0),
	datad => \multstart~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|q\(0));

-- Location: LC_X3_Y4_N8
\i0|Add0~1\ : maxv_lcell
-- Equation(s):
-- \i0|Add0~1_combout\ = ((\i0|q\(1) $ (\i0|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \i0|q\(1),
	datad => \i0|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i0|Add0~1_combout\);

-- Location: LC_X3_Y4_N5
\i0|q[1]\ : maxv_lcell
-- Equation(s):
-- \i0|q\(1) = DFFEAS((\multstart~combout\ & (((\b~combout\(1))))) # (!\multstart~combout\ & (!\done~0_combout\ & ((!\i0|Add0~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0d1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \done~0_combout\,
	datab => \multstart~combout\,
	datac => \b~combout\(1),
	datad => \i0|Add0~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|q\(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X3_Y4_N1
\i0|Add0~0\ : maxv_lcell
-- Equation(s):
-- \i0|Add0~0_combout\ = (\i0|q\(2) $ (((\i0|q\(1)) # (\i0|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|q\(2),
	datac => \i0|q\(1),
	datad => \i0|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i0|Add0~0_combout\);

-- Location: LC_X3_Y4_N2
\i0|q[2]\ : maxv_lcell
-- Equation(s):
-- \i0|q\(2) = DFFEAS((\multstart~combout\ & (((\b~combout\(2))))) # (!\multstart~combout\ & (!\done~0_combout\ & ((!\i0|Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0d1",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \done~0_combout\,
	datab => \multstart~combout\,
	datac => \b~combout\(2),
	datad => \i0|Add0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|q\(2));

-- Location: LC_X3_Y4_N7
\done~1\ : maxv_lcell
-- Equation(s):
-- \done~1_combout\ = ((!\i0|q\(2) & (!\i0|q\(1) & !\i0|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \i0|q\(2),
	datac => \i0|q\(1),
	datad => \i0|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done~1_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X3_Y4_N6
\i0|q[3]\ : maxv_lcell
-- Equation(s):
-- \i0|q\(3) = DFFEAS((\multstart~combout\ & (((\b~combout\(3))))) # (!\multstart~combout\ & (\i0|q\(3) & (!\done~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i0|q\(3),
	datab => \multstart~combout\,
	datac => \done~1_combout\,
	datad => \b~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|q\(3));

-- Location: LC_X3_Y4_N3
\done~0\ : maxv_lcell
-- Equation(s):
-- \done~0_combout\ = (!\i0|q\(1) & (!\i0|q\(0) & (!\i0|q\(3) & !\i0|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i0|q\(1),
	datab => \i0|q\(0),
	datac => \i0|q\(3),
	datad => \i0|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \done~0_combout\);

-- Location: LC_X3_Y4_N4
\i1|q[0]~16\ : maxv_lcell
-- Equation(s):
-- \i1|q[0]~16_combout\ = ((\multstart~combout\) # ((!\done~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \multstart~combout\,
	datad => \done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \i1|q[0]~16_combout\);

-- Location: LC_X4_Y4_N0
\i1|q[0]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(0) = DFFEAS(multd(0) $ ((\i1|q\(0))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )
-- \i1|q[0]~1\ = CARRY((multd(0) & (\i1|q\(0))))
-- \i1|q[0]~1COUT1_25\ = CARRY((multd(0) & (\i1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => multd(0),
	datab => \i1|q\(0),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(0),
	cout0 => \i1|q[0]~1\,
	cout1 => \i1|q[0]~1COUT1_25\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X5_Y4_N1
\multd[1]\ : maxv_lcell
-- Equation(s):
-- multd(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \multstart~combout\, \a~combout\(1), , , VCC)

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
	datac => \a~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \multstart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => multd(1));

-- Location: LC_X4_Y4_N1
\i1|q[1]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(1) = DFFEAS(multd(1) $ (\i1|q\(1) $ ((\i1|q[0]~1\))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )
-- \i1|q[1]~3\ = CARRY((multd(1) & (!\i1|q\(1) & !\i1|q[0]~1\)) # (!multd(1) & ((!\i1|q[0]~1\) # (!\i1|q\(1)))))
-- \i1|q[1]~3COUT1_27\ = CARRY((multd(1) & (!\i1|q\(1) & !\i1|q[0]~1COUT1_25\)) # (!multd(1) & ((!\i1|q[0]~1COUT1_25\) # (!\i1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => multd(1),
	datab => \i1|q\(1),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	cin0 => \i1|q[0]~1\,
	cin1 => \i1|q[0]~1COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(1),
	cout0 => \i1|q[1]~3\,
	cout1 => \i1|q[1]~3COUT1_27\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X4_Y4_N9
\multd[2]\ : maxv_lcell
-- Equation(s):
-- multd(2) = DFFEAS((((\a~combout\(2)))), GLOBAL(\clk~combout\), VCC, , \multstart~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \a~combout\(2),
	aclr => GND,
	ena => \multstart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => multd(2));

-- Location: LC_X4_Y4_N2
\i1|q[2]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(2) = DFFEAS(\i1|q\(2) $ (multd(2) $ ((!\i1|q[1]~3\))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )
-- \i1|q[2]~5\ = CARRY((\i1|q\(2) & ((multd(2)) # (!\i1|q[1]~3\))) # (!\i1|q\(2) & (multd(2) & !\i1|q[1]~3\)))
-- \i1|q[2]~5COUT1_29\ = CARRY((\i1|q\(2) & ((multd(2)) # (!\i1|q[1]~3COUT1_27\))) # (!\i1|q\(2) & (multd(2) & !\i1|q[1]~3COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i1|q\(2),
	datab => multd(2),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	cin0 => \i1|q[1]~3\,
	cin1 => \i1|q[1]~3COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(2),
	cout0 => \i1|q[2]~5\,
	cout1 => \i1|q[2]~5COUT1_29\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X5_Y4_N5
\multd[3]\ : maxv_lcell
-- Equation(s):
-- multd(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \multstart~combout\, \a~combout\(3), , , VCC)

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
	datac => \a~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \multstart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => multd(3));

-- Location: LC_X4_Y4_N3
\i1|q[3]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(3) = DFFEAS(\i1|q\(3) $ (multd(3) $ ((\i1|q[2]~5\))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )
-- \i1|q[3]~7\ = CARRY((\i1|q\(3) & (!multd(3) & !\i1|q[2]~5\)) # (!\i1|q\(3) & ((!\i1|q[2]~5\) # (!multd(3)))))
-- \i1|q[3]~7COUT1_31\ = CARRY((\i1|q\(3) & (!multd(3) & !\i1|q[2]~5COUT1_29\)) # (!\i1|q\(3) & ((!\i1|q[2]~5COUT1_29\) # (!multd(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i1|q\(3),
	datab => multd(3),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	cin0 => \i1|q[2]~5\,
	cin1 => \i1|q[2]~5COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(3),
	cout0 => \i1|q[3]~7\,
	cout1 => \i1|q[3]~7COUT1_31\);

-- Location: LC_X4_Y4_N4
\i1|q[4]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(4) = DFFEAS(\i1|q\(4) $ ((((!\i1|q[3]~7\)))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )
-- \i1|q[4]~9\ = CARRY((\i1|q\(4) & ((!\i1|q[3]~7COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i1|q\(4),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	cin0 => \i1|q[3]~7\,
	cin1 => \i1|q[3]~7COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(4),
	cout => \i1|q[4]~9\);

-- Location: LC_X4_Y4_N5
\i1|q[5]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(5) = DFFEAS(\i1|q\(5) $ ((((\i1|q[4]~9\)))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )
-- \i1|q[5]~11\ = CARRY(((!\i1|q[4]~9\)) # (!\i1|q\(5)))
-- \i1|q[5]~11COUT1_33\ = CARRY(((!\i1|q[4]~9\)) # (!\i1|q\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i1|q\(5),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	cin => \i1|q[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(5),
	cout0 => \i1|q[5]~11\,
	cout1 => \i1|q[5]~11COUT1_33\);

-- Location: LC_X4_Y4_N6
\i1|q[6]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(6) = DFFEAS(\i1|q\(6) $ ((((!(!\i1|q[4]~9\ & \i1|q[5]~11\) # (\i1|q[4]~9\ & \i1|q[5]~11COUT1_33\))))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )
-- \i1|q[6]~13\ = CARRY((\i1|q\(6) & ((!\i1|q[5]~11\))))
-- \i1|q[6]~13COUT1_35\ = CARRY((\i1|q\(6) & ((!\i1|q[5]~11COUT1_33\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \i1|q\(6),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	cin => \i1|q[4]~9\,
	cin0 => \i1|q[5]~11\,
	cin1 => \i1|q[5]~11COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(6),
	cout0 => \i1|q[6]~13\,
	cout1 => \i1|q[6]~13COUT1_35\);

-- Location: LC_X4_Y4_N7
\i1|q[7]\ : maxv_lcell
-- Equation(s):
-- \i1|q\(7) = DFFEAS((\i1|q\(7) $ (((!\i1|q[4]~9\ & \i1|q[6]~13\) # (\i1|q[4]~9\ & \i1|q[6]~13COUT1_35\)))), GLOBAL(\clk~combout\), VCC, , \i1|q[0]~16_combout\, , , \multstart~combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \i1|q\(7),
	aclr => GND,
	sclr => \multstart~combout\,
	ena => \i1|q[0]~16_combout\,
	cin => \i1|q[4]~9\,
	cin0 => \i1|q[6]~13\,
	cin1 => \i1|q[6]~13COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|q\(7));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(0),
	oe => VCC,
	padio => ww_result(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(1),
	oe => VCC,
	padio => ww_result(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(2),
	oe => VCC,
	padio => ww_result(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(3),
	oe => VCC,
	padio => ww_result(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(4),
	oe => VCC,
	padio => ww_result(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(5),
	oe => VCC,
	padio => ww_result(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(6),
	oe => VCC,
	padio => ww_result(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\result[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \i1|q\(7),
	oe => VCC,
	padio => ww_result(7));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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


