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

-- DATE "03/16/2015 21:07:04"

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

ENTITY 	lcd_final IS
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
END lcd_final;

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
-- col[0]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[1]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[2]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- col[3]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rs	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rw	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_en	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rst	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[0]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[1]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[2]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- row[3]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lcd_final IS
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
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_118\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_120\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_122\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_124\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_126\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_128\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_130\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_132\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_134\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_136\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_138\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_140\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_112\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_114\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_116\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~4\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \temp_clk~regout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \temp_row[3]~1_combout\ : std_logic;
SIGNAL \temp[0]~1\ : std_logic;
SIGNAL \temp[0]~0\ : std_logic;
SIGNAL \state_debounce.00~regout\ : std_logic;
SIGNAL \state_debounce.01~regout\ : std_logic;
SIGNAL \state.000~regout\ : std_logic;
SIGNAL \WideNor3~0_combout\ : std_logic;
SIGNAL \WideNor3~combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \state.001~regout\ : std_logic;
SIGNAL \WideNor4~combout\ : std_logic;
SIGNAL \state.010~regout\ : std_logic;
SIGNAL \WideNor5~0\ : std_logic;
SIGNAL \WideNor7~combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr14~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \state.011~regout\ : std_logic;
SIGNAL \WideNor6~combout\ : std_logic;
SIGNAL \state.100~regout\ : std_logic;
SIGNAL \WideNor8~combout\ : std_logic;
SIGNAL \state.101~regout\ : std_logic;
SIGNAL \WideNor5~combout\ : std_logic;
SIGNAL \col[0]~0_combout\ : std_logic;
SIGNAL \col[3]~reg0_regout\ : std_logic;
SIGNAL \col[2]~reg0_regout\ : std_logic;
SIGNAL \col[1]~reg0_regout\ : std_logic;
SIGNAL \col[0]~reg0_regout\ : std_logic;
SIGNAL \temp[0]~2_combout\ : std_logic;
SIGNAL \WideOr2~0\ : std_logic;
SIGNAL \WideOr5~4_combout\ : std_logic;
SIGNAL \WideOr10~5_combout\ : std_logic;
SIGNAL \WideOr8~7_combout\ : std_logic;
SIGNAL \WideOr5~2_combout\ : std_logic;
SIGNAL \WideOr5~6_combout\ : std_logic;
SIGNAL \WideOr5~3_combout\ : std_logic;
SIGNAL \WideOr5~5_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \lcd[0]~0_combout\ : std_logic;
SIGNAL \lcd[0]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \WideOr4~0\ : std_logic;
SIGNAL \WideOr10~1\ : std_logic;
SIGNAL \WideOr10~3\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \WideOr4~2_combout\ : std_logic;
SIGNAL \WideOr7~3_combout\ : std_logic;
SIGNAL \WideOr4~3\ : std_logic;
SIGNAL \WideOr4~4_combout\ : std_logic;
SIGNAL \WideOr4~5_combout\ : std_logic;
SIGNAL \WideOr4~6_combout\ : std_logic;
SIGNAL \lcd[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr3~3_combout\ : std_logic;
SIGNAL \WideOr3~2_combout\ : std_logic;
SIGNAL \WideOr3~5_combout\ : std_logic;
SIGNAL \lcd[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \lcd[3]~reg0_regout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr1~3_combout\ : std_logic;
SIGNAL \WideOr1~4_combout\ : std_logic;
SIGNAL \WideOr1~1\ : std_logic;
SIGNAL \WideOr1~0\ : std_logic;
SIGNAL \WideOr1~2_combout\ : std_logic;
SIGNAL \lcd[4]~reg0_regout\ : std_logic;
SIGNAL \WideOr8~8_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \lcd[5]~reg0_regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \lcd[6]~reg0_regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \lcd[7]~reg0_regout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr10~2_combout\ : std_logic;
SIGNAL \WideOr10~6_combout\ : std_logic;
SIGNAL \WideOr10~7_combout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr9~1_combout\ : std_logic;
SIGNAL \WideOr9~2_combout\ : std_logic;
SIGNAL \WideOr9~3_combout\ : std_logic;
SIGNAL \WideOr9~4_combout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \WideOr8~2_combout\ : std_logic;
SIGNAL \WideOr8~3_combout\ : std_logic;
SIGNAL \WideOr8~4_combout\ : std_logic;
SIGNAL \WideOr8~5_combout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr7~4_combout\ : std_logic;
SIGNAL \WideOr7~5_combout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \led[4]~reg0_regout\ : std_logic;
SIGNAL \lcd_rs~reg0_regout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \lcd_en~reg0_regout\ : std_logic;
SIGNAL temp_row : std_logic_vector(3 DOWNTO 0);
SIGNAL lcd_dat : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(18 DOWNTO 0);
SIGNAL temp : std_logic_vector(7 DOWNTO 0);
SIGNAL \row~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL count_cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
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
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\ALT_INV_col[3]~reg0_regout\ <= NOT \col[3]~reg0_regout\;

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

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X12_Y4_N5
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = \Add0~32\ $ ((((!count(4))) # (!\rst~combout\)))
-- \Add0~37\ = CARRY((\rst~combout\ & (count(4) & !\Add0~32\)))
-- \Add0~37COUT1_118\ = CARRY((\rst~combout\ & (count(4) & !\Add0~32\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(4),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_118\);

-- Location: LC_X11_Y4_N6
\count[4]\ : maxv_lcell
-- Equation(s):
-- count(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~35_combout\, , , VCC)

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
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X12_Y4_N6
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (!\Add0~32\ & \Add0~37\) # (\Add0~32\ & \Add0~37COUT1_118\) $ (((count(5) & (\rst~combout\))))
-- \Add0~42\ = CARRY(((!\Add0~37\) # (!\rst~combout\)) # (!count(5)))
-- \Add0~42COUT1_120\ = CARRY(((!\Add0~37COUT1_118\) # (!\rst~combout\)) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => \rst~combout\,
	cin => \Add0~32\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_120\);

-- Location: LC_X11_Y4_N1
\count[5]\ : maxv_lcell
-- Equation(s):
-- count(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~40_combout\, , , VCC)

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
	datac => \Add0~40_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X12_Y4_N7
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (!\Add0~32\ & \Add0~42\) # (\Add0~32\ & \Add0~42COUT1_120\) $ ((((!count(6))) # (!\rst~combout\)))
-- \Add0~57\ = CARRY((\rst~combout\ & (count(6) & !\Add0~42\)))
-- \Add0~57COUT1_122\ = CARRY((\rst~combout\ & (count(6) & !\Add0~42COUT1_120\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(6),
	cin => \Add0~32\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_122\);

-- Location: LC_X13_Y4_N0
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = \Add0~67\ $ (((\rst~combout\ & (count(9)))))
-- \Add0~72\ = CARRY(((!\Add0~67\) # (!count(9))) # (!\rst~combout\))
-- \Add0~72COUT1_126\ = CARRY(((!\Add0~67\) # (!count(9))) # (!\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(9),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_126\);

-- Location: LC_X14_Y4_N9
\count[9]\ : maxv_lcell
-- Equation(s):
-- count(9) = DFFEAS((((\Add0~70_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add0~70_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X12_Y3_N5
\count[6]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (!count(8) & (!count(7) & (!count[6] & !count(9))))
-- count(6) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(8),
	datab => count(7),
	datac => \Add0~55_combout\,
	datad => count(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(6));

-- Location: LC_X12_Y4_N8
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (!\Add0~32\ & \Add0~57\) # (\Add0~32\ & \Add0~57COUT1_122\) $ (((\rst~combout\ & (count(7)))))
-- \Add0~62\ = CARRY(((!\Add0~57\) # (!count(7))) # (!\rst~combout\))
-- \Add0~62COUT1_124\ = CARRY(((!\Add0~57COUT1_122\) # (!count(7))) # (!\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(7),
	cin => \Add0~32\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_124\);

-- Location: LC_X11_Y4_N9
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~60_combout\, , , VCC)

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
	datac => \Add0~60_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X12_Y4_N9
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (!\Add0~32\ & \Add0~62\) # (\Add0~32\ & \Add0~62COUT1_124\) $ ((((!count(8))) # (!\rst~combout\)))
-- \Add0~67\ = CARRY((\rst~combout\ & (count(8) & !\Add0~62COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(8),
	cin => \Add0~32\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X13_Y4_N1
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (!\Add0~67\ & \Add0~72\) # (\Add0~67\ & \Add0~72COUT1_126\) $ ((((!count(10))) # (!\rst~combout\)))
-- \Add0~77\ = CARRY((\rst~combout\ & (count(10) & !\Add0~72\)))
-- \Add0~77COUT1_128\ = CARRY((\rst~combout\ & (count(10) & !\Add0~72COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(10),
	cin => \Add0~67\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_128\);

-- Location: LC_X14_Y4_N4
\count[10]\ : maxv_lcell
-- Equation(s):
-- \Equal0~4\ = (!count(12) & (!count(13) & (!count[10] & !count(11))))
-- count(10) = DFFEAS(\Equal0~4\, GLOBAL(\clk~combout\), VCC, , , \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(12),
	datab => count(13),
	datac => \Add0~75_combout\,
	datad => count(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4\,
	regout => count(10));

-- Location: LC_X13_Y4_N2
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (!\Add0~67\ & \Add0~77\) # (\Add0~67\ & \Add0~77COUT1_128\) $ (((\rst~combout\ & (count(11)))))
-- \Add0~82\ = CARRY(((!\Add0~77\) # (!count(11))) # (!\rst~combout\))
-- \Add0~82COUT1_130\ = CARRY(((!\Add0~77COUT1_128\) # (!count(11))) # (!\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(11),
	cin => \Add0~67\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_130\);

-- Location: LC_X14_Y4_N8
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS((((\Add0~80_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add0~80_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X13_Y4_N3
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (!\Add0~67\ & \Add0~82\) # (\Add0~67\ & \Add0~82COUT1_130\) $ ((((!\rst~combout\)) # (!count(12))))
-- \Add0~87\ = CARRY((count(12) & (\rst~combout\ & !\Add0~82\)))
-- \Add0~87COUT1_132\ = CARRY((count(12) & (\rst~combout\ & !\Add0~82COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datab => \rst~combout\,
	cin => \Add0~67\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_132\);

-- Location: LC_X14_Y4_N6
\count[12]\ : maxv_lcell
-- Equation(s):
-- count(12) = DFFEAS((((\Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LC_X13_Y4_N4
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (!\Add0~67\ & \Add0~87\) # (\Add0~67\ & \Add0~87COUT1_132\) $ (((count(13) & (\rst~combout\))))
-- \Add0~92\ = CARRY(((!\Add0~87COUT1_132\) # (!\rst~combout\)) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => \rst~combout\,
	cin => \Add0~67\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout => \Add0~92\);

-- Location: LC_X14_Y4_N7
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~90_combout\, , , VCC)

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
	datac => \Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X13_Y4_N5
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \Add0~92\ $ ((((!count(14))) # (!\rst~combout\)))
-- \Add0~2\ = CARRY((\rst~combout\ & (count(14) & !\Add0~92\)))
-- \Add0~2COUT1_134\ = CARRY((\rst~combout\ & (count(14) & !\Add0~92\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(14),
	cin => \Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_134\);

-- Location: LC_X13_Y3_N4
\count[14]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (!count(15) & (!count(17) & (!count[14] & !count(16))))
-- count(14) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(15),
	datab => count(17),
	datac => \Add0~0_combout\,
	datad => count(16),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(14));

-- Location: LC_X13_Y4_N6
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (!\Add0~92\ & \Add0~2\) # (\Add0~92\ & \Add0~2COUT1_134\) $ (((\rst~combout\ & (count(15)))))
-- \Add0~7\ = CARRY(((!\Add0~2\) # (!count(15))) # (!\rst~combout\))
-- \Add0~7COUT1_136\ = CARRY(((!\Add0~2COUT1_134\) # (!count(15))) # (!\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(15),
	cin => \Add0~92\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_136\);

-- Location: LC_X13_Y3_N7
\count[15]\ : maxv_lcell
-- Equation(s):
-- count(15) = DFFEAS((((\Add0~5_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X13_Y4_N7
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (!\Add0~92\ & \Add0~7\) # (\Add0~92\ & \Add0~7COUT1_136\) $ ((((!count(16))) # (!\rst~combout\)))
-- \Add0~12\ = CARRY((\rst~combout\ & (count(16) & !\Add0~7\)))
-- \Add0~12COUT1_138\ = CARRY((\rst~combout\ & (count(16) & !\Add0~7COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(16),
	cin => \Add0~92\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_138\);

-- Location: LC_X13_Y3_N8
\count[16]\ : maxv_lcell
-- Equation(s):
-- count(16) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~10_combout\, , , VCC)

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
	datac => \Add0~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LC_X13_Y4_N8
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (!\Add0~92\ & \Add0~12\) # (\Add0~92\ & \Add0~12COUT1_138\) $ (((\rst~combout\ & (count(17)))))
-- \Add0~17\ = CARRY(((!\Add0~12\) # (!count(17))) # (!\rst~combout\))
-- \Add0~17COUT1_140\ = CARRY(((!\Add0~12COUT1_138\) # (!count(17))) # (!\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(17),
	cin => \Add0~92\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_140\);

-- Location: LC_X13_Y3_N5
\count[17]\ : maxv_lcell
-- Equation(s):
-- count(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~15_combout\, , , VCC)

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
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X13_Y4_N9
\count[18]\ : maxv_lcell
-- Equation(s):
-- count(18) = DFFEAS(((!\Add0~92\ & \Add0~17\) # (\Add0~92\ & \Add0~17COUT1_140\) $ (((\Equal0~5_combout\) # (!\count~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0fa5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \count~0_combout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	cin => \Add0~92\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X12_Y4_N0
\count~0\ : maxv_lcell
-- Equation(s):
-- \count~0_combout\ = (((count(18) & \rst~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count(18),
	datad => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~0_combout\);

-- Location: LC_X11_Y4_N2
\count[2]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(4) & (!count(3) & (!count[2] & !count(5))))
-- count(2) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(4),
	datab => count(3),
	datac => \Add0~25_combout\,
	datad => count(5),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(2));

-- Location: LC_X12_Y4_N1
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = ((!count(0))) # (!\rst~combout\)
-- \Add0~47\ = CARRY((\rst~combout\ & (count(0))))
-- \Add0~47COUT1_112\ = CARRY((\rst~combout\ & (count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7788",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_112\);

-- Location: LC_X11_Y4_N4
\count[0]\ : maxv_lcell
-- Equation(s):
-- count(0) = DFFEAS((((\rst~combout\ & \Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \rst~combout\,
	datad => \Add0~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X12_Y4_N2
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = \Add0~47\ $ (((count(1) & (\rst~combout\))))
-- \Add0~52\ = CARRY(((!\Add0~47\) # (!\rst~combout\)) # (!count(1)))
-- \Add0~52COUT1_114\ = CARRY(((!\Add0~47COUT1_112\) # (!\rst~combout\)) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => \rst~combout\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_114\);

-- Location: LC_X11_Y4_N0
\count[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (\count~0_combout\ & (\Equal0~1\ & (!count[1] & !count(0))))
-- count(1) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \count~0_combout\,
	datab => \Equal0~1\,
	datac => \Add0~50_combout\,
	datad => count(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(1));

-- Location: LC_X12_Y4_N3
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = \Add0~52\ $ ((((!count(2))) # (!\rst~combout\)))
-- \Add0~27\ = CARRY((\rst~combout\ & (count(2) & !\Add0~52\)))
-- \Add0~27COUT1_116\ = CARRY((\rst~combout\ & (count(2) & !\Add0~52COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "8708",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(2),
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_116\);

-- Location: LC_X12_Y4_N4
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = \Add0~27\ $ (((\rst~combout\ & (count(3)))))
-- \Add0~32\ = CARRY(((!\Add0~27COUT1_116\) # (!count(3))) # (!\rst~combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "787f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => count(3),
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X11_Y4_N7
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~30_combout\, , , VCC)

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
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X12_Y3_N3
\count[8]\ : maxv_lcell
-- Equation(s):
-- count(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~65_combout\, , , VCC)

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
	datac => \Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X12_Y3_N0
\Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~3\ & (\Equal0~0\ & (\Equal0~4\ & \Equal0~2\)))

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
	dataa => \Equal0~3\,
	datab => \Equal0~0\,
	datac => \Equal0~4\,
	datad => \Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X12_Y3_N1
temp_clk : maxv_lcell
-- Equation(s):
-- \temp_clk~regout\ = DFFEAS((\temp_clk~regout\ $ (((\Equal0~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \temp_clk~regout\,
	datad => \Equal0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \temp_clk~regout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(3),
	combout => \row~combout\(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(1),
	combout => \row~combout\(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(2),
	combout => \row~combout\(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\row[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_row(0),
	combout => \row~combout\(0));

-- Location: LC_X9_Y8_N3
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (\row~combout\(3)) # ((\row~combout\(1)) # ((\row~combout\(2)) # (\row~combout\(0))))

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
	dataa => \row~combout\(3),
	datab => \row~combout\(1),
	datac => \row~combout\(2),
	datad => \row~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X9_Y8_N4
\temp_row[3]~1\ : maxv_lcell
-- Equation(s):
-- \temp_row[3]~1_combout\ = (\Equal2~0_combout\ & (((\rst~combout\ & !\state_debounce.00~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \rst~combout\,
	datad => \state_debounce.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_row[3]~1_combout\);

-- Location: LC_X9_Y8_N2
\temp_row[2]\ : maxv_lcell
-- Equation(s):
-- temp_row(2) = DFFEAS(GND, GLOBAL(\temp_clk~regout\), VCC, , \temp_row[3]~1_combout\, \row~combout\(2), , , VCC)

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
	clk => \temp_clk~regout\,
	datac => \row~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \temp_row[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_row(2));

-- Location: LC_X9_Y8_N9
\temp_row[3]\ : maxv_lcell
-- Equation(s):
-- \temp[0]~1\ = (\row~combout\(2) & (temp_row(2) & (\row~combout\(3) $ (!temp_row[3])))) # (!\row~combout\(2) & (!temp_row(2) & (\row~combout\(3) $ (!temp_row[3]))))
-- temp_row(3) = DFFEAS(\temp[0]~1\, GLOBAL(\temp_clk~regout\), VCC, , \temp_row[3]~1_combout\, \row~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \row~combout\(2),
	datab => \row~combout\(3),
	datac => \row~combout\(3),
	datad => temp_row(2),
	aclr => GND,
	sload => VCC,
	ena => \temp_row[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp[0]~1\,
	regout => temp_row(3));

-- Location: LC_X9_Y8_N8
\temp_row[0]\ : maxv_lcell
-- Equation(s):
-- temp_row(0) = DFFEAS((((\row~combout\(0)))), GLOBAL(\temp_clk~regout\), VCC, , \temp_row[3]~1_combout\, , , , )

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
	clk => \temp_clk~regout\,
	datad => \row~combout\(0),
	aclr => GND,
	ena => \temp_row[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_row(0));

-- Location: LC_X9_Y8_N7
\temp_row[1]\ : maxv_lcell
-- Equation(s):
-- \temp[0]~0\ = (\row~combout\(0) & (temp_row(0) & (\row~combout\(1) $ (!temp_row[1])))) # (!\row~combout\(0) & (!temp_row(0) & (\row~combout\(1) $ (!temp_row[1]))))
-- temp_row(1) = DFFEAS(\temp[0]~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp_row[3]~1_combout\, \row~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \row~combout\(0),
	datab => \row~combout\(1),
	datac => \row~combout\(1),
	datad => temp_row(0),
	aclr => GND,
	sload => VCC,
	ena => \temp_row[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp[0]~0\,
	regout => temp_row(1));

-- Location: LC_X9_Y8_N1
\state_debounce.00\ : maxv_lcell
-- Equation(s):
-- \state_debounce.00~regout\ = DFFEAS((\state_debounce.00~regout\ & (((\temp[0]~1\ & \temp[0]~0\)))) # (!\state_debounce.00~regout\ & (\Equal2~0_combout\)), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \Equal2~0_combout\,
	datab => \temp[0]~1\,
	datac => \temp[0]~0\,
	datad => \state_debounce.00~regout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_debounce.00~regout\);

-- Location: LC_X9_Y8_N0
\state_debounce.01\ : maxv_lcell
-- Equation(s):
-- \state_debounce.01~regout\ = DFFEAS(((!\state_debounce.00~regout\ & ((\Equal2~0_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => \state_debounce.00~regout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_debounce.01~regout\);

-- Location: LC_X14_Y9_N9
\state.000\ : maxv_lcell
-- Equation(s):
-- \state.000~regout\ = DFFEAS(((!\WideNor5~combout\ & ((!\WideOr14~1_combout\)))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => \WideNor5~combout\,
	datad => \WideOr14~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.000~regout\);

-- Location: LC_X14_Y9_N3
\WideNor3~0\ : maxv_lcell
-- Equation(s):
-- \WideNor3~0_combout\ = ((!\state.010~regout\ & (!\state.101~regout\ & !\state.100~regout\)))

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
	datab => \state.010~regout\,
	datac => \state.101~regout\,
	datad => \state.100~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor3~0_combout\);

-- Location: LC_X14_Y9_N4
WideNor3 : maxv_lcell
-- Equation(s):
-- \WideNor3~combout\ = (\state.011~regout\) # ((\state.001~regout\) # ((\state.000~regout\) # (!\WideNor3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.011~regout\,
	datab => \state.001~regout\,
	datac => \state.000~regout\,
	datad => \WideNor3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor3~combout\);

-- Location: LC_X15_Y9_N6
\Selector19~0\ : maxv_lcell
-- Equation(s):
-- \Selector19~0_combout\ = (!\WideNor3~combout\ & (((!count_cmd(0) & !count_cmd(1))) # (!count_cmd(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "001f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_cmd(0),
	datab => count_cmd(1),
	datac => count_cmd(2),
	datad => \WideNor3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector19~0_combout\);

-- Location: LC_X14_Y9_N1
\state.001\ : maxv_lcell
-- Equation(s):
-- \WideNor5~0\ = ((!\state.011~regout\ & (!state.001 & \state.000~regout\)))
-- \state.001~regout\ = DFFEAS(\WideNor5~0\, GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , \Selector19~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => \state.011~regout\,
	datac => \Selector19~0_combout\,
	datad => \state.000~regout\,
	aclr => \ALT_INV_rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor5~0\,
	regout => \state.001~regout\);

-- Location: LC_X15_Y9_N3
WideNor4 : maxv_lcell
-- Equation(s):
-- \WideNor4~combout\ = ((\state.011~regout\) # ((!\WideNor3~0_combout\) # (!\state.000~regout\))) # (!\state.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.001~regout\,
	datab => \state.011~regout\,
	datac => \state.000~regout\,
	datad => \WideNor3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor4~combout\);

-- Location: LC_X14_Y9_N0
\state.010\ : maxv_lcell
-- Equation(s):
-- \state.010~regout\ = DFFEAS((((!\WideNor4~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

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
	clk => \temp_clk~regout\,
	datac => \WideNor4~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.010~regout\);

-- Location: LC_X13_Y9_N1
WideNor7 : maxv_lcell
-- Equation(s):
-- \WideNor7~combout\ = (\state.101~regout\) # (((\state.010~regout\) # (!\WideNor5~0\)) # (!\state.100~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.101~regout\,
	datab => \state.100~regout\,
	datac => \state.010~regout\,
	datad => \WideNor5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor7~combout\);

-- Location: LC_X14_Y9_N6
\WideOr14~0\ : maxv_lcell
-- Equation(s):
-- \WideOr14~0_combout\ = (\state.011~regout\) # ((\state.000~regout\ $ (\state.001~regout\)) # (!\WideNor3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f6ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.000~regout\,
	datab => \state.001~regout\,
	datac => \state.011~regout\,
	datad => \WideNor3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr14~0_combout\);

-- Location: LC_X13_Y9_N5
\WideOr14~1\ : maxv_lcell
-- Equation(s):
-- \WideOr14~1_combout\ = (\WideNor6~combout\ & (\WideNor7~combout\ & (\WideOr14~0_combout\ & \WideNor8~combout\)))

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
	dataa => \WideNor6~combout\,
	datab => \WideNor7~combout\,
	datac => \WideOr14~0_combout\,
	datad => \WideNor8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr14~1_combout\);

-- Location: LC_X12_Y9_N9
\count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- count_cmd(1) = DFFEAS((count_cmd(1) & (((!count_cmd(0) & \WideNor5~combout\)) # (!\WideOr14~1_combout\))) # (!count_cmd(1) & (count_cmd(0) & (\WideNor5~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "48f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => \WideNor5~combout\,
	datac => count_cmd(1),
	datad => \WideOr14~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_cmd(1));

-- Location: LC_X15_Y9_N1
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (((count_cmd(0) & count_cmd(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => count_cmd(0),
	datad => count_cmd(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X12_Y9_N4
\count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- count_cmd(2) = DFFEAS((count_cmd(2) & (((!\Mux0~0_combout\ & \WideNor5~combout\)) # (!\WideOr14~1_combout\))) # (!count_cmd(2) & (\Mux0~0_combout\ & (\WideNor5~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "48f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \Mux0~0_combout\,
	datab => \WideNor5~combout\,
	datac => count_cmd(2),
	datad => \WideOr14~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_cmd(2));

-- Location: LC_X13_Y9_N0
\Selector17~0\ : maxv_lcell
-- Equation(s):
-- \Selector17~0_combout\ = (count_cmd(2) & (!\WideNor3~combout\ & ((count_cmd(0)) # (count_cmd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_cmd(0),
	datab => count_cmd(2),
	datac => count_cmd(1),
	datad => \WideNor3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector17~0_combout\);

-- Location: LC_X14_Y9_N2
\state.011\ : maxv_lcell
-- Equation(s):
-- \state.011~regout\ = DFFEAS((\Selector17~0_combout\) # ((\state_debounce.01~regout\ & ((!\WideNor8~combout\)))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \state_debounce.01~regout\,
	datab => \Selector17~0_combout\,
	datad => \WideNor8~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.011~regout\);

-- Location: LC_X14_Y9_N7
WideNor6 : maxv_lcell
-- Equation(s):
-- \WideNor6~combout\ = ((\state.001~regout\) # ((!\WideNor3~0_combout\) # (!\state.000~regout\))) # (!\state.011~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.011~regout\,
	datab => \state.001~regout\,
	datac => \state.000~regout\,
	datad => \WideNor3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor6~combout\);

-- Location: LC_X13_Y9_N2
\state.100\ : maxv_lcell
-- Equation(s):
-- \state.100~regout\ = DFFEAS((((!\WideNor6~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

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
	clk => \temp_clk~regout\,
	datad => \WideNor6~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.100~regout\);

-- Location: LC_X13_Y9_N4
WideNor8 : maxv_lcell
-- Equation(s):
-- \WideNor8~combout\ = ((\state.100~regout\) # ((\state.010~regout\) # (!\WideNor5~0\))) # (!\state.101~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.101~regout\,
	datab => \state.100~regout\,
	datac => \state.010~regout\,
	datad => \WideNor5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor8~combout\);

-- Location: LC_X13_Y9_N8
\state.101\ : maxv_lcell
-- Equation(s):
-- \state.101~regout\ = DFFEAS((((!\state_debounce.01~regout\ & !\WideNor8~combout\)) # (!\WideNor7~combout\)), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => \state_debounce.01~regout\,
	datac => \WideNor8~combout\,
	datad => \WideNor7~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.101~regout\);

-- Location: LC_X14_Y9_N8
WideNor5 : maxv_lcell
-- Equation(s):
-- \WideNor5~combout\ = (!\state.101~regout\ & (!\state.100~regout\ & (\WideNor5~0\ & \state.010~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.101~regout\,
	datab => \state.100~regout\,
	datac => \WideNor5~0\,
	datad => \state.010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor5~combout\);

-- Location: LC_X12_Y9_N3
\count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- count_cmd(0) = DFFEAS((count_cmd(0) & (((!\WideOr14~1_combout\)))) # (!count_cmd(0) & (((\WideNor5~combout\)))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datac => \WideNor5~combout\,
	datad => \WideOr14~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_cmd(0));

-- Location: LC_X9_Y8_N5
\col[0]~0\ : maxv_lcell
-- Equation(s):
-- \col[0]~0_combout\ = (!\Equal2~0_combout\ & (((!\state_debounce.00~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datad => \state_debounce.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col[0]~0_combout\);

-- Location: LC_X9_Y7_N8
\col[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[3]~reg0_regout\ = DFFEAS(((\col[2]~reg0_regout\) # ((\col[1]~reg0_regout\) # (!\col[3]~reg0_regout\))) # (!\col[0]~reg0_regout\), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , \col[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \col[0]~reg0_regout\,
	datab => \col[2]~reg0_regout\,
	datac => \col[1]~reg0_regout\,
	datad => \col[3]~reg0_regout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[3]~reg0_regout\);

-- Location: LC_X9_Y7_N9
\col[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[2]~reg0_regout\ = DFFEAS((((!\col[3]~reg0_regout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , \col[0]~0_combout\, , , , )

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
	clk => \temp_clk~regout\,
	datad => \col[3]~reg0_regout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[2]~reg0_regout\);

-- Location: LC_X9_Y7_N7
\col[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[1]~reg0_regout\ = DFFEAS((((\col[2]~reg0_regout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , \col[0]~0_combout\, , , , )

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
	clk => \temp_clk~regout\,
	datad => \col[2]~reg0_regout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[1]~reg0_regout\);

-- Location: LC_X9_Y7_N4
\col[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , \col[0]~0_combout\, \col[1]~reg0_regout\, , , VCC)

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
	clk => \temp_clk~regout\,
	datac => \col[1]~reg0_regout\,
	aclr => \ALT_INV_rst~combout\,
	sload => VCC,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[0]~reg0_regout\);

-- Location: LC_X9_Y8_N6
\temp[0]~2\ : maxv_lcell
-- Equation(s):
-- \temp[0]~2_combout\ = (\rst~combout\ & (\state_debounce.01~regout\ & (\temp[0]~0\ & \temp[0]~1\)))

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
	dataa => \rst~combout\,
	datab => \state_debounce.01~regout\,
	datac => \temp[0]~0\,
	datad => \temp[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp[0]~2_combout\);

-- Location: LC_X9_Y7_N6
\temp[3]\ : maxv_lcell
-- Equation(s):
-- temp(3) = DFFEAS((((!\col[3]~reg0_regout\))), GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, , , , )

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
	clk => \temp_clk~regout\,
	datad => \col[3]~reg0_regout\,
	aclr => GND,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(3));

-- Location: LC_X10_Y7_N6
\temp[1]\ : maxv_lcell
-- Equation(s):
-- \WideOr4~3\ = (!temp(3) & (!temp(7) & (temp(0) $ (temp[1]))))
-- temp(1) = DFFEAS(\WideOr4~3\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, \col[1]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0012",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(0),
	datab => temp(3),
	datac => \col[1]~reg0_regout\,
	datad => temp(7),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~3\,
	regout => temp(1));

-- Location: LC_X10_Y7_N2
\temp[2]\ : maxv_lcell
-- Equation(s):
-- \WideOr2~0\ = (!temp(1) & (((!temp[2]))))
-- temp(2) = DFFEAS(\WideOr2~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, \col[2]~reg0_regout\, , , VCC)

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
	clk => \temp_clk~regout\,
	dataa => temp(1),
	datac => \col[2]~reg0_regout\,
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~0\,
	regout => temp(2));

-- Location: LC_X10_Y7_N1
\temp[7]\ : maxv_lcell
-- Equation(s):
-- \WideOr1~1\ = (!temp[7] & ((temp(1) & (!temp(3) & !temp(2))) # (!temp(1) & (temp(3) $ (temp(2))))))
-- temp(7) = DFFEAS(\WideOr1~1\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0106",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(1),
	datab => temp(3),
	datac => temp_row(3),
	datad => temp(2),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~1\,
	regout => temp(7));

-- Location: LC_X10_Y7_N8
\temp[5]\ : maxv_lcell
-- Equation(s):
-- \WideOr4~0\ = (temp(0) & (!temp(7) & (temp[5] & \WideOr2~0\)))
-- temp(5) = DFFEAS(\WideOr4~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(0),
	datab => temp(7),
	datac => temp_row(1),
	datad => \WideOr2~0\,
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~0\,
	regout => temp(5));

-- Location: LC_X9_Y7_N0
\temp[0]\ : maxv_lcell
-- Equation(s):
-- \WideOr10~3\ = (((!temp[0] & !temp(5))))
-- temp(0) = DFFEAS(\WideOr10~3\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, \col[0]~reg0_regout\, , , VCC)

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
	clk => \temp_clk~regout\,
	datac => \col[0]~reg0_regout\,
	datad => temp(5),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~3\,
	regout => temp(0));

-- Location: LC_X10_Y7_N3
\temp[4]\ : maxv_lcell
-- Equation(s):
-- \WideOr1~0\ = (((!temp[4] & !temp(0))))
-- temp(4) = DFFEAS(\WideOr1~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(0), , , VCC)

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
	clk => \temp_clk~regout\,
	datac => temp_row(0),
	datad => temp(0),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~0\,
	regout => temp(4));

-- Location: LC_X12_Y7_N6
\WideOr5~4\ : maxv_lcell
-- Equation(s):
-- \WideOr5~4_combout\ = (temp(2) & ((temp(4) & (!temp(5) & !temp(7))) # (!temp(4) & (temp(5) $ (temp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(2),
	datac => temp(5),
	datad => temp(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~4_combout\);

-- Location: LC_X12_Y7_N0
\WideOr10~5\ : maxv_lcell
-- Equation(s):
-- \WideOr10~5_combout\ = (((!temp(1) & !temp(3))))

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
	datad => temp(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~5_combout\);

-- Location: LC_X10_Y7_N0
\temp[6]\ : maxv_lcell
-- Equation(s):
-- \WideOr10~1\ = (((!temp[6] & !temp(4))))
-- temp(6) = DFFEAS(\WideOr10~1\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(2), , , VCC)

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
	clk => \temp_clk~regout\,
	datac => temp_row(2),
	datad => temp(4),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~1\,
	regout => temp(6));

-- Location: LC_X12_Y8_N5
\WideOr8~7\ : maxv_lcell
-- Equation(s):
-- \WideOr8~7_combout\ = (((!temp(6) & !temp(0))))

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
	datac => temp(6),
	datad => temp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~7_combout\);

-- Location: LC_X11_Y7_N9
\WideOr5~2\ : maxv_lcell
-- Equation(s):
-- \WideOr5~2_combout\ = (!temp(2) & (temp(6) $ (((!temp(1) & temp(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2122",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => temp(2),
	datac => temp(1),
	datad => temp(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~2_combout\);

-- Location: LC_X12_Y7_N1
\WideOr5~6\ : maxv_lcell
-- Equation(s):
-- \WideOr5~6_combout\ = (temp(1) & (!temp(0) & (!temp(4) & !temp(3)))) # (!temp(1) & (temp(0) $ (((temp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1126",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(1),
	datac => temp(4),
	datad => temp(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~6_combout\);

-- Location: LC_X12_Y7_N3
\WideOr5~3\ : maxv_lcell
-- Equation(s):
-- \WideOr5~3_combout\ = (!temp(5) & (!temp(7) & (\WideOr5~2_combout\ & \WideOr5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => temp(7),
	datac => \WideOr5~2_combout\,
	datad => \WideOr5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~3_combout\);

-- Location: LC_X12_Y7_N4
\WideOr5~5\ : maxv_lcell
-- Equation(s):
-- \WideOr5~5_combout\ = (\WideOr5~3_combout\) # ((\WideOr5~4_combout\ & (\WideOr10~5_combout\ & \WideOr8~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~4_combout\,
	datab => \WideOr10~5_combout\,
	datac => \WideOr8~7_combout\,
	datad => \WideOr5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~5_combout\);

-- Location: LC_X12_Y7_N5
\lcd_dat[0]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(0) = DFFEAS((((!\WideOr5~5_combout\))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datad => \WideOr5~5_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(0));

-- Location: LC_X12_Y9_N1
\Selector14~0\ : maxv_lcell
-- Equation(s):
-- \Selector14~0_combout\ = (!count_cmd(2) & (((!count_cmd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_cmd(2),
	datad => count_cmd(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~0_combout\);

-- Location: LC_X14_Y9_N5
\WideOr11~0\ : maxv_lcell
-- Equation(s):
-- \WideOr11~0_combout\ = ((\WideNor6~combout\ & (\WideNor7~combout\ & \WideNor8~combout\)))

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
	datab => \WideNor6~combout\,
	datac => \WideNor7~combout\,
	datad => \WideNor8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr11~0_combout\);

-- Location: LC_X13_Y9_N6
\lcd[0]~0\ : maxv_lcell
-- Equation(s):
-- \lcd[0]~0_combout\ = (\rst~combout\ & (!\Selector17~0_combout\ & ((\WideNor5~combout\) # (!\WideOr14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "080a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \WideNor5~combout\,
	datac => \Selector17~0_combout\,
	datad => \WideOr14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd[0]~0_combout\);

-- Location: LC_X12_Y9_N5
\lcd[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[0]~reg0_regout\ = DFFEAS((\WideOr11~0_combout\ & (count_cmd(0) & ((\Selector14~0_combout\)))) # (!\WideOr11~0_combout\ & (((lcd_dat(0))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => lcd_dat(0),
	datac => \Selector14~0_combout\,
	datad => \WideOr11~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[0]~reg0_regout\);

-- Location: LC_X12_Y9_N6
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = count_cmd(2) $ ((((count_cmd(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_cmd(2),
	datad => count_cmd(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X11_Y7_N6
\WideOr4~1\ : maxv_lcell
-- Equation(s):
-- \WideOr4~1_combout\ = (temp(7) & (\WideOr10~3\ & (temp(2) $ (temp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(2),
	datac => temp(1),
	datad => \WideOr10~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~1_combout\);

-- Location: LC_X11_Y7_N7
\WideOr4~2\ : maxv_lcell
-- Equation(s):
-- \WideOr4~2_combout\ = (!temp(3) & (\WideOr10~1\ & ((\WideOr4~0\) # (\WideOr4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr4~0\,
	datab => temp(3),
	datac => \WideOr10~1\,
	datad => \WideOr4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~2_combout\);

-- Location: LC_X11_Y7_N4
\WideOr7~3\ : maxv_lcell
-- Equation(s):
-- \WideOr7~3_combout\ = (!temp(7) & (((!temp(0) & !temp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datac => temp(0),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~3_combout\);

-- Location: LC_X10_Y8_N5
\WideOr4~4\ : maxv_lcell
-- Equation(s):
-- \WideOr4~4_combout\ = ((!temp(5) & (!temp(4) & temp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => temp(5),
	datac => temp(4),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~4_combout\);

-- Location: LC_X11_Y7_N3
\WideOr4~5\ : maxv_lcell
-- Equation(s):
-- \WideOr4~5_combout\ = (temp(3) & (!temp(1) & (temp(5) $ (temp(4))))) # (!temp(3) & (!temp(5) & (temp(1) & temp(4))))

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
	dataa => temp(3),
	datab => temp(5),
	datac => temp(1),
	datad => temp(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~5_combout\);

-- Location: LC_X11_Y7_N0
\WideOr4~6\ : maxv_lcell
-- Equation(s):
-- \WideOr4~6_combout\ = (\WideOr7~3_combout\ & ((\WideOr4~5_combout\) # ((\WideOr4~3\ & \WideOr4~4_combout\)))) # (!\WideOr7~3_combout\ & (\WideOr4~3\ & (\WideOr4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr7~3_combout\,
	datab => \WideOr4~3\,
	datac => \WideOr4~4_combout\,
	datad => \WideOr4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~6_combout\);

-- Location: LC_X11_Y7_N1
\lcd_dat[1]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(1) = DFFEAS(((\WideOr4~2_combout\) # ((!temp(2) & \WideOr4~6_combout\))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => temp(2),
	datac => \WideOr4~2_combout\,
	datad => \WideOr4~6_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(1));

-- Location: LC_X12_Y9_N7
\lcd[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[1]~reg0_regout\ = DFFEAS((\WideOr11~0_combout\ & (!count_cmd(0) & (\Mux4~0_combout\))) # (!\WideOr11~0_combout\ & (((lcd_dat(1))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => \Mux4~0_combout\,
	datac => lcd_dat(1),
	datad => \WideOr11~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[1]~reg0_regout\);

-- Location: LC_X10_Y8_N1
\WideOr3~3\ : maxv_lcell
-- Equation(s):
-- \WideOr3~3_combout\ = (!temp(0) & ((temp(3) & (!temp(1) & !temp(2))) # (!temp(3) & (temp(1) $ (temp(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0114",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(3),
	datac => temp(1),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~3_combout\);

-- Location: LC_X10_Y8_N6
\WideOr3~2\ : maxv_lcell
-- Equation(s):
-- \WideOr3~2_combout\ = (temp(4) & (!temp(3) & (temp(0) & !temp(5)))) # (!temp(4) & (temp(3) & (!temp(0) & temp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0420",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(3),
	datac => temp(0),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~2_combout\);

-- Location: LC_X10_Y8_N3
\WideOr3~5\ : maxv_lcell
-- Equation(s):
-- \WideOr3~5_combout\ = (!temp(1) & (!temp(6) & (\WideOr3~2_combout\ & !temp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => temp(6),
	datac => \WideOr3~2_combout\,
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~5_combout\);

-- Location: LC_X10_Y8_N0
\lcd_dat[2]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(2) = DFFEAS((!temp(7) & ((\WideOr3~5_combout\) # ((\WideOr4~4_combout\ & \WideOr3~3_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr4~4_combout\,
	datab => \WideOr3~3_combout\,
	datac => temp(7),
	datad => \WideOr3~5_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(2));

-- Location: LC_X12_Y9_N8
\lcd[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[2]~reg0_regout\ = DFFEAS((\WideOr11~0_combout\ & (!count_cmd(0) & (\Mux4~0_combout\))) # (!\WideOr11~0_combout\ & (((lcd_dat(2))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => \Mux4~0_combout\,
	datac => lcd_dat(2),
	datad => \WideOr11~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[2]~reg0_regout\);

-- Location: LC_X11_Y7_N8
\WideOr2~2\ : maxv_lcell
-- Equation(s):
-- \WideOr2~2_combout\ = (!temp(3) & (temp(5) & (temp(2) $ (temp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(1),
	datac => temp(3),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~2_combout\);

-- Location: LC_X11_Y7_N2
\WideOr2~1\ : maxv_lcell
-- Equation(s):
-- \WideOr2~1_combout\ = (!temp(5) & (temp(4) & (temp(3) & \WideOr2~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => temp(4),
	datac => temp(3),
	datad => \WideOr2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~1_combout\);

-- Location: LC_X11_Y7_N5
\lcd_dat[3]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(3) = DFFEAS((\WideOr7~3_combout\ & ((\WideOr2~1_combout\) # ((\WideOr2~2_combout\ & !temp(4))))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f020",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr2~2_combout\,
	datab => temp(4),
	datac => \WideOr7~3_combout\,
	datad => \WideOr2~1_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(3));

-- Location: LC_X13_Y9_N9
\lcd[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[3]~reg0_regout\ = DFFEAS((\WideOr11~0_combout\ & (!count_cmd(0) & (!count_cmd(2)))) # (!\WideOr11~0_combout\ & (((lcd_dat(3))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => count_cmd(2),
	datac => lcd_dat(3),
	datad => \WideOr11~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[3]~reg0_regout\);

-- Location: LC_X10_Y8_N7
\WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \WideOr8~0_combout\ = (!temp(3) & (!temp(7) & (!temp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(7),
	datac => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~0_combout\);

-- Location: LC_X11_Y8_N3
\WideOr1~3\ : maxv_lcell
-- Equation(s):
-- \WideOr1~3_combout\ = (temp(7) & ((temp(2) & (!temp(1) & !temp(3))) # (!temp(2) & (temp(1) $ (temp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0448",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(7),
	datac => temp(1),
	datad => temp(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~3_combout\);

-- Location: LC_X11_Y8_N4
\WideOr1~4\ : maxv_lcell
-- Equation(s):
-- \WideOr1~4_combout\ = (temp(4) & (temp(2) & (\WideOr8~0_combout\))) # (!temp(4) & (((\WideOr1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => \WideOr8~0_combout\,
	datac => temp(4),
	datad => \WideOr1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~4_combout\);

-- Location: LC_X11_Y8_N8
\WideOr1~2\ : maxv_lcell
-- Equation(s):
-- \WideOr1~2_combout\ = (\WideOr1~1\ & (\WideOr1~0\ & (temp(6) $ (temp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => \WideOr1~1\,
	datac => \WideOr1~0\,
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~2_combout\);

-- Location: LC_X11_Y8_N0
\lcd_dat[4]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(4) = DFFEAS((\WideOr1~2_combout\) # ((!temp(5) & (\WideOr8~7_combout\ & \WideOr1~4_combout\))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(5),
	datab => \WideOr8~7_combout\,
	datac => \WideOr1~4_combout\,
	datad => \WideOr1~2_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(4));

-- Location: LC_X13_Y9_N3
\lcd[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[4]~reg0_regout\ = DFFEAS((\WideOr11~0_combout\ & (!count_cmd(0) & ((\Selector14~0_combout\)))) # (!\WideOr11~0_combout\ & (((lcd_dat(4))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => lcd_dat(4),
	datac => \Selector14~0_combout\,
	datad => \WideOr11~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[4]~reg0_regout\);

-- Location: LC_X12_Y7_N8
\WideOr8~8\ : maxv_lcell
-- Equation(s):
-- \WideOr8~8_combout\ = (((!temp(2) & temp(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => temp(2),
	datad => temp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~8_combout\);

-- Location: LC_X12_Y7_N7
\WideOr0~0\ : maxv_lcell
-- Equation(s):
-- \WideOr0~0_combout\ = (temp(4) & (!temp(7) & (!temp(5) & !temp(6)))) # (!temp(4) & ((temp(7) & (!temp(5) & !temp(6))) # (!temp(7) & (temp(5) $ (temp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(7),
	datac => temp(5),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~0_combout\);

-- Location: LC_X12_Y7_N9
\lcd_dat[5]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(5) = DFFEAS((\rst~combout\ & (((!\WideOr10~5_combout\) # (!\WideOr0~0_combout\)) # (!\WideOr8~8_combout\))), GLOBAL(\temp_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr8~8_combout\,
	datab => \WideOr0~0_combout\,
	datac => \WideOr10~5_combout\,
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(5));

-- Location: LC_X13_Y9_N7
\lcd[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[5]~reg0_regout\ = DFFEAS((\WideOr11~0_combout\ & (!count_cmd(0) & ((\Selector14~0_combout\)))) # (!\WideOr11~0_combout\ & (((lcd_dat(5))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => lcd_dat(5),
	datac => \Selector14~0_combout\,
	datad => \WideOr11~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[5]~reg0_regout\);

-- Location: LC_X12_Y7_N2
\lcd_dat[6]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(6) = DFFEAS((\WideOr8~8_combout\ & (\WideOr0~0_combout\ & (\WideOr10~5_combout\ & \rst~combout\))), GLOBAL(\temp_clk~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr8~8_combout\,
	datab => \WideOr0~0_combout\,
	datac => \WideOr10~5_combout\,
	datad => \rst~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(6));

-- Location: LC_X12_Y9_N2
\Selector8~0\ : maxv_lcell
-- Equation(s):
-- \Selector8~0_combout\ = (((!\WideNor5~combout\ & \WideNor4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \WideNor5~combout\,
	datad => \WideNor4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector8~0_combout\);

-- Location: LC_X12_Y9_N0
\lcd[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[6]~reg0_regout\ = DFFEAS((\WideNor3~combout\ & (lcd_dat(6) & (!\WideOr11~0_combout\ & \Selector8~0_combout\))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideNor3~combout\,
	datab => lcd_dat(6),
	datac => \WideOr11~0_combout\,
	datad => \Selector8~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[6]~reg0_regout\);

-- Location: LC_X15_Y9_N7
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (\Mux0~0_combout\ & (((\WideNor5~combout\) # (\Selector19~0_combout\)) # (!\WideNor4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor4~combout\,
	datab => \Mux0~0_combout\,
	datac => \WideNor5~combout\,
	datad => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X15_Y9_N2
\always3~0\ : maxv_lcell
-- Equation(s):
-- \always3~0_combout\ = (((\WideNor5~combout\) # (!\WideOr11~0_combout\)) # (!\WideOr14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \WideOr14~0_combout\,
	datac => \WideNor5~combout\,
	datad => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always3~0_combout\);

-- Location: LC_X15_Y9_N8
\lcd[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[7]~reg0_regout\ = DFFEAS((\Selector7~0_combout\) # ((\lcd[7]~reg0_regout\ & ((\Selector17~0_combout\) # (!\always3~0_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \lcd[7]~reg0_regout\,
	datab => \Selector17~0_combout\,
	datac => \Selector7~0_combout\,
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[7]~reg0_regout\);

-- Location: LC_X12_Y8_N1
\WideOr10~0\ : maxv_lcell
-- Equation(s):
-- \WideOr10~0_combout\ = (temp(0) & (!temp(2) & (temp(7) $ (temp(5))))) # (!temp(0) & (temp(2) & (temp(7) $ (temp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(7),
	datac => temp(5),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~0_combout\);

-- Location: LC_X12_Y8_N0
\WideOr10~2\ : maxv_lcell
-- Equation(s):
-- \WideOr10~2_combout\ = (!temp(1) & (\WideOr10~0_combout\ & (!temp(3) & \WideOr10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => \WideOr10~0_combout\,
	datac => temp(3),
	datad => \WideOr10~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~2_combout\);

-- Location: LC_X12_Y8_N9
\WideOr10~6\ : maxv_lcell
-- Equation(s):
-- \WideOr10~6_combout\ = (temp(4) & (!temp(1) & (temp(3) $ (temp(2))))) # (!temp(4) & (!temp(2) & (temp(1) $ (temp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0452",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => temp(4),
	datac => temp(3),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~6_combout\);

-- Location: LC_X12_Y8_N6
\WideOr10~7\ : maxv_lcell
-- Equation(s):
-- \WideOr10~7_combout\ = ((\WideOr10~6_combout\ & (temp(4) $ (temp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datac => temp(6),
	datad => \WideOr10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~7_combout\);

-- Location: LC_X12_Y8_N2
\led[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[0]~reg0_regout\ = DFFEAS((!\WideOr10~2_combout\ & (((temp(7)) # (!\WideOr10~7_combout\)) # (!\WideOr10~3\))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0d0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr10~3\,
	datab => temp(7),
	datac => \WideOr10~2_combout\,
	datad => \WideOr10~7_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LC_X11_Y8_N6
\WideOr9~1\ : maxv_lcell
-- Equation(s):
-- \WideOr9~1_combout\ = (temp(1) & (!temp(6) & (!temp(7) & temp(5)))) # (!temp(1) & (!temp(5) & (temp(6) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => temp(7),
	datac => temp(1),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~1_combout\);

-- Location: LC_X11_Y8_N7
\WideOr9~2\ : maxv_lcell
-- Equation(s):
-- \WideOr9~2_combout\ = (\WideOr9~1_combout\ & ((temp(3) & ((!temp(1)))) # (!temp(3) & (!temp(7) & temp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(7),
	datac => temp(1),
	datad => \WideOr9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~2_combout\);

-- Location: LC_X11_Y8_N9
\WideOr9~3\ : maxv_lcell
-- Equation(s):
-- \WideOr9~3_combout\ = (temp(6) & (!temp(4) & (temp(2) & !temp(5)))) # (!temp(6) & (temp(4) $ (((temp(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1164",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => temp(4),
	datac => temp(2),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~3_combout\);

-- Location: LC_X11_Y8_N2
\WideOr9~4\ : maxv_lcell
-- Equation(s):
-- \WideOr9~4_combout\ = (\WideOr9~3_combout\ & (\WideOr8~0_combout\ & (temp(2) $ (temp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => \WideOr9~3_combout\,
	datac => temp(0),
	datad => \WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~4_combout\);

-- Location: LC_X11_Y8_N5
\led[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[1]~reg0_regout\ = DFFEAS((!\WideOr9~4_combout\ & ((temp(2)) # ((!\WideOr1~0\) # (!\WideOr9~2_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00bf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(2),
	datab => \WideOr9~2_combout\,
	datac => \WideOr1~0\,
	datad => \WideOr9~4_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LC_X10_Y8_N2
\WideOr8~1\ : maxv_lcell
-- Equation(s):
-- \WideOr8~1_combout\ = (temp(4) & (temp(2) & (!temp(0) & !temp(6)))) # (!temp(4) & (!temp(2) & (temp(0) & temp(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(2),
	datac => temp(0),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~1_combout\);

-- Location: LC_X9_Y7_N5
\WideOr8~2\ : maxv_lcell
-- Equation(s):
-- \WideOr8~2_combout\ = ((temp(0) $ (temp(3))))

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
	datac => temp(0),
	datad => temp(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~2_combout\);

-- Location: LC_X10_Y7_N4
\WideOr8~3\ : maxv_lcell
-- Equation(s):
-- \WideOr8~3_combout\ = (!temp(0) & (!temp(3) & (temp(1) $ (temp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(3),
	datac => temp(1),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~3_combout\);

-- Location: LC_X10_Y7_N5
\WideOr8~4\ : maxv_lcell
-- Equation(s):
-- \WideOr8~4_combout\ = (\WideOr8~2_combout\ & (\WideOr2~0\ & (!\WideOr8~3_combout\ & !temp(5)))) # (!\WideOr8~2_combout\ & (((\WideOr8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5058",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~2_combout\,
	datab => \WideOr2~0\,
	datac => \WideOr8~3_combout\,
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~4_combout\);

-- Location: LC_X10_Y7_N9
\WideOr8~5\ : maxv_lcell
-- Equation(s):
-- \WideOr8~5_combout\ = (\WideOr10~1\ & (\WideOr8~4_combout\ & (temp(5) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => \WideOr10~1\,
	datac => \WideOr8~4_combout\,
	datad => temp(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~5_combout\);

-- Location: LC_X10_Y7_N7
\led[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[2]~reg0_regout\ = DFFEAS((!\WideOr8~5_combout\ & (((temp(5)) # (!\WideOr8~1_combout\)) # (!\WideOr8~0_combout\))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00df",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr8~0_combout\,
	datab => temp(5),
	datac => \WideOr8~1_combout\,
	datad => \WideOr8~5_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LC_X12_Y8_N8
\WideOr7~1\ : maxv_lcell
-- Equation(s):
-- \WideOr7~1_combout\ = (!temp(0) & (!temp(7) & (!temp(6) & !temp(1))))

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
	dataa => temp(0),
	datab => temp(7),
	datac => temp(6),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~1_combout\);

-- Location: LC_X11_Y8_N1
\WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \WideOr7~0_combout\ = (temp(2) & (temp(4) & (!temp(3) & !temp(5)))) # (!temp(2) & (!temp(4) & (temp(3) & temp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(4),
	datac => temp(3),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~0_combout\);

-- Location: LC_X12_Y8_N7
\WideOr7~4\ : maxv_lcell
-- Equation(s):
-- \WideOr7~4_combout\ = (temp(1) & (((!temp(3) & !temp(2))))) # (!temp(1) & ((temp(3) $ (temp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "055a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datac => temp(3),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~4_combout\);

-- Location: LC_X12_Y8_N3
\WideOr7~5\ : maxv_lcell
-- Equation(s):
-- \WideOr7~5_combout\ = (\WideOr7~4_combout\ & (!temp(5) & (temp(6) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => temp(7),
	datac => \WideOr7~4_combout\,
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~5_combout\);

-- Location: LC_X12_Y8_N4
\led[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[3]~reg0_regout\ = DFFEAS((\WideOr7~1_combout\ & (!\WideOr7~0_combout\ & ((!\WideOr7~5_combout\) # (!\WideOr1~0\)))) # (!\WideOr7~1_combout\ & (((!\WideOr7~5_combout\)) # (!\WideOr1~0\))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "135f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr7~1_combout\,
	datab => \WideOr1~0\,
	datac => \WideOr7~0_combout\,
	datad => \WideOr7~5_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: LC_X10_Y8_N4
\WideOr6~0\ : maxv_lcell
-- Equation(s):
-- \WideOr6~0_combout\ = (temp(4) & (!temp(5) & (!temp(7) & !temp(6)))) # (!temp(4) & ((temp(5) & (!temp(7) & !temp(6))) # (!temp(5) & (temp(7) $ (temp(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(5),
	datac => temp(7),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~0_combout\);

-- Location: LC_X10_Y8_N8
\WideOr6~1\ : maxv_lcell
-- Equation(s):
-- \WideOr6~1_combout\ = (temp(0) & (!temp(3) & (!temp(1) & !temp(2)))) # (!temp(0) & ((temp(3) & (!temp(1) & !temp(2))) # (!temp(3) & (temp(1) $ (temp(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0116",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(3),
	datac => temp(1),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~1_combout\);

-- Location: LC_X10_Y8_N9
\led[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[4]~reg0_regout\ = DFFEAS((((!\WideOr6~1_combout\) # (!\WideOr6~0_combout\))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datac => \WideOr6~0_combout\,
	datad => \WideOr6~1_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[4]~reg0_regout\);

-- Location: LC_X15_Y9_N9
\lcd_rs~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd_rs~reg0_regout\ = DFFEAS(((\lcd_rs~reg0_regout\ & ((\Selector17~0_combout\) # (!\always3~0_combout\)))) # (!\WideOr11~0_combout\), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5dd",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr11~0_combout\,
	datab => \lcd_rs~reg0_regout\,
	datac => \Selector17~0_combout\,
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_rs~reg0_regout\);

-- Location: LC_X15_Y9_N4
\Selector17~1\ : maxv_lcell
-- Equation(s):
-- \Selector17~1_combout\ = (((!\WideNor7~combout\))) # (!\WideNor4~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor4~combout\,
	datad => \WideNor7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector17~1_combout\);

-- Location: LC_X15_Y9_N5
\lcd_en~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd_en~reg0_regout\ = DFFEAS((\Selector17~1_combout\) # ((\lcd_en~reg0_regout\ & ((\Selector17~0_combout\) # (!\always3~0_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \lcd_en~reg0_regout\,
	datab => \Selector17~0_combout\,
	datac => \Selector17~1_combout\,
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_en~reg0_regout\);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[0]~reg0_regout\,
	oe => VCC,
	padio => ww_lcd(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[1]~reg0_regout\,
	oe => VCC,
	padio => ww_lcd(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[2]~reg0_regout\,
	oe => VCC,
	padio => ww_lcd(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[3]~reg0_regout\,
	oe => VCC,
	padio => ww_lcd(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[4]~reg0_regout\,
	oe => VCC,
	padio => ww_lcd(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[5]~reg0_regout\,
	oe => VCC,
	padio => ww_lcd(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[6]~reg0_regout\,
	oe => VCC,
	padio => ww_lcd(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd[7]~reg0_regout\,
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
	datain => \led[4]~reg0_regout\,
	oe => VCC,
	padio => ww_led(4));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col[0]~reg0_regout\,
	oe => VCC,
	padio => ww_col(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col[1]~reg0_regout\,
	oe => VCC,
	padio => ww_col(1));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\col[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \col[2]~reg0_regout\,
	oe => VCC,
	padio => ww_col(2));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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
	datain => \lcd_rs~reg0_regout\,
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
	datain => \lcd_en~reg0_regout\,
	oe => VCC,
	padio => ww_lcd_en);
END structure;


