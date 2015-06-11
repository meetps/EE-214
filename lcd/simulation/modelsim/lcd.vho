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

-- DATE "03/14/2015 02:31:41"

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

ENTITY 	key_lcd IS
    PORT (
	lcd : OUT std_logic_vector(7 DOWNTO 0);
	led : OUT std_logic_vector(4 DOWNTO 0);
	col : OUT std_logic_vector(3 DOWNTO 0);
	lcd_rs : OUT std_logic;
	lcd_rw : OUT std_logic;
	lcd_en : OUT std_logic;
	row : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic
	);
END key_lcd;

-- Design Ports Information
-- lcd[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[1]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[2]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[4]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[5]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[6]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[7]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[0]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[1]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[3]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[4]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[0]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[1]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[2]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[3]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rs	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rw	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_en	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rst	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[0]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[1]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[2]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[3]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF key_lcd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \count[1]~7\ : std_logic;
SIGNAL \count[1]~7COUT1_53\ : std_logic;
SIGNAL \count[2]~9\ : std_logic;
SIGNAL \count[2]~9COUT1_55\ : std_logic;
SIGNAL \count[3]~11\ : std_logic;
SIGNAL \count[3]~11COUT1_57\ : std_logic;
SIGNAL \count[4]~13\ : std_logic;
SIGNAL \count[5]~15\ : std_logic;
SIGNAL \count[5]~15COUT1_59\ : std_logic;
SIGNAL \count[6]~17\ : std_logic;
SIGNAL \count[6]~17COUT1_61\ : std_logic;
SIGNAL \count[7]~19\ : std_logic;
SIGNAL \count[7]~19COUT1_63\ : std_logic;
SIGNAL \count[8]~21\ : std_logic;
SIGNAL \count[8]~21COUT1_65\ : std_logic;
SIGNAL \count[9]~23\ : std_logic;
SIGNAL \count[10]~25\ : std_logic;
SIGNAL \count[10]~25COUT1_67\ : std_logic;
SIGNAL \count[11]~27\ : std_logic;
SIGNAL \count[11]~27COUT1_69\ : std_logic;
SIGNAL \count[12]~29\ : std_logic;
SIGNAL \count[12]~29COUT1_71\ : std_logic;
SIGNAL \count[13]~31\ : std_logic;
SIGNAL \count[13]~31COUT1_73\ : std_logic;
SIGNAL \count[14]~33\ : std_logic;
SIGNAL \count[15]~35\ : std_logic;
SIGNAL \count[15]~35COUT1_75\ : std_logic;
SIGNAL \count[16]~1\ : std_logic;
SIGNAL \count[16]~1COUT1_77\ : std_logic;
SIGNAL \count[17]~3\ : std_logic;
SIGNAL \count[17]~3COUT1_79\ : std_logic;
SIGNAL \WideAnd0~2_combout\ : std_logic;
SIGNAL \WideAnd0~3_combout\ : std_logic;
SIGNAL \WideAnd0~1_combout\ : std_logic;
SIGNAL \WideAnd0~0_combout\ : std_logic;
SIGNAL \WideAnd0~4_combout\ : std_logic;
SIGNAL \WideAnd0~combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \state_debounce~6_combout\ : std_logic;
SIGNAL \temp[0]~1\ : std_logic;
SIGNAL \temp[0]~0\ : std_logic;
SIGNAL \state_debounce.D1~regout\ : std_logic;
SIGNAL \state_debounce.D0~regout\ : std_logic;
SIGNAL \col[0]~0_combout\ : std_logic;
SIGNAL \col[2]~reg0_regout\ : std_logic;
SIGNAL \col[1]~reg0_regout\ : std_logic;
SIGNAL \col[0]~reg0_regout\ : std_logic;
SIGNAL \col[3]~reg0_regout\ : std_logic;
SIGNAL \temp[0]~2\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \WideOr9~1\ : std_logic;
SIGNAL \WideOr7~0\ : std_logic;
SIGNAL \WideOr9~2_combout\ : std_logic;
SIGNAL \WideOr9~4_combout\ : std_logic;
SIGNAL \WideOr9~3\ : std_logic;
SIGNAL \WideOr9~5_combout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \WideOr8~2_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~4\ : std_logic;
SIGNAL \WideOr8~5_combout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr7~6_combout\ : std_logic;
SIGNAL \WideOr7~2\ : std_logic;
SIGNAL \WideOr7~3\ : std_logic;
SIGNAL \WideOr7~4_combout\ : std_logic;
SIGNAL \WideOr7~5_combout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr6~6_combout\ : std_logic;
SIGNAL \WideOr6~7\ : std_logic;
SIGNAL \WideOr6~11_combout\ : std_logic;
SIGNAL \WideOr6~10_combout\ : std_logic;
SIGNAL \WideOr6~8_combout\ : std_logic;
SIGNAL \WideOr6~9_combout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;
SIGNAL temp_row : std_logic_vector(3 DOWNTO 0);
SIGNAL temp : std_logic_vector(7 DOWNTO 0);
SIGNAL \row~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL count : std_logic_vector(18 DOWNTO 0);
SIGNAL \ALT_INV_col[3]~reg0_regout\ : std_logic;

BEGIN

lcd <= ww_lcd;
led <= ww_led;
col <= ww_col;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
ww_row <= row;
ww_clk <= clk;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_col[3]~reg0_regout\ <= NOT \col[3]~reg0_regout\;

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X12_Y5_N4
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((((!count(0)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => count(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X13_Y5_N1
\count[1]\ : maxv_lcell
-- Equation(s):
-- count(1) = DFFEAS(count(0) $ ((count(1))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[1]~7\ = CARRY((count(0) & (count(1))))
-- \count[1]~7COUT1_53\ = CARRY((count(0) & (count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(0),
	datab => count(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1),
	cout0 => \count[1]~7\,
	cout1 => \count[1]~7COUT1_53\);

-- Location: LC_X13_Y5_N2
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS((count(2) $ ((\count[1]~7\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[2]~9\ = CARRY(((!\count[1]~7\) # (!count(2))))
-- \count[2]~9COUT1_55\ = CARRY(((!\count[1]~7COUT1_53\) # (!count(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(2),
	aclr => GND,
	cin0 => \count[1]~7\,
	cin1 => \count[1]~7COUT1_53\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2),
	cout0 => \count[2]~9\,
	cout1 => \count[2]~9COUT1_55\);

-- Location: LC_X13_Y5_N3
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS(count(3) $ ((((!\count[2]~9\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[3]~11\ = CARRY((count(3) & ((!\count[2]~9\))))
-- \count[3]~11COUT1_57\ = CARRY((count(3) & ((!\count[2]~9COUT1_55\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(3),
	aclr => GND,
	cin0 => \count[2]~9\,
	cin1 => \count[2]~9COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3),
	cout0 => \count[3]~11\,
	cout1 => \count[3]~11COUT1_57\);

-- Location: LC_X13_Y5_N4
\count[4]\ : maxv_lcell
-- Equation(s):
-- count(4) = DFFEAS(count(4) $ ((((\count[3]~11\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[4]~13\ = CARRY(((!\count[3]~11COUT1_57\)) # (!count(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(4),
	aclr => GND,
	cin0 => \count[3]~11\,
	cin1 => \count[3]~11COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4),
	cout => \count[4]~13\);

-- Location: LC_X13_Y5_N5
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS(count(5) $ ((((!\count[4]~13\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[5]~15\ = CARRY((count(5) & ((!\count[4]~13\))))
-- \count[5]~15COUT1_59\ = CARRY((count(5) & ((!\count[4]~13\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(5),
	aclr => GND,
	cin => \count[4]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5),
	cout0 => \count[5]~15\,
	cout1 => \count[5]~15COUT1_59\);

-- Location: LC_X13_Y5_N6
\count[6]\ : maxv_lcell
-- Equation(s):
-- count(6) = DFFEAS(count(6) $ (((((!\count[4]~13\ & \count[5]~15\) # (\count[4]~13\ & \count[5]~15COUT1_59\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[6]~17\ = CARRY(((!\count[5]~15\)) # (!count(6)))
-- \count[6]~17COUT1_61\ = CARRY(((!\count[5]~15COUT1_59\)) # (!count(6)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(6),
	aclr => GND,
	cin => \count[4]~13\,
	cin0 => \count[5]~15\,
	cin1 => \count[5]~15COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6),
	cout0 => \count[6]~17\,
	cout1 => \count[6]~17COUT1_61\);

-- Location: LC_X13_Y5_N7
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS((count(7) $ ((!(!\count[4]~13\ & \count[6]~17\) # (\count[4]~13\ & \count[6]~17COUT1_61\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[7]~19\ = CARRY(((count(7) & !\count[6]~17\)))
-- \count[7]~19COUT1_63\ = CARRY(((count(7) & !\count[6]~17COUT1_61\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(7),
	aclr => GND,
	cin => \count[4]~13\,
	cin0 => \count[6]~17\,
	cin1 => \count[6]~17COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7),
	cout0 => \count[7]~19\,
	cout1 => \count[7]~19COUT1_63\);

-- Location: LC_X13_Y5_N8
\count[8]\ : maxv_lcell
-- Equation(s):
-- count(8) = DFFEAS(count(8) $ (((((!\count[4]~13\ & \count[7]~19\) # (\count[4]~13\ & \count[7]~19COUT1_63\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[8]~21\ = CARRY(((!\count[7]~19\)) # (!count(8)))
-- \count[8]~21COUT1_65\ = CARRY(((!\count[7]~19COUT1_63\)) # (!count(8)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(8),
	aclr => GND,
	cin => \count[4]~13\,
	cin0 => \count[7]~19\,
	cin1 => \count[7]~19COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8),
	cout0 => \count[8]~21\,
	cout1 => \count[8]~21COUT1_65\);

-- Location: LC_X13_Y5_N9
\count[9]\ : maxv_lcell
-- Equation(s):
-- count(9) = DFFEAS((count(9) $ ((!(!\count[4]~13\ & \count[8]~21\) # (\count[4]~13\ & \count[8]~21COUT1_65\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[9]~23\ = CARRY(((count(9) & !\count[8]~21COUT1_65\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(9),
	aclr => GND,
	cin => \count[4]~13\,
	cin0 => \count[8]~21\,
	cin1 => \count[8]~21COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9),
	cout => \count[9]~23\);

-- Location: LC_X14_Y5_N0
\count[10]\ : maxv_lcell
-- Equation(s):
-- count(10) = DFFEAS((count(10) $ ((\count[9]~23\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[10]~25\ = CARRY(((!\count[9]~23\) # (!count(10))))
-- \count[10]~25COUT1_67\ = CARRY(((!\count[9]~23\) # (!count(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(10),
	aclr => GND,
	cin => \count[9]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10),
	cout0 => \count[10]~25\,
	cout1 => \count[10]~25COUT1_67\);

-- Location: LC_X14_Y5_N1
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS((count(11) $ ((!(!\count[9]~23\ & \count[10]~25\) # (\count[9]~23\ & \count[10]~25COUT1_67\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[11]~27\ = CARRY(((count(11) & !\count[10]~25\)))
-- \count[11]~27COUT1_69\ = CARRY(((count(11) & !\count[10]~25COUT1_67\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(11),
	aclr => GND,
	cin => \count[9]~23\,
	cin0 => \count[10]~25\,
	cin1 => \count[10]~25COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11),
	cout0 => \count[11]~27\,
	cout1 => \count[11]~27COUT1_69\);

-- Location: LC_X14_Y5_N2
\count[12]\ : maxv_lcell
-- Equation(s):
-- count(12) = DFFEAS((count(12) $ (((!\count[9]~23\ & \count[11]~27\) # (\count[9]~23\ & \count[11]~27COUT1_69\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[12]~29\ = CARRY(((!\count[11]~27\) # (!count(12))))
-- \count[12]~29COUT1_71\ = CARRY(((!\count[11]~27COUT1_69\) # (!count(12))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(12),
	aclr => GND,
	cin => \count[9]~23\,
	cin0 => \count[11]~27\,
	cin1 => \count[11]~27COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12),
	cout0 => \count[12]~29\,
	cout1 => \count[12]~29COUT1_71\);

-- Location: LC_X14_Y5_N3
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS(count(13) $ ((((!(!\count[9]~23\ & \count[12]~29\) # (\count[9]~23\ & \count[12]~29COUT1_71\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[13]~31\ = CARRY((count(13) & ((!\count[12]~29\))))
-- \count[13]~31COUT1_73\ = CARRY((count(13) & ((!\count[12]~29COUT1_71\))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(13),
	aclr => GND,
	cin => \count[9]~23\,
	cin0 => \count[12]~29\,
	cin1 => \count[12]~29COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13),
	cout0 => \count[13]~31\,
	cout1 => \count[13]~31COUT1_73\);

-- Location: LC_X14_Y5_N4
\count[14]\ : maxv_lcell
-- Equation(s):
-- count(14) = DFFEAS((count(14) $ (((!\count[9]~23\ & \count[13]~31\) # (\count[9]~23\ & \count[13]~31COUT1_73\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[14]~33\ = CARRY(((!\count[13]~31COUT1_73\) # (!count(14))))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(14),
	aclr => GND,
	cin => \count[9]~23\,
	cin0 => \count[13]~31\,
	cin1 => \count[13]~31COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14),
	cout => \count[14]~33\);

-- Location: LC_X14_Y5_N5
\count[15]\ : maxv_lcell
-- Equation(s):
-- count(15) = DFFEAS(count(15) $ ((((!\count[14]~33\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[15]~35\ = CARRY((count(15) & ((!\count[14]~33\))))
-- \count[15]~35COUT1_75\ = CARRY((count(15) & ((!\count[14]~33\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(15),
	aclr => GND,
	cin => \count[14]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15),
	cout0 => \count[15]~35\,
	cout1 => \count[15]~35COUT1_75\);

-- Location: LC_X14_Y5_N6
\count[16]\ : maxv_lcell
-- Equation(s):
-- count(16) = DFFEAS(count(16) $ (((((!\count[14]~33\ & \count[15]~35\) # (\count[14]~33\ & \count[15]~35COUT1_75\))))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[16]~1\ = CARRY(((!\count[15]~35\)) # (!count(16)))
-- \count[16]~1COUT1_77\ = CARRY(((!\count[15]~35COUT1_75\)) # (!count(16)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(16),
	aclr => GND,
	cin => \count[14]~33\,
	cin0 => \count[15]~35\,
	cin1 => \count[15]~35COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16),
	cout0 => \count[16]~1\,
	cout1 => \count[16]~1COUT1_77\);

-- Location: LC_X14_Y5_N7
\count[17]\ : maxv_lcell
-- Equation(s):
-- count(17) = DFFEAS((count(17) $ ((!(!\count[14]~33\ & \count[16]~1\) # (\count[14]~33\ & \count[16]~1COUT1_77\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \count[17]~3\ = CARRY(((count(17) & !\count[16]~1\)))
-- \count[17]~3COUT1_79\ = CARRY(((count(17) & !\count[16]~1COUT1_77\)))

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
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => count(17),
	aclr => GND,
	cin => \count[14]~33\,
	cin0 => \count[16]~1\,
	cin1 => \count[16]~1COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17),
	cout0 => \count[17]~3\,
	cout1 => \count[17]~3COUT1_79\);

-- Location: LC_X14_Y5_N8
\count[18]\ : maxv_lcell
-- Equation(s):
-- count(18) = DFFEAS((((!\count[14]~33\ & \count[17]~3\) # (\count[14]~33\ & \count[17]~3COUT1_79\) $ (count(18)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => count(18),
	aclr => GND,
	cin => \count[14]~33\,
	cin0 => \count[17]~3\,
	cin1 => \count[17]~3COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X13_Y5_N0
\WideAnd0~2\ : maxv_lcell
-- Equation(s):
-- \WideAnd0~2_combout\ = (count(11) & (count(9) & (count(10) & count(8))))

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
	dataa => count(11),
	datab => count(9),
	datac => count(10),
	datad => count(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideAnd0~2_combout\);

-- Location: LC_X14_Y5_N9
\WideAnd0~3\ : maxv_lcell
-- Equation(s):
-- \WideAnd0~3_combout\ = (count(14) & (count(12) & (count(15) & count(13))))

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
	dataa => count(14),
	datab => count(12),
	datac => count(15),
	datad => count(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideAnd0~3_combout\);

-- Location: LC_X12_Y5_N5
\WideAnd0~1\ : maxv_lcell
-- Equation(s):
-- \WideAnd0~1_combout\ = (count(7) & (count(4) & (count(6) & count(5))))

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
	dataa => count(7),
	datab => count(4),
	datac => count(6),
	datad => count(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideAnd0~1_combout\);

-- Location: LC_X12_Y5_N6
\WideAnd0~0\ : maxv_lcell
-- Equation(s):
-- \WideAnd0~0_combout\ = (count(3) & (count(2) & (count(0) & count(1))))

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
	dataa => count(3),
	datab => count(2),
	datac => count(0),
	datad => count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideAnd0~0_combout\);

-- Location: LC_X12_Y5_N7
\WideAnd0~4\ : maxv_lcell
-- Equation(s):
-- \WideAnd0~4_combout\ = (\WideAnd0~2_combout\ & (\WideAnd0~3_combout\ & (\WideAnd0~1_combout\ & \WideAnd0~0_combout\)))

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
	dataa => \WideAnd0~2_combout\,
	datab => \WideAnd0~3_combout\,
	datac => \WideAnd0~1_combout\,
	datad => \WideAnd0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideAnd0~4_combout\);

-- Location: LC_X12_Y3_N2
WideAnd0 : maxv_lcell
-- Equation(s):
-- \WideAnd0~combout\ = LCELL((count(18) & (count(17) & (count(16) & \WideAnd0~4_combout\))))

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
	dataa => count(18),
	datab => count(17),
	datac => count(16),
	datad => \WideAnd0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideAnd0~combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(2),
	combout => \row~combout\(2));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(0),
	combout => \row~combout\(0));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(3),
	combout => \row~combout\(3));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(1),
	combout => \row~combout\(1));

-- Location: LC_X9_Y9_N6
\Equal1~0\ : maxv_lcell
-- Equation(s):
-- \Equal1~0_combout\ = (\row~combout\(2)) # ((\row~combout\(0)) # ((\row~combout\(3)) # (\row~combout\(1))))

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
	dataa => \row~combout\(2),
	datab => \row~combout\(0),
	datac => \row~combout\(3),
	datad => \row~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0_combout\);

-- Location: LC_X10_Y9_N2
\state_debounce~6\ : maxv_lcell
-- Equation(s):
-- \state_debounce~6_combout\ = (((\Equal1~0_combout\ & !\state_debounce.D0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	datad => \state_debounce.D0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state_debounce~6_combout\);

-- Location: LC_X9_Y9_N8
\temp_row[2]\ : maxv_lcell
-- Equation(s):
-- temp_row(2) = DFFEAS(GND, GLOBAL(\WideAnd0~combout\), VCC, , \state_debounce~6_combout\, \row~combout\(2), , , VCC)

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
	clk => \WideAnd0~combout\,
	datac => \row~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \state_debounce~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_row(2));

-- Location: LC_X9_Y9_N0
\temp_row[3]\ : maxv_lcell
-- Equation(s):
-- \temp[0]~1\ = (\row~combout\(2) & (temp_row(2) & (\row~combout\(3) $ (!temp_row[3])))) # (!\row~combout\(2) & (!temp_row(2) & (\row~combout\(3) $ (!temp_row[3]))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => \row~combout\(2),
	datab => \row~combout\(3),
	datac => \row~combout\(3),
	datad => temp_row(2),
	aclr => GND,
	sload => VCC,
	ena => \state_debounce~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp[0]~1\,
	regout => temp_row(3));

-- Location: LC_X9_Y9_N2
\temp_row[0]\ : maxv_lcell
-- Equation(s):
-- temp_row(0) = DFFEAS((((\row~combout\(0)))), GLOBAL(\WideAnd0~combout\), VCC, , \state_debounce~6_combout\, , , , )

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
	clk => \WideAnd0~combout\,
	datad => \row~combout\(0),
	aclr => GND,
	ena => \state_debounce~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_row(0));

-- Location: LC_X9_Y9_N3
\temp_row[1]\ : maxv_lcell
-- Equation(s):
-- \temp[0]~0\ = (\row~combout\(1) & (temp_row[1] & (\row~combout\(0) $ (!temp_row(0))))) # (!\row~combout\(1) & (!temp_row[1] & (\row~combout\(0) $ (!temp_row(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => \row~combout\(1),
	datab => \row~combout\(0),
	datac => \row~combout\(1),
	datad => temp_row(0),
	aclr => GND,
	sload => VCC,
	ena => \state_debounce~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp[0]~0\,
	regout => temp_row(1));

-- Location: LC_X9_Y9_N1
\state_debounce.D1\ : maxv_lcell
-- Equation(s):
-- \temp[0]~2\ = ((\temp[0]~1\ & (state_debounce.D1 & \temp[0]~0\)))
-- \state_debounce.D1~regout\ = DFFEAS(\temp[0]~2\, GLOBAL(\WideAnd0~combout\), VCC, , , \state_debounce~6_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	datab => \temp[0]~1\,
	datac => \state_debounce~6_combout\,
	datad => \temp[0]~0\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp[0]~2\,
	regout => \state_debounce.D1~regout\);

-- Location: LC_X10_Y9_N9
\state_debounce.D0\ : maxv_lcell
-- Equation(s):
-- \state_debounce.D0~regout\ = DFFEAS((\state_debounce.D1~regout\ & (((\temp[0]~0\ & \temp[0]~1\)))) # (!\state_debounce.D1~regout\ & (\Equal1~0_combout\)), GLOBAL(\WideAnd0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => \Equal1~0_combout\,
	datab => \state_debounce.D1~regout\,
	datac => \temp[0]~0\,
	datad => \temp[0]~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_debounce.D0~regout\);

-- Location: LC_X10_Y9_N6
\col[0]~0\ : maxv_lcell
-- Equation(s):
-- \col[0]~0_combout\ = (((!\Equal1~0_combout\ & !\state_debounce.D0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	datad => \state_debounce.D0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col[0]~0_combout\);

-- Location: LC_X10_Y9_N8
\col[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[2]~reg0_regout\ = DFFEAS((((!\col[3]~reg0_regout\))), GLOBAL(\WideAnd0~combout\), VCC, , \col[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	datac => \col[3]~reg0_regout\,
	aclr => GND,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[2]~reg0_regout\);

-- Location: LC_X10_Y9_N4
\col[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[1]~reg0_regout\ = DFFEAS((((\col[2]~reg0_regout\))), GLOBAL(\WideAnd0~combout\), VCC, , \col[0]~0_combout\, , , , )

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
	clk => \WideAnd0~combout\,
	datad => \col[2]~reg0_regout\,
	aclr => GND,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[1]~reg0_regout\);

-- Location: LC_X10_Y9_N5
\col[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\WideAnd0~combout\), VCC, , \col[0]~0_combout\, \col[1]~reg0_regout\, , , VCC)

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
	clk => \WideAnd0~combout\,
	datac => \col[1]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[0]~reg0_regout\);

-- Location: LC_X10_Y9_N7
\col[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[3]~reg0_regout\ = DFFEAS((\col[1]~reg0_regout\) # (((\col[2]~reg0_regout\) # (!\col[0]~reg0_regout\)) # (!\col[3]~reg0_regout\)), GLOBAL(\WideAnd0~combout\), VCC, , \col[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => \col[1]~reg0_regout\,
	datab => \col[3]~reg0_regout\,
	datac => \col[0]~reg0_regout\,
	datad => \col[2]~reg0_regout\,
	aclr => GND,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[3]~reg0_regout\);

-- Location: LC_X8_Y9_N5
\temp[3]\ : maxv_lcell
-- Equation(s):
-- temp(3) = DFFEAS((((!\col[3]~reg0_regout\))), GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	datad => \col[3]~reg0_regout\,
	aclr => GND,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(3));

-- Location: LC_X8_Y9_N3
\temp[5]\ : maxv_lcell
-- Equation(s):
-- \WideOr7~0\ = (!temp(3) & (((!temp[5]))))
-- temp(5) = DFFEAS(\WideOr7~0\, GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, \row~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(3),
	datac => \row~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~0\,
	regout => temp(5));

-- Location: LC_X8_Y9_N9
\temp[7]\ : maxv_lcell
-- Equation(s):
-- \WideOr8~4\ = (temp[7] & (!temp(3) & (!temp(4) & !temp(5)))) # (!temp[7] & ((temp(4) $ (temp(5)))))
-- temp(7) = DFFEAS(\WideOr8~4\, GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, \row~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "031c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(3),
	datab => temp(4),
	datac => \row~combout\(3),
	datad => temp(5),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~4\,
	regout => temp(7));

-- Location: LC_X8_Y9_N1
\temp[6]\ : maxv_lcell
-- Equation(s):
-- \WideOr7~2\ = (temp(7) & (!temp[6] & ((!temp(2)) # (!temp(0))))) # (!temp(7) & (((temp[6] & !temp(2)))))
-- temp(6) = DFFEAS(\WideOr7~2\, GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, \row~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "043c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(0),
	datab => temp(7),
	datac => \row~combout\(2),
	datad => temp(2),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~2\,
	regout => temp(6));

-- Location: LC_X8_Y9_N4
\temp[0]\ : maxv_lcell
-- Equation(s):
-- \WideOr7~3\ = (temp(2) & (((!temp[0] & !temp(6))))) # (!temp(2) & (temp[0] & ((!temp(6)) # (!temp(7)))))
-- temp(0) = DFFEAS(\WideOr7~3\, GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, \col[0]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "105a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(2),
	datab => temp(7),
	datac => \col[0]~reg0_regout\,
	datad => temp(6),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~3\,
	regout => temp(0));

-- Location: LC_X8_Y9_N2
\temp[2]\ : maxv_lcell
-- Equation(s):
-- \WideOr9~3\ = (temp(6) & (!temp(4) & (temp(0) $ (temp[2])))) # (!temp(6) & (temp(0) & ((!temp[2]))))
-- temp(2) = DFFEAS(\WideOr9~3\, GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, \col[2]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "120a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(0),
	datab => temp(4),
	datac => \col[2]~reg0_regout\,
	datad => temp(6),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~3\,
	regout => temp(2));

-- Location: LC_X8_Y9_N7
\temp[4]\ : maxv_lcell
-- Equation(s):
-- \WideOr6~7\ = (temp[4] & ((temp(3) $ (!temp(2))) # (!temp(5)))) # (!temp[4] & ((temp(5)) # ((temp(3) & temp(2)))))
-- temp(4) = DFFEAS(\WideOr6~7\, GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, \row~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ff8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(3),
	datab => temp(2),
	datac => \row~combout\(0),
	datad => temp(5),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~7\,
	regout => temp(4));

-- Location: LC_X8_Y9_N6
\temp[1]\ : maxv_lcell
-- Equation(s):
-- \WideOr9~1\ = (temp(4) & (((temp[1])))) # (!temp(4) & (temp(5) & (temp(3) $ (temp[1]))))
-- temp(1) = DFFEAS(\WideOr9~1\, GLOBAL(\WideAnd0~combout\), VCC, , \temp[0]~2\, \col[1]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(3),
	datab => temp(4),
	datac => \col[1]~reg0_regout\,
	datad => temp(5),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~1\,
	regout => temp(1));

-- Location: LC_X8_Y9_N0
\WideOr9~0\ : maxv_lcell
-- Equation(s):
-- \WideOr9~0_combout\ = (((!temp(1) & !temp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => temp(1),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~0_combout\);

-- Location: LC_X8_Y9_N8
\WideOr7~1\ : maxv_lcell
-- Equation(s):
-- \WideOr7~1_combout\ = ((!temp(7) & (!temp(0) & !temp(6))))

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
	datab => temp(7),
	datac => temp(0),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~1_combout\);

-- Location: LC_X9_Y9_N7
\WideOr9~2\ : maxv_lcell
-- Equation(s):
-- \WideOr9~2_combout\ = (temp(2) & (temp(4) & (!\WideOr9~1\ & \WideOr7~0\))) # (!temp(2) & (!temp(4) & (\WideOr9~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1810",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(4),
	datac => \WideOr9~1\,
	datad => \WideOr7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~2_combout\);

-- Location: LC_X9_Y9_N4
\WideOr9~4\ : maxv_lcell
-- Equation(s):
-- \WideOr9~4_combout\ = ((temp(4)) # ((temp(2)) # (temp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datac => temp(2),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~4_combout\);

-- Location: LC_X9_Y9_N9
\WideOr9~5\ : maxv_lcell
-- Equation(s):
-- \WideOr9~5_combout\ = (temp(7) & (!\WideOr9~4_combout\ & (temp(3) $ (\WideOr9~3\)))) # (!temp(7) & (!temp(3) & (\WideOr9~4_combout\ & \WideOr9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(3),
	datac => \WideOr9~4_combout\,
	datad => \WideOr9~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~5_combout\);

-- Location: LC_X9_Y9_N5
\led[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[0]~reg0_regout\ = DFFEAS((\WideOr9~0_combout\ & ((\WideOr9~5_combout\) # ((\WideOr7~1_combout\ & \WideOr9~2_combout\)))) # (!\WideOr9~0_combout\ & (\WideOr7~1_combout\ & (\WideOr9~2_combout\))), GLOBAL(\WideAnd0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => \WideOr9~0_combout\,
	datab => \WideOr7~1_combout\,
	datac => \WideOr9~2_combout\,
	datad => \WideOr9~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LC_X7_Y10_N6
\WideOr8~1\ : maxv_lcell
-- Equation(s):
-- \WideOr8~1_combout\ = (temp(0) & (!temp(1) & (temp(6) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(6),
	datac => temp(1),
	datad => temp(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~1_combout\);

-- Location: LC_X7_Y10_N7
\WideOr8~2\ : maxv_lcell
-- Equation(s):
-- \WideOr8~2_combout\ = (temp(4) & (temp(1) & ((\WideOr7~1_combout\)))) # (!temp(4) & (((\WideOr8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d850",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(1),
	datac => \WideOr8~1_combout\,
	datad => \WideOr7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~2_combout\);

-- Location: LC_X7_Y10_N0
\WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \WideOr8~0_combout\ = ((!temp(6) & (!temp(0) & !temp(1))))

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
	datab => temp(6),
	datac => temp(0),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~0_combout\);

-- Location: LC_X7_Y10_N4
\WideOr8~5\ : maxv_lcell
-- Equation(s):
-- \WideOr8~5_combout\ = (\WideOr8~0_combout\ & (\WideOr8~4\ & (temp(3) $ (temp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(2),
	datac => \WideOr8~0_combout\,
	datad => \WideOr8~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~5_combout\);

-- Location: LC_X7_Y10_N5
\led[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[1]~reg0_regout\ = DFFEAS((\WideOr8~5_combout\) # ((!temp(2) & (\WideOr7~0\ & \WideOr8~2_combout\))), GLOBAL(\WideAnd0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(2),
	datab => \WideOr7~0\,
	datac => \WideOr8~2_combout\,
	datad => \WideOr8~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LC_X7_Y9_N5
\WideOr7~6\ : maxv_lcell
-- Equation(s):
-- \WideOr7~6_combout\ = (temp(5) & (!temp(2) & (!temp(3) & \WideOr7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => temp(2),
	datac => temp(3),
	datad => \WideOr7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~6_combout\);

-- Location: LC_X7_Y9_N0
\WideOr7~4\ : maxv_lcell
-- Equation(s):
-- \WideOr7~4_combout\ = (temp(5) & (((!temp(3) & \WideOr7~3\)))) # (!temp(5) & (((temp(3) & !\WideOr7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datac => temp(3),
	datad => \WideOr7~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~4_combout\);

-- Location: LC_X7_Y9_N1
\WideOr7~5\ : maxv_lcell
-- Equation(s):
-- \WideOr7~5_combout\ = (\WideOr7~2\ & ((\WideOr7~3\ & (\WideOr7~0\)) # (!\WideOr7~3\ & ((\WideOr7~4_combout\))))) # (!\WideOr7~2\ & (((\WideOr7~3\ & \WideOr7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~2\,
	datab => \WideOr7~0\,
	datac => \WideOr7~3\,
	datad => \WideOr7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~5_combout\);

-- Location: LC_X7_Y9_N2
\led[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[2]~reg0_regout\ = DFFEAS(((temp(1) & (\WideOr7~6_combout\)) # (!temp(1) & ((\WideOr7~5_combout\)))), GLOBAL(\WideAnd0~combout\), VCC, , , , , temp(4), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	datab => temp(1),
	datac => \WideOr7~6_combout\,
	datad => \WideOr7~5_combout\,
	aclr => GND,
	sclr => temp(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LC_X7_Y9_N9
\WideOr6~6\ : maxv_lcell
-- Equation(s):
-- \WideOr6~6_combout\ = (temp(3) & (((!temp(2))))) # (!temp(3) & (temp(2) & (temp(5) $ (!temp(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2c1c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => temp(3),
	datac => temp(2),
	datad => temp(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~6_combout\);

-- Location: LC_X7_Y9_N6
\WideOr6~11\ : maxv_lcell
-- Equation(s):
-- \WideOr6~11_combout\ = (!temp(6) & ((temp(7) & ((!\WideOr6~7\))) # (!temp(7) & (!temp(0) & \WideOr6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0150",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => temp(0),
	datac => temp(7),
	datad => \WideOr6~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~11_combout\);

-- Location: LC_X7_Y9_N3
\WideOr6~10\ : maxv_lcell
-- Equation(s):
-- \WideOr6~10_combout\ = (!temp(7) & ((temp(6) & ((!\WideOr6~7\))) # (!temp(6) & (!temp(0) & \WideOr6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "010a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => temp(0),
	datac => temp(7),
	datad => \WideOr6~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~10_combout\);

-- Location: LC_X7_Y9_N4
\WideOr6~8\ : maxv_lcell
-- Equation(s):
-- \WideOr6~8_combout\ = (temp(0) & (\WideOr6~11_combout\ & (\WideOr6~6_combout\ $ (!\WideOr6~10_combout\)))) # (!temp(0) & (\WideOr6~10_combout\ & (\WideOr6~6_combout\ $ (!\WideOr6~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \WideOr6~6_combout\,
	datac => \WideOr6~11_combout\,
	datad => \WideOr6~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~8_combout\);

-- Location: LC_X7_Y9_N7
\WideOr6~9\ : maxv_lcell
-- Equation(s):
-- \WideOr6~9_combout\ = (\WideOr6~10_combout\ & (\WideOr6~6_combout\ & ((\WideOr6~11_combout\) # (!temp(0))))) # (!\WideOr6~10_combout\ & (\WideOr6~11_combout\ & (\WideOr6~6_combout\ $ (temp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr6~10_combout\,
	datab => \WideOr6~6_combout\,
	datac => temp(0),
	datad => \WideOr6~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~9_combout\);

-- Location: LC_X7_Y9_N8
\led[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[3]~reg0_regout\ = DFFEAS((temp(1) & (((\WideOr6~8_combout\ & !\WideOr6~9_combout\)))) # (!temp(1) & (\WideOr6~9_combout\ & ((\WideOr6~8_combout\) # (!temp(5))))), GLOBAL(\WideAnd0~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "51a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \WideAnd0~combout\,
	dataa => temp(1),
	datab => temp(5),
	datac => \WideOr6~8_combout\,
	datad => \WideOr6~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_lcd(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_lcd(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_lcd(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd(7));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[0]~reg0_regout\,
	oe => VCC,
	padio => ww_led(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[1]~reg0_regout\,
	oe => VCC,
	padio => ww_led(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[2]~reg0_regout\,
	oe => VCC,
	padio => ww_led(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[3]~reg0_regout\,
	oe => VCC,
	padio => ww_led(3));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_led(4));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col[0]~reg0_regout\,
	oe => VCC,
	padio => ww_col(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col[1]~reg0_regout\,
	oe => VCC,
	padio => ww_col(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col[2]~reg0_regout\,
	oe => VCC,
	padio => ww_col(2));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_col[3]~reg0_regout\,
	oe => VCC,
	padio => ww_col(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd_rs);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rw~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd_rw);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_en~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_lcd_en);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst);
END structure;


