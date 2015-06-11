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

-- DATE "04/15/2015 17:37:33"

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

ENTITY 	autoGenerator IS
    PORT (
	clk : IN std_logic;
	tuneSel : IN std_logic;
	\to\ : OUT std_logic
	);
END autoGenerator;

-- Design Ports Information
-- tuneSel	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- to	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF autoGenerator IS
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
SIGNAL ww_tuneSel : std_logic;
SIGNAL \ww_to\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \t1|count_240[0]~33\ : std_logic;
SIGNAL \t1|count_240[0]~33COUT1_55\ : std_logic;
SIGNAL \t1|count_240[1]~35\ : std_logic;
SIGNAL \t1|count_240[1]~35COUT1_57\ : std_logic;
SIGNAL \t1|count_240[2]~37\ : std_logic;
SIGNAL \t1|count_240[2]~37COUT1_59\ : std_logic;
SIGNAL \t1|count_240[3]~31\ : std_logic;
SIGNAL \t1|LessThan0~7_combout\ : std_logic;
SIGNAL \t1|count_240[4]~29\ : std_logic;
SIGNAL \t1|count_240[4]~29COUT1_61\ : std_logic;
SIGNAL \t1|count_240[5]~27\ : std_logic;
SIGNAL \t1|count_240[5]~27COUT1_63\ : std_logic;
SIGNAL \t1|count_240[6]~23\ : std_logic;
SIGNAL \t1|count_240[6]~23COUT1_65\ : std_logic;
SIGNAL \t1|count_240[7]~25\ : std_logic;
SIGNAL \t1|count_240[7]~25COUT1_67\ : std_logic;
SIGNAL \t1|count_240[8]~13\ : std_logic;
SIGNAL \t1|count_240[9]~7\ : std_logic;
SIGNAL \t1|count_240[9]~7COUT1_69\ : std_logic;
SIGNAL \t1|count_240[10]~9\ : std_logic;
SIGNAL \t1|count_240[10]~9COUT1_71\ : std_logic;
SIGNAL \t1|count_240[11]~11\ : std_logic;
SIGNAL \t1|count_240[11]~11COUT1_73\ : std_logic;
SIGNAL \t1|count_240[12]~1\ : std_logic;
SIGNAL \t1|count_240[12]~1COUT1_75\ : std_logic;
SIGNAL \t1|count_240[13]~15\ : std_logic;
SIGNAL \t1|count_240[14]~17\ : std_logic;
SIGNAL \t1|count_240[14]~17COUT1_77\ : std_logic;
SIGNAL \t1|count_240[15]~3\ : std_logic;
SIGNAL \t1|count_240[15]~3COUT1_79\ : std_logic;
SIGNAL \t1|count_240[16]~5\ : std_logic;
SIGNAL \t1|count_240[16]~5COUT1_81\ : std_logic;
SIGNAL \t1|count_240[17]~19\ : std_logic;
SIGNAL \t1|count_240[17]~19COUT1_83\ : std_logic;
SIGNAL \t1|LessThan0~2_combout\ : std_logic;
SIGNAL \t1|LessThan0~0_combout\ : std_logic;
SIGNAL \t1|LessThan0~1_combout\ : std_logic;
SIGNAL \t1|LessThan0~3_combout\ : std_logic;
SIGNAL \t1|LessThan0~5_combout\ : std_logic;
SIGNAL \t1|LessThan0~4_combout\ : std_logic;
SIGNAL \t1|LessThan0~6_combout\ : std_logic;
SIGNAL \t1|LessThan0~8_combout\ : std_logic;
SIGNAL \t1|clk_240~regout\ : std_logic;
SIGNAL \t1|toneOut~regout\ : std_logic;
SIGNAL \t1|count_240\ : std_logic_vector(18 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_tuneSel <= tuneSel;
\to\ <= \ww_to\;
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

-- Location: LC_X14_Y7_N1
\t1|count_240[0]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(0) = DFFEAS(((!\t1|count_240\(0))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[0]~33\ = CARRY(((\t1|count_240\(0))))
-- \t1|count_240[0]~33COUT1_55\ = CARRY(((\t1|count_240\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t1|count_240\(0),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(0),
	cout0 => \t1|count_240[0]~33\,
	cout1 => \t1|count_240[0]~33COUT1_55\);

-- Location: LC_X14_Y7_N2
\t1|count_240[1]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(1) = DFFEAS(\t1|count_240\(1) $ ((((\t1|count_240[0]~33\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[1]~35\ = CARRY(((!\t1|count_240[0]~33\)) # (!\t1|count_240\(1)))
-- \t1|count_240[1]~35COUT1_57\ = CARRY(((!\t1|count_240[0]~33COUT1_55\)) # (!\t1|count_240\(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \t1|count_240\(1),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin0 => \t1|count_240[0]~33\,
	cin1 => \t1|count_240[0]~33COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(1),
	cout0 => \t1|count_240[1]~35\,
	cout1 => \t1|count_240[1]~35COUT1_57\);

-- Location: LC_X14_Y7_N3
\t1|count_240[2]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(2) = DFFEAS(\t1|count_240\(2) $ ((((!\t1|count_240[1]~35\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[2]~37\ = CARRY((\t1|count_240\(2) & ((!\t1|count_240[1]~35\))))
-- \t1|count_240[2]~37COUT1_59\ = CARRY((\t1|count_240\(2) & ((!\t1|count_240[1]~35COUT1_57\))))

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
	dataa => \t1|count_240\(2),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin0 => \t1|count_240[1]~35\,
	cin1 => \t1|count_240[1]~35COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(2),
	cout0 => \t1|count_240[2]~37\,
	cout1 => \t1|count_240[2]~37COUT1_59\);

-- Location: LC_X14_Y7_N4
\t1|count_240[3]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(3) = DFFEAS(\t1|count_240\(3) $ ((((\t1|count_240[2]~37\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[3]~31\ = CARRY(((!\t1|count_240[2]~37COUT1_59\)) # (!\t1|count_240\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \t1|count_240\(3),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin0 => \t1|count_240[2]~37\,
	cin1 => \t1|count_240[2]~37COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(3),
	cout => \t1|count_240[3]~31\);

-- Location: LC_X14_Y7_N5
\t1|count_240[4]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(4) = DFFEAS(\t1|count_240\(4) $ ((((!\t1|count_240[3]~31\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[4]~29\ = CARRY((\t1|count_240\(4) & ((!\t1|count_240[3]~31\))))
-- \t1|count_240[4]~29COUT1_61\ = CARRY((\t1|count_240\(4) & ((!\t1|count_240[3]~31\))))

-- pragma translate_off
GENERIC MAP (
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
	dataa => \t1|count_240\(4),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[3]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(4),
	cout0 => \t1|count_240[4]~29\,
	cout1 => \t1|count_240[4]~29COUT1_61\);

-- Location: LC_X14_Y7_N0
\t1|LessThan0~7\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~7_combout\ = (\t1|count_240\(3)) # ((\t1|count_240\(0) & (\t1|count_240\(1) & \t1|count_240\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count_240\(3),
	datab => \t1|count_240\(0),
	datac => \t1|count_240\(1),
	datad => \t1|count_240\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~7_combout\);

-- Location: LC_X14_Y7_N6
\t1|count_240[5]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(5) = DFFEAS(\t1|count_240\(5) $ (((((!\t1|count_240[3]~31\ & \t1|count_240[4]~29\) # (\t1|count_240[3]~31\ & \t1|count_240[4]~29COUT1_61\))))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[5]~27\ = CARRY(((!\t1|count_240[4]~29\)) # (!\t1|count_240\(5)))
-- \t1|count_240[5]~27COUT1_63\ = CARRY(((!\t1|count_240[4]~29COUT1_61\)) # (!\t1|count_240\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => \t1|count_240\(5),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[3]~31\,
	cin0 => \t1|count_240[4]~29\,
	cin1 => \t1|count_240[4]~29COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(5),
	cout0 => \t1|count_240[5]~27\,
	cout1 => \t1|count_240[5]~27COUT1_63\);

-- Location: LC_X14_Y7_N7
\t1|count_240[6]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(6) = DFFEAS((\t1|count_240\(6) $ ((!(!\t1|count_240[3]~31\ & \t1|count_240[5]~27\) # (\t1|count_240[3]~31\ & \t1|count_240[5]~27COUT1_63\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[6]~23\ = CARRY(((\t1|count_240\(6) & !\t1|count_240[5]~27\)))
-- \t1|count_240[6]~23COUT1_65\ = CARRY(((\t1|count_240\(6) & !\t1|count_240[5]~27COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t1|count_240\(6),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[3]~31\,
	cin0 => \t1|count_240[5]~27\,
	cin1 => \t1|count_240[5]~27COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(6),
	cout0 => \t1|count_240[6]~23\,
	cout1 => \t1|count_240[6]~23COUT1_65\);

-- Location: LC_X14_Y7_N8
\t1|count_240[7]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(7) = DFFEAS(\t1|count_240\(7) $ (((((!\t1|count_240[3]~31\ & \t1|count_240[6]~23\) # (\t1|count_240[3]~31\ & \t1|count_240[6]~23COUT1_65\))))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[7]~25\ = CARRY(((!\t1|count_240[6]~23\)) # (!\t1|count_240\(7)))
-- \t1|count_240[7]~25COUT1_67\ = CARRY(((!\t1|count_240[6]~23COUT1_65\)) # (!\t1|count_240\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => \t1|count_240\(7),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[3]~31\,
	cin0 => \t1|count_240[6]~23\,
	cin1 => \t1|count_240[6]~23COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(7),
	cout0 => \t1|count_240[7]~25\,
	cout1 => \t1|count_240[7]~25COUT1_67\);

-- Location: LC_X14_Y7_N9
\t1|count_240[8]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(8) = DFFEAS((\t1|count_240\(8) $ ((!(!\t1|count_240[3]~31\ & \t1|count_240[7]~25\) # (\t1|count_240[3]~31\ & \t1|count_240[7]~25COUT1_67\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[8]~13\ = CARRY(((\t1|count_240\(8) & !\t1|count_240[7]~25COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t1|count_240\(8),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[3]~31\,
	cin0 => \t1|count_240[7]~25\,
	cin1 => \t1|count_240[7]~25COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(8),
	cout => \t1|count_240[8]~13\);

-- Location: LC_X15_Y7_N0
\t1|count_240[9]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(9) = DFFEAS((\t1|count_240\(9) $ ((\t1|count_240[8]~13\))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[9]~7\ = CARRY(((!\t1|count_240[8]~13\) # (!\t1|count_240\(9))))
-- \t1|count_240[9]~7COUT1_69\ = CARRY(((!\t1|count_240[8]~13\) # (!\t1|count_240\(9))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t1|count_240\(9),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[8]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(9),
	cout0 => \t1|count_240[9]~7\,
	cout1 => \t1|count_240[9]~7COUT1_69\);

-- Location: LC_X15_Y7_N1
\t1|count_240[10]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(10) = DFFEAS((\t1|count_240\(10) $ ((!(!\t1|count_240[8]~13\ & \t1|count_240[9]~7\) # (\t1|count_240[8]~13\ & \t1|count_240[9]~7COUT1_69\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[10]~9\ = CARRY(((\t1|count_240\(10) & !\t1|count_240[9]~7\)))
-- \t1|count_240[10]~9COUT1_71\ = CARRY(((\t1|count_240\(10) & !\t1|count_240[9]~7COUT1_69\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t1|count_240\(10),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[8]~13\,
	cin0 => \t1|count_240[9]~7\,
	cin1 => \t1|count_240[9]~7COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(10),
	cout0 => \t1|count_240[10]~9\,
	cout1 => \t1|count_240[10]~9COUT1_71\);

-- Location: LC_X15_Y7_N2
\t1|count_240[11]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(11) = DFFEAS((\t1|count_240\(11) $ (((!\t1|count_240[8]~13\ & \t1|count_240[10]~9\) # (\t1|count_240[8]~13\ & \t1|count_240[10]~9COUT1_71\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[11]~11\ = CARRY(((!\t1|count_240[10]~9\) # (!\t1|count_240\(11))))
-- \t1|count_240[11]~11COUT1_73\ = CARRY(((!\t1|count_240[10]~9COUT1_71\) # (!\t1|count_240\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t1|count_240\(11),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[8]~13\,
	cin0 => \t1|count_240[10]~9\,
	cin1 => \t1|count_240[10]~9COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(11),
	cout0 => \t1|count_240[11]~11\,
	cout1 => \t1|count_240[11]~11COUT1_73\);

-- Location: LC_X15_Y7_N3
\t1|count_240[12]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(12) = DFFEAS(\t1|count_240\(12) $ ((((!(!\t1|count_240[8]~13\ & \t1|count_240[11]~11\) # (\t1|count_240[8]~13\ & \t1|count_240[11]~11COUT1_73\))))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[12]~1\ = CARRY((\t1|count_240\(12) & ((!\t1|count_240[11]~11\))))
-- \t1|count_240[12]~1COUT1_75\ = CARRY((\t1|count_240\(12) & ((!\t1|count_240[11]~11COUT1_73\))))

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
	dataa => \t1|count_240\(12),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[8]~13\,
	cin0 => \t1|count_240[11]~11\,
	cin1 => \t1|count_240[11]~11COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(12),
	cout0 => \t1|count_240[12]~1\,
	cout1 => \t1|count_240[12]~1COUT1_75\);

-- Location: LC_X15_Y7_N4
\t1|count_240[13]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(13) = DFFEAS(\t1|count_240\(13) $ (((((!\t1|count_240[8]~13\ & \t1|count_240[12]~1\) # (\t1|count_240[8]~13\ & \t1|count_240[12]~1COUT1_75\))))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[13]~15\ = CARRY(((!\t1|count_240[12]~1COUT1_75\)) # (!\t1|count_240\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => \t1|count_240\(13),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[8]~13\,
	cin0 => \t1|count_240[12]~1\,
	cin1 => \t1|count_240[12]~1COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(13),
	cout => \t1|count_240[13]~15\);

-- Location: LC_X15_Y7_N5
\t1|count_240[14]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(14) = DFFEAS(\t1|count_240\(14) $ ((((!\t1|count_240[13]~15\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[14]~17\ = CARRY((\t1|count_240\(14) & ((!\t1|count_240[13]~15\))))
-- \t1|count_240[14]~17COUT1_77\ = CARRY((\t1|count_240\(14) & ((!\t1|count_240[13]~15\))))

-- pragma translate_off
GENERIC MAP (
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
	dataa => \t1|count_240\(14),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[13]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(14),
	cout0 => \t1|count_240[14]~17\,
	cout1 => \t1|count_240[14]~17COUT1_77\);

-- Location: LC_X15_Y7_N6
\t1|count_240[15]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(15) = DFFEAS(\t1|count_240\(15) $ (((((!\t1|count_240[13]~15\ & \t1|count_240[14]~17\) # (\t1|count_240[13]~15\ & \t1|count_240[14]~17COUT1_77\))))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[15]~3\ = CARRY(((!\t1|count_240[14]~17\)) # (!\t1|count_240\(15)))
-- \t1|count_240[15]~3COUT1_79\ = CARRY(((!\t1|count_240[14]~17COUT1_77\)) # (!\t1|count_240\(15)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => \t1|count_240\(15),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[13]~15\,
	cin0 => \t1|count_240[14]~17\,
	cin1 => \t1|count_240[14]~17COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(15),
	cout0 => \t1|count_240[15]~3\,
	cout1 => \t1|count_240[15]~3COUT1_79\);

-- Location: LC_X15_Y7_N7
\t1|count_240[16]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(16) = DFFEAS((\t1|count_240\(16) $ ((!(!\t1|count_240[13]~15\ & \t1|count_240[15]~3\) # (\t1|count_240[13]~15\ & \t1|count_240[15]~3COUT1_79\)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[16]~5\ = CARRY(((\t1|count_240\(16) & !\t1|count_240[15]~3\)))
-- \t1|count_240[16]~5COUT1_81\ = CARRY(((\t1|count_240\(16) & !\t1|count_240[15]~3COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \t1|count_240\(16),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[13]~15\,
	cin0 => \t1|count_240[15]~3\,
	cin1 => \t1|count_240[15]~3COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(16),
	cout0 => \t1|count_240[16]~5\,
	cout1 => \t1|count_240[16]~5COUT1_81\);

-- Location: LC_X15_Y7_N8
\t1|count_240[17]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(17) = DFFEAS(\t1|count_240\(17) $ (((((!\t1|count_240[13]~15\ & \t1|count_240[16]~5\) # (\t1|count_240[13]~15\ & \t1|count_240[16]~5COUT1_81\))))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )
-- \t1|count_240[17]~19\ = CARRY(((!\t1|count_240[16]~5\)) # (!\t1|count_240\(17)))
-- \t1|count_240[17]~19COUT1_83\ = CARRY(((!\t1|count_240[16]~5COUT1_81\)) # (!\t1|count_240\(17)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
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
	dataa => \t1|count_240\(17),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[13]~15\,
	cin0 => \t1|count_240[16]~5\,
	cin1 => \t1|count_240[16]~5COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(17),
	cout0 => \t1|count_240[17]~19\,
	cout1 => \t1|count_240[17]~19COUT1_83\);

-- Location: LC_X15_Y7_N9
\t1|count_240[18]\ : maxv_lcell
-- Equation(s):
-- \t1|count_240\(18) = DFFEAS((((!\t1|count_240[13]~15\ & \t1|count_240[17]~19\) # (\t1|count_240[13]~15\ & \t1|count_240[17]~19COUT1_83\) $ (!\t1|count_240\(18)))), GLOBAL(\clk~combout\), VCC, , , , , \t1|LessThan0~8_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \t1|count_240\(18),
	aclr => GND,
	sclr => \t1|LessThan0~8_combout\,
	cin => \t1|count_240[13]~15\,
	cin0 => \t1|count_240[17]~19\,
	cin1 => \t1|count_240[17]~19COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|count_240\(18));

-- Location: LC_X16_Y7_N0
\t1|LessThan0~2\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~2_combout\ = (\t1|count_240\(15) & (\t1|count_240\(16) & ((\t1|count_240\(14)) # (\t1|count_240\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count_240\(14),
	datab => \t1|count_240\(15),
	datac => \t1|count_240\(13),
	datad => \t1|count_240\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~2_combout\);

-- Location: LC_X16_Y7_N2
\t1|LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~0_combout\ = (\t1|count_240\(11)) # ((\t1|count_240\(10) & (\t1|count_240\(9) & \t1|count_240\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count_240\(10),
	datab => \t1|count_240\(11),
	datac => \t1|count_240\(9),
	datad => \t1|count_240\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~0_combout\);

-- Location: LC_X16_Y7_N3
\t1|LessThan0~1\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~1_combout\ = (\t1|count_240\(12) & (\t1|count_240\(16) & (\t1|count_240\(15) & \t1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count_240\(12),
	datab => \t1|count_240\(16),
	datac => \t1|count_240\(15),
	datad => \t1|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~1_combout\);

-- Location: LC_X16_Y7_N4
\t1|LessThan0~3\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~3_combout\ = (\t1|count_240\(17)) # ((\t1|count_240\(18)) # ((\t1|LessThan0~2_combout\) # (\t1|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count_240\(17),
	datab => \t1|count_240\(18),
	datac => \t1|LessThan0~2_combout\,
	datad => \t1|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~3_combout\);

-- Location: LC_X16_Y7_N6
\t1|LessThan0~5\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~5_combout\ = ((\t1|count_240\(12) & (\t1|count_240\(7) & \t1|count_240\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|count_240\(12),
	datac => \t1|count_240\(7),
	datad => \t1|count_240\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~5_combout\);

-- Location: LC_X16_Y7_N7
\t1|LessThan0~4\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~4_combout\ = ((\t1|count_240\(16) & (\t1|count_240\(6) & \t1|count_240\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \t1|count_240\(16),
	datac => \t1|count_240\(6),
	datad => \t1|count_240\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~4_combout\);

-- Location: LC_X16_Y7_N8
\t1|LessThan0~6\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~6_combout\ = (\t1|count_240\(10) & (\t1|count_240\(15) & (\t1|LessThan0~5_combout\ & \t1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count_240\(10),
	datab => \t1|count_240\(15),
	datac => \t1|LessThan0~5_combout\,
	datad => \t1|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~6_combout\);

-- Location: LC_X16_Y7_N9
\t1|LessThan0~8\ : maxv_lcell
-- Equation(s):
-- \t1|LessThan0~8_combout\ = (\t1|LessThan0~3_combout\) # ((\t1|LessThan0~6_combout\ & ((\t1|count_240\(4)) # (\t1|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \t1|count_240\(4),
	datab => \t1|LessThan0~7_combout\,
	datac => \t1|LessThan0~3_combout\,
	datad => \t1|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \t1|LessThan0~8_combout\);

-- Location: LC_X16_Y7_N5
\t1|clk_240\ : maxv_lcell
-- Equation(s):
-- \t1|clk_240~regout\ = DFFEAS(((\t1|clk_240~regout\ $ (\t1|LessThan0~8_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \t1|clk_240~regout\,
	datad => \t1|LessThan0~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|clk_240~regout\);

-- Location: LC_X16_Y7_N1
\t1|toneOut\ : maxv_lcell
-- Equation(s):
-- \t1|toneOut~regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \t1|clk_240~regout\, , , VCC)

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
	datac => \t1|clk_240~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \t1|toneOut~regout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tuneSel~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tuneSel);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\to~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \t1|toneOut~regout\,
	oe => VCC,
	padio => \ww_to\);
END structure;


