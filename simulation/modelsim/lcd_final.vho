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

-- DATE "03/16/2015 13:23:51"

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
	lcd : BUFFER std_logic_vector(7 DOWNTO 0);
	led : BUFFER std_logic_vector(4 DOWNTO 0);
	col : BUFFER std_logic_vector(3 DOWNTO 0);
	lcd_rs : BUFFER std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_en : BUFFER std_logic;
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
-- led[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[2]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[3]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- led[4]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_118\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_112\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_126\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_128\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_130\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_132\ : std_logic;
SIGNAL \count~7_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_134\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_136\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_138\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_140\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_114\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_116\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_120\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_122\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_124\ : std_logic;
SIGNAL \count~6_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Equal0~4\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \temp_clk~regout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \temp[0]~1\ : std_logic;
SIGNAL \temp[0]~0\ : std_logic;
SIGNAL \state_debounce.00~regout\ : std_logic;
SIGNAL \temp_row[3]~1_combout\ : std_logic;
SIGNAL \col[0]~0_combout\ : std_logic;
SIGNAL \col[3]~reg0_regout\ : std_logic;
SIGNAL \col[2]~reg0_regout\ : std_logic;
SIGNAL \col[1]~reg0_regout\ : std_logic;
SIGNAL \col[0]~reg0_regout\ : std_logic;
SIGNAL \state_debounce.01~regout\ : std_logic;
SIGNAL \temp[0]~2_combout\ : std_logic;
SIGNAL \WideOr11~2\ : std_logic;
SIGNAL \WideOr6~0\ : std_logic;
SIGNAL \WideOr6~1_combout\ : std_logic;
SIGNAL \WideOr6~3_combout\ : std_logic;
SIGNAL \WideOr6~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \state.001~regout\ : std_logic;
SIGNAL \WideNor4~combout\ : std_logic;
SIGNAL \state.010~regout\ : std_logic;
SIGNAL \WideNor5~0\ : std_logic;
SIGNAL \WideNor7~combout\ : std_logic;
SIGNAL \WideNor8~combout\ : std_logic;
SIGNAL \state.101~regout\ : std_logic;
SIGNAL \WideNor3~0_combout\ : std_logic;
SIGNAL \WideNor3~combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \state.011~regout\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \WideOr15~1_combout\ : std_logic;
SIGNAL \state.000~regout\ : std_logic;
SIGNAL \WideNor6~combout\ : std_logic;
SIGNAL \state.100~regout\ : std_logic;
SIGNAL \WideNor5~combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \lcd[0]~0_combout\ : std_logic;
SIGNAL \lcd[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr11~4_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \WideOr1~0\ : std_logic;
SIGNAL \WideOr5~2_combout\ : std_logic;
SIGNAL \WideOr5~3_combout\ : std_logic;
SIGNAL \WideOr8~3_combout\ : std_logic;
SIGNAL \WideOr5~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \lcd[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr4~3_combout\ : std_logic;
SIGNAL \WideOr4~2\ : std_logic;
SIGNAL \WideOr4~5_combout\ : std_logic;
SIGNAL \lcd[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \lcd[3]~reg0_regout\ : std_logic;
SIGNAL \WideOr2~1\ : std_logic;
SIGNAL \WideOr2~0\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr2~3_combout\ : std_logic;
SIGNAL \WideOr2~4_combout\ : std_logic;
SIGNAL \lcd[4]~reg0_regout\ : std_logic;
SIGNAL \WideOr1~2_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \lcd[5]~reg0_regout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \lcd[6]~reg0_regout\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \lcd[7]~reg0_regout\ : std_logic;
SIGNAL \WideOr11~3_combout\ : std_logic;
SIGNAL \WideOr11~8_combout\ : std_logic;
SIGNAL \WideOr11~5_combout\ : std_logic;
SIGNAL \WideOr11~6_combout\ : std_logic;
SIGNAL \led[0]~reg0_regout\ : std_logic;
SIGNAL \WideOr10~1_combout\ : std_logic;
SIGNAL \WideOr10~2_combout\ : std_logic;
SIGNAL \WideOr10~3_combout\ : std_logic;
SIGNAL \WideOr10~4_combout\ : std_logic;
SIGNAL \led[1]~reg0_regout\ : std_logic;
SIGNAL \WideOr9~6_combout\ : std_logic;
SIGNAL \WideOr9~3\ : std_logic;
SIGNAL \WideOr9~4_combout\ : std_logic;
SIGNAL \WideOr9~1_combout\ : std_logic;
SIGNAL \WideOr9~2_combout\ : std_logic;
SIGNAL \WideOr9~5_combout\ : std_logic;
SIGNAL \led[2]~reg0_regout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \WideOr8~4_combout\ : std_logic;
SIGNAL \WideOr8~5_combout\ : std_logic;
SIGNAL \led[3]~reg0_regout\ : std_logic;
SIGNAL \WideOr7~1_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \led[4]~reg0_regout\ : std_logic;
SIGNAL \lcd_rs~reg0_regout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \lcd_en~reg0_regout\ : std_logic;
SIGNAL count_cmd : std_logic_vector(2 DOWNTO 0);
SIGNAL \row~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL lcd_dat : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(18 DOWNTO 0);
SIGNAL temp : std_logic_vector(7 DOWNTO 0);
SIGNAL temp_row : std_logic_vector(3 DOWNTO 0);
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

-- Location: LC_X4_Y6_N1
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = ((!\rst~combout\)) # (!count(0))
-- \Add0~47\ = CARRY((count(0) & (\rst~combout\)))
-- \Add0~47COUT1_112\ = CARRY((count(0) & (\rst~combout\)))

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
	dataa => count(0),
	datab => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_112\);

-- Location: LC_X3_Y6_N6
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

-- Location: LC_X4_Y6_N5
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = \Add0~37\ $ ((((!\rst~combout\)) # (!count(4))))
-- \Add0~42\ = CARRY((count(4) & (\rst~combout\ & !\Add0~37\)))
-- \Add0~42COUT1_118\ = CARRY((count(4) & (\rst~combout\ & !\Add0~37\)))

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
	dataa => count(4),
	datab => \rst~combout\,
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_118\);

-- Location: LC_X3_Y6_N0
\count[4]\ : maxv_lcell
-- Equation(s):
-- count(4) = DFFEAS((((\Add0~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add0~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X3_Y6_N9
\count[5]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!count(3) & (!count(2) & (count[5] & !count(4))))
-- count(5) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(3),
	datab => count(2),
	datac => \Add0~25_combout\,
	datad => count(4),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => count(5));

-- Location: LC_X3_Y6_N1
\count~5\ : maxv_lcell
-- Equation(s):
-- \count~5_combout\ = (((\rst~combout\ & count(5))))

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
	datac => \rst~combout\,
	datad => count(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~5_combout\);

-- Location: LC_X4_Y6_N6
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (!\Add0~37\ & \Add0~42\) # (\Add0~37\ & \Add0~42COUT1_118\) $ (((\count~5_combout\ & (!\Equal0~5_combout\))))
-- \Add0~27\ = CARRY(((\Equal0~5_combout\) # (!\Add0~42\)) # (!\count~5_combout\))
-- \Add0~27COUT1_120\ = CARRY(((\Equal0~5_combout\) # (!\Add0~42COUT1_118\)) # (!\count~5_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "d2df",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count~5_combout\,
	datab => \Equal0~5_combout\,
	cin => \Add0~37\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_120\);

-- Location: LC_X4_Y6_N2
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = \Add0~47\ $ (((\rst~combout\ & (count(1)))))
-- \Add0~52\ = CARRY(((!\Add0~47\) # (!count(1))) # (!\rst~combout\))
-- \Add0~52COUT1_114\ = CARRY(((!\Add0~47COUT1_112\) # (!count(1))) # (!\rst~combout\))

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
	datab => count(1),
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_114\);

-- Location: LC_X5_Y6_N0
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = \Add0~57\ $ (((count(9) & (\rst~combout\))))
-- \Add0~72\ = CARRY(((!\Add0~57\) # (!\rst~combout\)) # (!count(9)))
-- \Add0~72COUT1_126\ = CARRY(((!\Add0~57\) # (!\rst~combout\)) # (!count(9)))

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
	dataa => count(9),
	datab => \rst~combout\,
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_126\);

-- Location: LC_X2_Y6_N2
\count[9]\ : maxv_lcell
-- Equation(s):
-- count(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~70_combout\, , , VCC)

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
	datac => \Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X5_Y6_N1
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (!\Add0~57\ & \Add0~72\) # (\Add0~57\ & \Add0~72COUT1_126\) $ ((((!\rst~combout\)) # (!count(10))))
-- \Add0~82\ = CARRY((count(10) & (\rst~combout\ & !\Add0~72\)))
-- \Add0~82COUT1_128\ = CARRY((count(10) & (\rst~combout\ & !\Add0~72COUT1_126\)))

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
	dataa => count(10),
	datab => \rst~combout\,
	cin => \Add0~57\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_128\);

-- Location: LC_X6_Y6_N1
\count[10]\ : maxv_lcell
-- Equation(s):
-- \Equal0~4\ = (!count(11) & (!count(12) & (!count[10] & count(13))))
-- count(10) = DFFEAS(\Equal0~4\, GLOBAL(\clk~combout\), VCC, , , \Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(11),
	datab => count(12),
	datac => \Add0~80_combout\,
	datad => count(13),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4\,
	regout => count(10));

-- Location: LC_X5_Y6_N2
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (!\Add0~57\ & \Add0~82\) # (\Add0~57\ & \Add0~82COUT1_128\) $ (((count(11) & (\rst~combout\))))
-- \Add0~87\ = CARRY(((!\Add0~82\) # (!\rst~combout\)) # (!count(11)))
-- \Add0~87COUT1_130\ = CARRY(((!\Add0~82COUT1_128\) # (!\rst~combout\)) # (!count(11)))

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
	dataa => count(11),
	datab => \rst~combout\,
	cin => \Add0~57\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_130\);

-- Location: LC_X5_Y6_N3
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (!\Add0~57\ & \Add0~87\) # (\Add0~57\ & \Add0~87COUT1_130\) $ ((((!\rst~combout\)) # (!count(12))))
-- \Add0~92\ = CARRY((count(12) & (\rst~combout\ & !\Add0~87\)))
-- \Add0~92COUT1_132\ = CARRY((count(12) & (\rst~combout\ & !\Add0~87COUT1_130\)))

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
	cin => \Add0~57\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_132\);

-- Location: LC_X6_Y6_N2
\count[12]\ : maxv_lcell
-- Equation(s):
-- count(12) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~90_combout\, , , VCC)

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
	regout => count(12));

-- Location: LC_X5_Y6_N4
\count[13]\ : maxv_lcell
-- Equation(s):
-- count(13) = DFFEAS((!\Add0~57\ & \Add0~92\) # (\Add0~57\ & \Add0~92COUT1_132\) $ (((!\Equal0~5_combout\ & (\count~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \Add0~77\ = CARRY((\Equal0~5_combout\) # ((!\Add0~92COUT1_132\) # (!\count~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b4bf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datab => \count~7_combout\,
	aclr => GND,
	cin => \Add0~57\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13),
	cout => \Add0~77\);

-- Location: LC_X6_Y6_N4
\count~7\ : maxv_lcell
-- Equation(s):
-- \count~7_combout\ = ((\rst~combout\ & ((count(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => count(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~7_combout\);

-- Location: LC_X5_Y6_N5
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = \Add0~77\ $ ((((!\rst~combout\)) # (!count(14))))
-- \Add0~17\ = CARRY((count(14) & (\rst~combout\ & !\Add0~77\)))
-- \Add0~17COUT1_134\ = CARRY((count(14) & (\rst~combout\ & !\Add0~77\)))

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
	dataa => count(14),
	datab => \rst~combout\,
	cin => \Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_134\);

-- Location: LC_X6_Y6_N7
\count[14]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (count(17) & (count(15) & (!count[14] & count(16))))
-- count(14) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(17),
	datab => count(15),
	datac => \Add0~15_combout\,
	datad => count(16),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => count(14));

-- Location: LC_X5_Y6_N6
\count[15]\ : maxv_lcell
-- Equation(s):
-- count(15) = DFFEAS((!\Add0~77\ & \Add0~17\) # (\Add0~77\ & \Add0~17COUT1_134\) $ (((!\Equal0~5_combout\ & (\count~2_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \Add0~2\ = CARRY((\Equal0~5_combout\) # ((!\Add0~17\) # (!\count~2_combout\)))
-- \Add0~2COUT1_136\ = CARRY((\Equal0~5_combout\) # ((!\Add0~17COUT1_134\) # (!\count~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b4bf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datab => \count~2_combout\,
	aclr => GND,
	cin => \Add0~77\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15),
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_136\);

-- Location: LC_X6_Y6_N8
\count~2\ : maxv_lcell
-- Equation(s):
-- \count~2_combout\ = ((\rst~combout\ & ((count(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => count(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~2_combout\);

-- Location: LC_X5_Y6_N7
\count[16]\ : maxv_lcell
-- Equation(s):
-- count(16) = DFFEAS((!\Add0~77\ & \Add0~2\) # (\Add0~77\ & \Add0~2COUT1_136\) $ (((\Equal0~5_combout\) # ((!\count~3_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \Add0~7\ = CARRY((!\Equal0~5_combout\ & (\count~3_combout\ & !\Add0~2\)))
-- \Add0~7COUT1_138\ = CARRY((!\Equal0~5_combout\ & (\count~3_combout\ & !\Add0~2COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "4b04",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datab => \count~3_combout\,
	aclr => GND,
	cin => \Add0~77\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16),
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_138\);

-- Location: LC_X6_Y6_N6
\count~3\ : maxv_lcell
-- Equation(s):
-- \count~3_combout\ = ((\rst~combout\ & ((count(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => count(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~3_combout\);

-- Location: LC_X5_Y6_N8
\count[17]\ : maxv_lcell
-- Equation(s):
-- count(17) = DFFEAS((!\Add0~77\ & \Add0~7\) # (\Add0~77\ & \Add0~7COUT1_138\) $ (((!\Equal0~5_combout\ & (\count~4_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \Add0~12\ = CARRY((\Equal0~5_combout\) # ((!\Add0~7\) # (!\count~4_combout\)))
-- \Add0~12COUT1_140\ = CARRY((\Equal0~5_combout\) # ((!\Add0~7COUT1_138\) # (!\count~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "b4bf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datab => \count~4_combout\,
	aclr => GND,
	cin => \Add0~77\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17),
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_140\);

-- Location: LC_X6_Y6_N5
\count~4\ : maxv_lcell
-- Equation(s):
-- \count~4_combout\ = (((count(17) & \rst~combout\)))

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
	datac => count(17),
	datad => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~4_combout\);

-- Location: LC_X5_Y6_N9
\count[18]\ : maxv_lcell
-- Equation(s):
-- count(18) = DFFEAS(((!\Add0~77\ & \Add0~12\) # (\Add0~77\ & \Add0~12COUT1_140\) $ (((\Equal0~5_combout\) # (!\count~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal0~5_combout\,
	datad => \count~0_combout\,
	aclr => GND,
	cin => \Add0~77\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X3_Y6_N3
\count~0\ : maxv_lcell
-- Equation(s):
-- \count~0_combout\ = (((\rst~combout\ & count(18))))

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
	datac => \rst~combout\,
	datad => count(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~0_combout\);

-- Location: LC_X3_Y6_N4
\count[1]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (!count(0) & (\Equal0~1\ & (!count[1] & \count~0_combout\)))
-- count(1) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(0),
	datab => \Equal0~1\,
	datac => \Add0~50_combout\,
	datad => \count~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => count(1));

-- Location: LC_X4_Y6_N3
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = \Add0~52\ $ ((((!count(2))) # (!\rst~combout\)))
-- \Add0~32\ = CARRY((\rst~combout\ & (count(2) & !\Add0~52\)))
-- \Add0~32COUT1_116\ = CARRY((\rst~combout\ & (count(2) & !\Add0~52COUT1_114\)))

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
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_116\);

-- Location: LC_X3_Y6_N7
\count[2]\ : maxv_lcell
-- Equation(s):
-- count(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~30_combout\, , , VCC)

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
	regout => count(2));

-- Location: LC_X4_Y6_N4
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = \Add0~32\ $ (((count(3) & (\rst~combout\))))
-- \Add0~37\ = CARRY(((!\Add0~32COUT1_116\) # (!\rst~combout\)) # (!count(3)))

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
	dataa => count(3),
	datab => \rst~combout\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X3_Y6_N8
\count[3]\ : maxv_lcell
-- Equation(s):
-- count(3) = DFFEAS((((\Add0~35_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X4_Y6_N7
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (!\Add0~37\ & \Add0~27\) # (\Add0~37\ & \Add0~27COUT1_120\) $ ((((!count(6))) # (!\rst~combout\)))
-- \Add0~62\ = CARRY((\rst~combout\ & (count(6) & !\Add0~27\)))
-- \Add0~62COUT1_122\ = CARRY((\rst~combout\ & (count(6) & !\Add0~27COUT1_120\)))

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
	cin => \Add0~37\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_122\);

-- Location: LC_X3_Y6_N2
\count[6]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (!count(7) & (count(8) & (!count[6] & !count(9))))
-- count(6) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => count(7),
	datab => count(8),
	datac => \Add0~60_combout\,
	datad => count(9),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => count(6));

-- Location: LC_X4_Y6_N8
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (!\Add0~37\ & \Add0~62\) # (\Add0~37\ & \Add0~62COUT1_122\) $ (((\rst~combout\ & (count(7)))))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!count(7))) # (!\rst~combout\))
-- \Add0~67COUT1_124\ = CARRY(((!\Add0~62COUT1_122\) # (!count(7))) # (!\rst~combout\))

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
	cin => \Add0~37\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_124\);

-- Location: LC_X3_Y6_N5
\count[7]\ : maxv_lcell
-- Equation(s):
-- count(7) = DFFEAS((((\Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X4_Y6_N9
\count[8]\ : maxv_lcell
-- Equation(s):
-- count(8) = DFFEAS((!\Add0~37\ & \Add0~67\) # (\Add0~37\ & \Add0~67COUT1_124\) $ ((((\Equal0~5_combout\)) # (!\count~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )
-- \Add0~57\ = CARRY((\count~6_combout\ & (!\Equal0~5_combout\ & !\Add0~67COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "2d02",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \count~6_combout\,
	datab => \Equal0~5_combout\,
	aclr => GND,
	cin => \Add0~37\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8),
	cout => \Add0~57\);

-- Location: LC_X6_Y6_N9
\count~6\ : maxv_lcell
-- Equation(s):
-- \count~6_combout\ = ((\rst~combout\ & ((count(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => count(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \count~6_combout\);

-- Location: LC_X6_Y6_N3
\count[11]\ : maxv_lcell
-- Equation(s):
-- count(11) = DFFEAS((((\Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	regout => count(11));

-- Location: LC_X4_Y6_N0
\Equal0~5\ : maxv_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4\ & (\Equal0~3\ & (\Equal0~0\ & \Equal0~2\)))

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
	dataa => \Equal0~4\,
	datab => \Equal0~3\,
	datac => \Equal0~0\,
	datad => \Equal0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X12_Y3_N2
temp_clk : maxv_lcell
-- Equation(s):
-- \temp_clk~regout\ = DFFEAS(((\Equal0~5_combout\ $ (\temp_clk~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datac => \Equal0~5_combout\,
	datad => \temp_clk~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \temp_clk~regout\);

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

-- Location: LC_X11_Y7_N7
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (\row~combout\(2)) # ((\row~combout\(0)) # ((\row~combout\(3)) # (\row~combout\(1))))

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
	combout => \Equal2~0_combout\);

-- Location: LC_X11_Y7_N2
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

-- Location: LC_X11_Y7_N3
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

-- Location: LC_X11_Y7_N5
\temp_row[1]\ : maxv_lcell
-- Equation(s):
-- \temp[0]~0\ = (\row~combout\(1) & (temp_row[1] & (\row~combout\(0) $ (!temp_row(0))))) # (!\row~combout\(1) & (!temp_row[1] & (\row~combout\(0) $ (!temp_row(0)))))
-- temp_row(1) = DFFEAS(\temp[0]~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp_row[3]~1_combout\, \row~combout\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \row~combout\(1),
	datab => \row~combout\(0),
	datac => \row~combout\(1),
	datad => temp_row(0),
	aclr => GND,
	sload => VCC,
	ena => \temp_row[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp[0]~0\,
	regout => temp_row(1));

-- Location: LC_X11_Y7_N8
\state_debounce.00\ : maxv_lcell
-- Equation(s):
-- \state_debounce.00~regout\ = DFFEAS((\state_debounce.00~regout\ & (\temp[0]~1\ & ((\temp[0]~0\)))) # (!\state_debounce.00~regout\ & (((\Equal2~0_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

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
	dataa => \temp[0]~1\,
	datab => \Equal2~0_combout\,
	datac => \temp[0]~0\,
	datad => \state_debounce.00~regout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_debounce.00~regout\);

-- Location: LC_X11_Y7_N6
\temp_row[3]~1\ : maxv_lcell
-- Equation(s):
-- \temp_row[3]~1_combout\ = ((\rst~combout\ & (\Equal2~0_combout\ & !\state_debounce.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datac => \Equal2~0_combout\,
	datad => \state_debounce.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_row[3]~1_combout\);

-- Location: LC_X11_Y7_N1
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

-- Location: LC_X11_Y7_N0
\col[0]~0\ : maxv_lcell
-- Equation(s):
-- \col[0]~0_combout\ = (((!\Equal2~0_combout\ & !\state_debounce.00~regout\)))

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
	datac => \Equal2~0_combout\,
	datad => \state_debounce.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \col[0]~0_combout\);

-- Location: LC_X11_Y8_N2
\col[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[3]~reg0_regout\ = DFFEAS((\col[1]~reg0_regout\) # (((\col[2]~reg0_regout\) # (!\col[3]~reg0_regout\)) # (!\col[0]~reg0_regout\)), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , \col[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \col[1]~reg0_regout\,
	datab => \col[0]~reg0_regout\,
	datac => \col[2]~reg0_regout\,
	datad => \col[3]~reg0_regout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[3]~reg0_regout\);

-- Location: LC_X11_Y8_N5
\col[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[2]~reg0_regout\ = DFFEAS((((!\col[3]~reg0_regout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , \col[0]~0_combout\, , , , )

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
	datac => \col[3]~reg0_regout\,
	aclr => \ALT_INV_rst~combout\,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[2]~reg0_regout\);

-- Location: LC_X11_Y8_N6
\col[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \col[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , \col[0]~0_combout\, \col[2]~reg0_regout\, , , VCC)

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
	datac => \col[2]~reg0_regout\,
	aclr => \ALT_INV_rst~combout\,
	sload => VCC,
	ena => \col[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \col[1]~reg0_regout\);

-- Location: LC_X11_Y8_N0
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

-- Location: LC_X11_Y7_N9
\state_debounce.01\ : maxv_lcell
-- Equation(s):
-- \state_debounce.01~regout\ = DFFEAS((((\Equal2~0_combout\ & !\state_debounce.00~regout\))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

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
	clk => \temp_clk~regout\,
	datac => \Equal2~0_combout\,
	datad => \state_debounce.00~regout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state_debounce.01~regout\);

-- Location: LC_X11_Y7_N4
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

-- Location: LC_X13_Y7_N5
\temp[3]\ : maxv_lcell
-- Equation(s):
-- temp(3) = DFFEAS((((!\col[3]~reg0_regout\))), GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, , , , )

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
	datac => \col[3]~reg0_regout\,
	aclr => GND,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp(3));

-- Location: LC_X13_Y7_N9
\temp[5]\ : maxv_lcell
-- Equation(s):
-- \WideOr4~2\ = (temp(3) & (!temp(4) & (temp[5] & !temp(0)))) # (!temp(3) & (temp(4) & (!temp[5] & temp(0))))
-- temp(5) = DFFEAS(\WideOr4~2\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0420",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(3),
	datab => temp(4),
	datac => temp_row(1),
	datad => temp(0),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~2\,
	regout => temp(5));

-- Location: LC_X13_Y7_N2
\temp[0]\ : maxv_lcell
-- Equation(s):
-- \WideOr11~2\ = (((!temp[0] & !temp(5))))
-- temp(0) = DFFEAS(\WideOr11~2\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, \col[0]~reg0_regout\, , , VCC)

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
	combout => \WideOr11~2\,
	regout => temp(0));

-- Location: LC_X13_Y7_N7
\temp[4]\ : maxv_lcell
-- Equation(s):
-- \WideOr2~0\ = (((!temp[4] & !temp(0))))
-- temp(4) = DFFEAS(\WideOr2~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(0), , , VCC)

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
	combout => \WideOr2~0\,
	regout => temp(4));

-- Location: LC_X13_Y7_N3
\temp[6]\ : maxv_lcell
-- Equation(s):
-- \WideOr1~0\ = ((!temp(4) & (temp[6] & !temp(5))))
-- temp(6) = DFFEAS(\WideOr1~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => temp(4),
	datac => temp_row(2),
	datad => temp(5),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~0\,
	regout => temp(6));

-- Location: LC_X13_Y7_N6
\temp[1]\ : maxv_lcell
-- Equation(s):
-- \WideOr9~3\ = (temp(7) & (!temp(5) & (temp(2) $ (temp[1])))) # (!temp(7) & (temp(5) & (temp(2) $ (temp[1]))))
-- temp(1) = DFFEAS(\WideOr9~3\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, \col[1]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(7),
	datab => temp(2),
	datac => \col[1]~reg0_regout\,
	datad => temp(5),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~3\,
	regout => temp(1));

-- Location: LC_X13_Y7_N1
\temp[2]\ : maxv_lcell
-- Equation(s):
-- \WideOr6~0\ = (temp(1) & (temp(4) & (!temp[2] & !temp(6)))) # (!temp(1) & (!temp(4) & (temp[2] & temp(6))))
-- temp(2) = DFFEAS(\WideOr6~0\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, \col[2]~reg0_regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(1),
	datab => temp(4),
	datac => \col[2]~reg0_regout\,
	datad => temp(6),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~0\,
	regout => temp(2));

-- Location: LC_X13_Y7_N0
\temp[7]\ : maxv_lcell
-- Equation(s):
-- \WideOr2~1\ = (!temp[7] & ((temp(3) & (!temp(2) & !temp(1))) # (!temp(3) & (temp(2) $ (temp(1))))))
-- temp(7) = DFFEAS(\WideOr2~1\, GLOBAL(\temp_clk~regout\), VCC, , \temp[0]~2_combout\, temp_row(3), , , VCC)

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
	dataa => temp(3),
	datab => temp(2),
	datac => temp_row(3),
	datad => temp(1),
	aclr => GND,
	sload => VCC,
	ena => \temp[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~1\,
	regout => temp(7));

-- Location: LC_X13_Y7_N8
\WideOr6~1\ : maxv_lcell
-- Equation(s):
-- \WideOr6~1_combout\ = (!temp(3) & (\WideOr11~2\ & (!temp(7) & \WideOr6~0\)))

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
	dataa => temp(3),
	datab => \WideOr11~2\,
	datac => temp(7),
	datad => \WideOr6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~1_combout\);

-- Location: LC_X14_Y6_N1
\WideOr6~3\ : maxv_lcell
-- Equation(s):
-- \WideOr6~3_combout\ = ((temp(1) & (!temp(3) & !temp(0))) # (!temp(1) & (temp(3) $ (temp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "033c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => temp(1),
	datac => temp(3),
	datad => temp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~3_combout\);

-- Location: LC_X14_Y6_N2
\WideOr6~4\ : maxv_lcell
-- Equation(s):
-- \WideOr6~4_combout\ = (!temp(2) & (\WideOr6~3_combout\ & (temp(5) $ (temp(7)))))

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
	dataa => temp(5),
	datab => temp(7),
	datac => temp(2),
	datad => \WideOr6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~4_combout\);

-- Location: LC_X14_Y6_N3
\lcd_dat[0]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(0) = DFFEAS((\WideOr6~1_combout\) # ((!temp(4) & (!temp(6) & \WideOr6~4_combout\))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(4),
	datab => temp(6),
	datac => \WideOr6~1_combout\,
	datad => \WideOr6~4_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(0));

-- Location: LC_X13_Y5_N6
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (((count_cmd(1) & count_cmd(0))))

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
	datac => count_cmd(1),
	datad => count_cmd(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X10_Y5_N7
\count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- count_cmd(2) = DFFEAS((count_cmd(2) & (((!\Mux0~0_combout\ & \WideNor5~combout\)) # (!\WideOr15~1_combout\))) # (!count_cmd(2) & (\Mux0~0_combout\ & ((\WideNor5~combout\)))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \Mux0~0_combout\,
	datab => count_cmd(2),
	datac => \WideOr15~1_combout\,
	datad => \WideNor5~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_cmd(2));

-- Location: LC_X10_Y5_N0
\Selector19~0\ : maxv_lcell
-- Equation(s):
-- \Selector19~0_combout\ = (!\WideNor3~combout\ & (((!count_cmd(1) & !count_cmd(0))) # (!count_cmd(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0037",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count_cmd(1),
	datab => count_cmd(2),
	datac => count_cmd(0),
	datad => \WideNor3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector19~0_combout\);

-- Location: LC_X10_Y5_N3
\state.001\ : maxv_lcell
-- Equation(s):
-- \WideNor5~0\ = ((\state.000~regout\ & (!state.001 & !\state.011~regout\)))
-- \state.001~regout\ = DFFEAS(\WideNor5~0\, GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , \Selector19~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => \state.000~regout\,
	datac => \Selector19~0_combout\,
	datad => \state.011~regout\,
	aclr => \ALT_INV_rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor5~0\,
	regout => \state.001~regout\);

-- Location: LC_X13_Y5_N4
WideNor4 : maxv_lcell
-- Equation(s):
-- \WideNor4~combout\ = (((\state.011~regout\) # (!\WideNor3~0_combout\)) # (!\state.001~regout\)) # (!\state.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.000~regout\,
	datab => \state.001~regout\,
	datac => \WideNor3~0_combout\,
	datad => \state.011~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor4~combout\);

-- Location: LC_X11_Y5_N4
\state.010\ : maxv_lcell
-- Equation(s):
-- \state.010~regout\ = DFFEAS((((!\WideNor4~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

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
	datad => \WideNor4~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.010~regout\);

-- Location: LC_X11_Y5_N2
WideNor7 : maxv_lcell
-- Equation(s):
-- \WideNor7~combout\ = (\state.010~regout\) # (((\state.101~regout\) # (!\WideNor5~0\)) # (!\state.100~regout\))

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
	dataa => \state.010~regout\,
	datab => \state.100~regout\,
	datac => \state.101~regout\,
	datad => \WideNor5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor7~combout\);

-- Location: LC_X11_Y5_N1
WideNor8 : maxv_lcell
-- Equation(s):
-- \WideNor8~combout\ = (\state.010~regout\) # ((\state.100~regout\) # ((!\WideNor5~0\) # (!\state.101~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.010~regout\,
	datab => \state.100~regout\,
	datac => \state.101~regout\,
	datad => \WideNor5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor8~combout\);

-- Location: LC_X11_Y5_N9
\state.101\ : maxv_lcell
-- Equation(s):
-- \state.101~regout\ = DFFEAS((((!\state_debounce.01~regout\ & !\WideNor8~combout\)) # (!\WideNor7~combout\)), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => \state_debounce.01~regout\,
	datac => \WideNor7~combout\,
	datad => \WideNor8~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.101~regout\);

-- Location: LC_X11_Y5_N5
\WideNor3~0\ : maxv_lcell
-- Equation(s):
-- \WideNor3~0_combout\ = ((!\state.100~regout\ & (!\state.010~regout\ & !\state.101~regout\)))

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
	datab => \state.100~regout\,
	datac => \state.010~regout\,
	datad => \state.101~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor3~0_combout\);

-- Location: LC_X10_Y5_N1
WideNor3 : maxv_lcell
-- Equation(s):
-- \WideNor3~combout\ = (\state.011~regout\) # ((\state.000~regout\) # ((\state.001~regout\) # (!\WideNor3~0_combout\)))

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
	datab => \state.000~regout\,
	datac => \state.001~regout\,
	datad => \WideNor3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor3~combout\);

-- Location: LC_X10_Y5_N2
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

-- Location: LC_X10_Y5_N8
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

-- Location: LC_X11_Y5_N8
\WideOr15~0\ : maxv_lcell
-- Equation(s):
-- \WideOr15~0_combout\ = (\state.011~regout\) # ((\state.000~regout\ $ (\state.001~regout\)) # (!\WideNor3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.000~regout\,
	datab => \state.011~regout\,
	datac => \WideNor3~0_combout\,
	datad => \state.001~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr15~0_combout\);

-- Location: LC_X11_Y5_N0
\WideOr15~1\ : maxv_lcell
-- Equation(s):
-- \WideOr15~1_combout\ = (\WideOr15~0_combout\ & (\WideNor8~combout\ & (\WideNor6~combout\ & \WideNor7~combout\)))

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
	dataa => \WideOr15~0_combout\,
	datab => \WideNor8~combout\,
	datac => \WideNor6~combout\,
	datad => \WideNor7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr15~1_combout\);

-- Location: LC_X10_Y5_N9
\state.000\ : maxv_lcell
-- Equation(s):
-- \state.000~regout\ = DFFEAS((((!\WideOr15~1_combout\ & !\WideNor5~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datac => \WideOr15~1_combout\,
	datad => \WideNor5~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.000~regout\);

-- Location: LC_X11_Y5_N6
WideNor6 : maxv_lcell
-- Equation(s):
-- \WideNor6~combout\ = (((\state.001~regout\) # (!\WideNor3~0_combout\)) # (!\state.011~regout\)) # (!\state.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.000~regout\,
	datab => \state.011~regout\,
	datac => \state.001~regout\,
	datad => \WideNor3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor6~combout\);

-- Location: LC_X11_Y5_N7
\state.100\ : maxv_lcell
-- Equation(s):
-- \state.100~regout\ = DFFEAS((((!\WideNor6~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

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
	datac => \WideNor6~combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.100~regout\);

-- Location: LC_X10_Y5_N6
WideNor5 : maxv_lcell
-- Equation(s):
-- \WideNor5~combout\ = (!\state.100~regout\ & (\state.010~regout\ & (!\state.101~regout\ & \WideNor5~0\)))

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
	dataa => \state.100~regout\,
	datab => \state.010~regout\,
	datac => \state.101~regout\,
	datad => \WideNor5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideNor5~combout\);

-- Location: LC_X13_Y5_N9
\count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- count_cmd(0) = DFFEAS(((count_cmd(0) & ((!\WideOr15~1_combout\))) # (!count_cmd(0) & (\WideNor5~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => count_cmd(0),
	datac => \WideNor5~combout\,
	datad => \WideOr15~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_cmd(0));

-- Location: LC_X9_Y5_N9
\count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- count_cmd(1) = DFFEAS((count_cmd(1) & (((!count_cmd(0) & \WideNor5~combout\)) # (!\WideOr15~1_combout\))) # (!count_cmd(1) & (count_cmd(0) & (\WideNor5~combout\))), GLOBAL(\temp_clk~regout\), GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => count_cmd(1),
	datac => \WideNor5~combout\,
	datad => \WideOr15~1_combout\,
	aclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count_cmd(1));

-- Location: LC_X13_Y5_N7
\Selector14~0\ : maxv_lcell
-- Equation(s):
-- \Selector14~0_combout\ = ((!count_cmd(1) & ((!count_cmd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_cmd(1),
	datad => count_cmd(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~0_combout\);

-- Location: LC_X12_Y5_N7
\WideOr12~0\ : maxv_lcell
-- Equation(s):
-- \WideOr12~0_combout\ = ((\WideNor6~combout\ & (\WideNor8~combout\ & \WideNor7~combout\)))

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
	datac => \WideNor8~combout\,
	datad => \WideNor7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr12~0_combout\);

-- Location: LC_X11_Y5_N3
\lcd[0]~0\ : maxv_lcell
-- Equation(s):
-- \lcd[0]~0_combout\ = (\rst~combout\ & (!\Selector17~0_combout\ & ((\WideNor5~combout\) # (!\WideOr15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \WideNor5~combout\,
	datac => \WideOr15~1_combout\,
	datad => \Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd[0]~0_combout\);

-- Location: LC_X10_Y5_N4
\lcd[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[0]~reg0_regout\ = DFFEAS((\WideOr12~0_combout\ & (((\Selector14~0_combout\ & count_cmd(0))))) # (!\WideOr12~0_combout\ & (lcd_dat(0))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

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
	dataa => lcd_dat(0),
	datab => \Selector14~0_combout\,
	datac => count_cmd(0),
	datad => \WideOr12~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[0]~reg0_regout\);

-- Location: LC_X13_Y6_N0
\WideOr11~4\ : maxv_lcell
-- Equation(s):
-- \WideOr11~4_combout\ = ((!temp(3) & (!temp(4) & !temp(6))))

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
	datab => temp(3),
	datac => temp(4),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr11~4_combout\);

-- Location: LC_X12_Y6_N4
\WideOr0~1\ : maxv_lcell
-- Equation(s):
-- \WideOr0~1_combout\ = ((!temp(2) & (temp(0) & !temp(1))))

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
	datab => temp(2),
	datac => temp(0),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~1_combout\);

-- Location: LC_X12_Y6_N9
\WideOr5~0\ : maxv_lcell
-- Equation(s):
-- \WideOr5~0_combout\ = (!temp(5) & (!temp(0) & (temp(1) $ (temp(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => temp(5),
	datac => temp(0),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~0_combout\);

-- Location: LC_X12_Y6_N6
\WideOr5~1\ : maxv_lcell
-- Equation(s):
-- \WideOr5~1_combout\ = (temp(7) & (((\WideOr5~0_combout\)))) # (!temp(7) & (temp(5) & (\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(5),
	datac => \WideOr0~1_combout\,
	datad => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~1_combout\);

-- Location: LC_X12_Y7_N9
\WideOr5~2\ : maxv_lcell
-- Equation(s):
-- \WideOr5~2_combout\ = (!temp(3) & (!temp(7) & (temp(0) $ (temp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0102",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(3),
	datac => temp(7),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~2_combout\);

-- Location: LC_X12_Y7_N7
\WideOr5~3\ : maxv_lcell
-- Equation(s):
-- \WideOr5~3_combout\ = (temp(4) & (!temp(5) & (temp(3) $ (temp(1))))) # (!temp(4) & (temp(3) & (temp(5) & !temp(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0248",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(3),
	datac => temp(5),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~3_combout\);

-- Location: LC_X12_Y7_N4
\WideOr8~3\ : maxv_lcell
-- Equation(s):
-- \WideOr8~3_combout\ = ((!temp(6) & (!temp(0) & !temp(7))))

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
	datad => temp(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~3_combout\);

-- Location: LC_X12_Y7_N5
\WideOr5~4\ : maxv_lcell
-- Equation(s):
-- \WideOr5~4_combout\ = (\WideOr1~0\ & ((\WideOr5~2_combout\) # ((\WideOr5~3_combout\ & \WideOr8~3_combout\)))) # (!\WideOr1~0\ & (((\WideOr5~3_combout\ & \WideOr8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr1~0\,
	datab => \WideOr5~2_combout\,
	datac => \WideOr5~3_combout\,
	datad => \WideOr8~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~4_combout\);

-- Location: LC_X12_Y6_N5
\lcd_dat[1]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(1) = DFFEAS((\WideOr11~4_combout\ & ((\WideOr5~1_combout\) # ((!temp(2) & \WideOr5~4_combout\)))) # (!\WideOr11~4_combout\ & (!temp(2) & ((\WideOr5~4_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr11~4_combout\,
	datab => temp(2),
	datac => \WideOr5~1_combout\,
	datad => \WideOr5~4_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(1));

-- Location: LC_X13_Y5_N8
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (count_cmd(1) $ (((count_cmd(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count_cmd(1),
	datad => count_cmd(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X12_Y5_N2
\lcd[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[1]~reg0_regout\ = DFFEAS((\WideOr12~0_combout\ & (!count_cmd(0) & ((\Mux4~0_combout\)))) # (!\WideOr12~0_combout\ & (((lcd_dat(1))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => lcd_dat(1),
	datac => \WideOr12~0_combout\,
	datad => \Mux4~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[1]~reg0_regout\);

-- Location: LC_X14_Y6_N6
\WideOr4~3\ : maxv_lcell
-- Equation(s):
-- \WideOr4~3_combout\ = (!temp(0) & ((temp(2) & (!temp(1) & !temp(3))) # (!temp(2) & (temp(1) $ (temp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0016",
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
	datad => temp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~3_combout\);

-- Location: LC_X14_Y6_N7
\WideOr4~5\ : maxv_lcell
-- Equation(s):
-- \WideOr4~5_combout\ = (!temp(6) & (!temp(2) & (!temp(1) & \WideOr4~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
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
	datad => \WideOr4~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~5_combout\);

-- Location: LC_X14_Y6_N8
\lcd_dat[2]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(2) = DFFEAS((!temp(7) & ((\WideOr4~5_combout\) # ((\WideOr4~3_combout\ & \WideOr1~0\)))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3320",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr4~3_combout\,
	datab => temp(7),
	datac => \WideOr1~0\,
	datad => \WideOr4~5_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(2));

-- Location: LC_X10_Y5_N5
\lcd[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[2]~reg0_regout\ = DFFEAS((\WideOr12~0_combout\ & (((\Mux4~0_combout\ & !count_cmd(0))))) # (!\WideOr12~0_combout\ & (lcd_dat(2))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0caa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => lcd_dat(2),
	datab => \Mux4~0_combout\,
	datac => count_cmd(0),
	datad => \WideOr12~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[2]~reg0_regout\);

-- Location: LC_X12_Y7_N1
\WideOr3~1\ : maxv_lcell
-- Equation(s):
-- \WideOr3~1_combout\ = (!temp(3) & (temp(5) & (temp(2) $ (temp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(2),
	datac => temp(5),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~1_combout\);

-- Location: LC_X14_Y7_N9
\WideOr0~0\ : maxv_lcell
-- Equation(s):
-- \WideOr0~0_combout\ = (!temp(2) & (((!temp(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datac => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~0_combout\);

-- Location: LC_X12_Y7_N8
\WideOr3~0\ : maxv_lcell
-- Equation(s):
-- \WideOr3~0_combout\ = (temp(3) & (!temp(5) & (\WideOr0~0_combout\ & temp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(5),
	datac => \WideOr0~0_combout\,
	datad => temp(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~0_combout\);

-- Location: LC_X12_Y7_N6
\lcd_dat[3]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(3) = DFFEAS((\WideOr8~3_combout\ & ((\WideOr3~0_combout\) # ((!temp(4) & \WideOr3~1_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f040",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(4),
	datab => \WideOr3~1_combout\,
	datac => \WideOr8~3_combout\,
	datad => \WideOr3~0_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(3));

-- Location: LC_X12_Y5_N9
\lcd[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[3]~reg0_regout\ = DFFEAS((\WideOr12~0_combout\ & (!count_cmd(0) & ((!count_cmd(2))))) # (!\WideOr12~0_combout\ & (((lcd_dat(3))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c5c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => lcd_dat(3),
	datac => \WideOr12~0_combout\,
	datad => count_cmd(2),
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[3]~reg0_regout\);

-- Location: LC_X14_Y5_N4
\WideOr2~2\ : maxv_lcell
-- Equation(s):
-- \WideOr2~2_combout\ = (\WideOr2~1\ & (\WideOr2~0\ & (temp(6) $ (temp(5)))))

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
	dataa => temp(6),
	datab => temp(5),
	datac => \WideOr2~1\,
	datad => \WideOr2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~2_combout\);

-- Location: LC_X14_Y7_N6
\WideOr9~0\ : maxv_lcell
-- Equation(s):
-- \WideOr9~0_combout\ = ((!temp(1) & (!temp(3) & !temp(7))))

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
	datab => temp(1),
	datac => temp(3),
	datad => temp(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~0_combout\);

-- Location: LC_X14_Y6_N5
\WideOr2~3\ : maxv_lcell
-- Equation(s):
-- \WideOr2~3_combout\ = (temp(7) & ((temp(2) & (!temp(3) & !temp(1))) # (!temp(2) & (temp(3) $ (temp(1))))))

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
	datac => temp(3),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~3_combout\);

-- Location: LC_X14_Y5_N2
\WideOr2~4\ : maxv_lcell
-- Equation(s):
-- \WideOr2~4_combout\ = (temp(4) & (temp(2) & (\WideOr9~0_combout\))) # (!temp(4) & (((\WideOr2~3_combout\))))

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
	datab => \WideOr9~0_combout\,
	datac => temp(4),
	datad => \WideOr2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~4_combout\);

-- Location: LC_X14_Y5_N3
\lcd_dat[4]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(4) = DFFEAS((\WideOr2~2_combout\) # ((!temp(6) & (\WideOr11~2\ & \WideOr2~4_combout\))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(6),
	datab => \WideOr11~2\,
	datac => \WideOr2~2_combout\,
	datad => \WideOr2~4_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(4));

-- Location: LC_X12_Y5_N3
\lcd[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[4]~reg0_regout\ = DFFEAS((\WideOr12~0_combout\ & (!count_cmd(0) & ((\Selector14~0_combout\)))) # (!\WideOr12~0_combout\ & (((lcd_dat(4))))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7430",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => count_cmd(0),
	datab => \WideOr12~0_combout\,
	datac => lcd_dat(4),
	datad => \Selector14~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[4]~reg0_regout\);

-- Location: LC_X14_Y5_N5
\WideOr1~2\ : maxv_lcell
-- Equation(s):
-- \WideOr1~2_combout\ = (!temp(4) & (((!temp(6) & !temp(5)))))

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
	dataa => temp(4),
	datac => temp(6),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~2_combout\);

-- Location: LC_X14_Y5_N0
\WideOr1~1\ : maxv_lcell
-- Equation(s):
-- \WideOr1~1_combout\ = (\WideOr2~1\ & ((temp(4) & (!temp(6) & !temp(5))) # (!temp(4) & (temp(6) $ (temp(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(6),
	datac => \WideOr2~1\,
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~1_combout\);

-- Location: LC_X14_Y5_N6
\lcd_dat[5]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(5) = DFFEAS((!temp(0) & ((\WideOr1~1_combout\) # ((\WideOr1~2_combout\ & \WideOr2~3_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3230",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr1~2_combout\,
	datab => temp(0),
	datac => \WideOr1~1_combout\,
	datad => \WideOr2~3_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(5));

-- Location: LC_X12_Y5_N0
\lcd[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[5]~reg0_regout\ = DFFEAS((\WideOr12~0_combout\ & (((!count_cmd(0) & \Selector14~0_combout\)))) # (!\WideOr12~0_combout\ & (lcd_dat(5))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => lcd_dat(5),
	datab => count_cmd(0),
	datac => \WideOr12~0_combout\,
	datad => \Selector14~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[5]~reg0_regout\);

-- Location: LC_X12_Y6_N8
\WideOr0~2\ : maxv_lcell
-- Equation(s):
-- \WideOr0~2_combout\ = (temp(4) & (!temp(6) & (!temp(7) & !temp(5)))) # (!temp(4) & ((temp(6) & (!temp(7) & !temp(5))) # (!temp(6) & (temp(7) $ (temp(5))))))

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
	datab => temp(6),
	datac => temp(7),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~2_combout\);

-- Location: LC_X12_Y6_N2
\lcd_dat[6]\ : maxv_lcell
-- Equation(s):
-- lcd_dat(6) = DFFEAS((!temp(3) & (((\WideOr0~1_combout\ & \WideOr0~2_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , , , , !\rst~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => temp(3),
	datac => \WideOr0~1_combout\,
	datad => \WideOr0~2_combout\,
	aclr => GND,
	sclr => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_dat(6));

-- Location: LC_X13_Y5_N5
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

-- Location: LC_X12_Y5_N1
\lcd[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[6]~reg0_regout\ = DFFEAS((lcd_dat(6) & (\WideNor3~combout\ & (!\WideOr12~0_combout\ & \Selector8~0_combout\))), GLOBAL(\temp_clk~regout\), VCC, , \lcd[0]~0_combout\, , , , )

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
	dataa => lcd_dat(6),
	datab => \WideNor3~combout\,
	datac => \WideOr12~0_combout\,
	datad => \Selector8~0_combout\,
	aclr => GND,
	ena => \lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[6]~reg0_regout\);

-- Location: LC_X12_Y5_N8
\always3~0\ : maxv_lcell
-- Equation(s):
-- \always3~0_combout\ = (((\WideNor5~combout\) # (!\WideOr12~0_combout\))) # (!\WideOr15~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr15~0_combout\,
	datac => \WideNor5~combout\,
	datad => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always3~0_combout\);

-- Location: LC_X13_Y5_N2
\Selector7~0\ : maxv_lcell
-- Equation(s):
-- \Selector7~0_combout\ = (\Mux0~0_combout\ & ((\WideNor5~combout\) # ((\Selector19~0_combout\) # (!\WideNor4~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \WideNor5~combout\,
	datac => \WideNor4~combout\,
	datad => \Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector7~0_combout\);

-- Location: LC_X13_Y5_N3
\lcd[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd[7]~reg0_regout\ = DFFEAS((\Selector7~0_combout\) # ((\lcd[7]~reg0_regout\ & ((\Selector17~0_combout\) # (!\always3~0_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

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
	clk => \temp_clk~regout\,
	dataa => \lcd[7]~reg0_regout\,
	datab => \Selector17~0_combout\,
	datac => \always3~0_combout\,
	datad => \Selector7~0_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd[7]~reg0_regout\);

-- Location: LC_X14_Y6_N4
\WideOr11~3\ : maxv_lcell
-- Equation(s):
-- \WideOr11~3_combout\ = (temp(6) & (!temp(2) & (temp(3) $ (temp(1))))) # (!temp(6) & (!temp(1) & (temp(2) $ (temp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1406",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(3),
	datac => temp(1),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr11~3_combout\);

-- Location: LC_X13_Y6_N6
\WideOr11~8\ : maxv_lcell
-- Equation(s):
-- \WideOr11~8_combout\ = (!temp(0) & (!temp(5) & (temp(4) $ (temp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0006",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(6),
	datac => temp(0),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr11~8_combout\);

-- Location: LC_X13_Y6_N1
\WideOr11~5\ : maxv_lcell
-- Equation(s):
-- \WideOr11~5_combout\ = ((\WideOr11~4_combout\ & (temp(2) $ (temp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datac => temp(0),
	datad => \WideOr11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr11~5_combout\);

-- Location: LC_X13_Y6_N2
\WideOr11~6\ : maxv_lcell
-- Equation(s):
-- \WideOr11~6_combout\ = (!temp(1) & (\WideOr11~5_combout\ & (temp(7) $ (temp(5)))))

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
	dataa => temp(7),
	datab => temp(5),
	datac => temp(1),
	datad => \WideOr11~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr11~6_combout\);

-- Location: LC_X13_Y6_N3
\led[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[0]~reg0_regout\ = DFFEAS((!\WideOr11~6_combout\ & ((temp(7)) # ((!\WideOr11~8_combout\) # (!\WideOr11~3_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

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
	dataa => temp(7),
	datab => \WideOr11~3_combout\,
	datac => \WideOr11~8_combout\,
	datad => \WideOr11~6_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[0]~reg0_regout\);

-- Location: LC_X14_Y7_N1
\WideOr10~1\ : maxv_lcell
-- Equation(s):
-- \WideOr10~1_combout\ = (temp(5) & (temp(1) & (!temp(3) & !temp(6)))) # (!temp(5) & (!temp(1) & (temp(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1018",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => temp(1),
	datac => temp(3),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~1_combout\);

-- Location: LC_X14_Y7_N0
\WideOr10~2\ : maxv_lcell
-- Equation(s):
-- \WideOr10~2_combout\ = (\WideOr10~1_combout\ & ((temp(7) & (!temp(6) & temp(3))) # (!temp(7) & (temp(6) $ (!temp(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(6),
	datac => temp(3),
	datad => \WideOr10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~2_combout\);

-- Location: LC_X14_Y5_N7
\WideOr10~3\ : maxv_lcell
-- Equation(s):
-- \WideOr10~3_combout\ = (temp(6) & (temp(2) & (!temp(4) & !temp(5)))) # (!temp(6) & ((temp(4) $ (temp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0338",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(6),
	datac => temp(4),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~3_combout\);

-- Location: LC_X14_Y5_N9
\WideOr10~4\ : maxv_lcell
-- Equation(s):
-- \WideOr10~4_combout\ = (\WideOr10~3_combout\ & (\WideOr9~0_combout\ & (temp(2) $ (temp(0)))))

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
	datab => \WideOr10~3_combout\,
	datac => temp(0),
	datad => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr10~4_combout\);

-- Location: LC_X14_Y5_N1
\led[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[1]~reg0_regout\ = DFFEAS((!\WideOr10~4_combout\ & ((temp(2)) # ((!\WideOr10~2_combout\) # (!\WideOr2~0\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

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
	datab => \WideOr2~0\,
	datac => \WideOr10~2_combout\,
	datad => \WideOr10~4_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[1]~reg0_regout\);

-- Location: LC_X14_Y7_N5
\WideOr9~6\ : maxv_lcell
-- Equation(s):
-- \WideOr9~6_combout\ = (temp(2) & (!temp(6) & (!temp(0) & temp(4)))) # (!temp(2) & (temp(6) & (temp(0) & !temp(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(6),
	datac => temp(0),
	datad => temp(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~6_combout\);

-- Location: LC_X14_Y7_N4
\WideOr9~4\ : maxv_lcell
-- Equation(s):
-- \WideOr9~4_combout\ = (!temp(3) & (!temp(0) & ((\WideOr9~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(0),
	datad => \WideOr9~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~4_combout\);

-- Location: LC_X14_Y7_N7
\WideOr9~1\ : maxv_lcell
-- Equation(s):
-- \WideOr9~1_combout\ = ((temp(3) $ (temp(0))))

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
	datac => temp(3),
	datad => temp(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~1_combout\);

-- Location: LC_X14_Y7_N8
\WideOr9~2\ : maxv_lcell
-- Equation(s):
-- \WideOr9~2_combout\ = (temp(7) & (\WideOr9~1_combout\ & (!temp(5) & \WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => \WideOr9~1_combout\,
	datac => temp(5),
	datad => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~2_combout\);

-- Location: LC_X14_Y7_N2
\WideOr9~5\ : maxv_lcell
-- Equation(s):
-- \WideOr9~5_combout\ = (!temp(4) & (!temp(6) & ((\WideOr9~4_combout\) # (\WideOr9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(6),
	datac => \WideOr9~4_combout\,
	datad => \WideOr9~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr9~5_combout\);

-- Location: LC_X14_Y7_N3
\led[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[2]~reg0_regout\ = DFFEAS((!\WideOr9~5_combout\ & (((temp(5)) # (!\WideOr9~6_combout\)) # (!\WideOr9~0_combout\))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

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
	dataa => \WideOr9~0_combout\,
	datab => temp(5),
	datac => \WideOr9~6_combout\,
	datad => \WideOr9~5_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[2]~reg0_regout\);

-- Location: LC_X13_Y6_N7
\WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \WideOr8~0_combout\ = (temp(3) & (!temp(2) & (!temp(4) & temp(5)))) # (!temp(3) & (temp(2) & (temp(4) & !temp(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(2),
	datac => temp(4),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~0_combout\);

-- Location: LC_X13_Y6_N4
\WideOr8~1\ : maxv_lcell
-- Equation(s):
-- \WideOr8~1_combout\ = (!temp(7) & (!temp(6) & (!temp(0) & !temp(1))))

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
	dataa => temp(7),
	datab => temp(6),
	datac => temp(0),
	datad => temp(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~1_combout\);

-- Location: LC_X13_Y6_N9
\WideOr8~4\ : maxv_lcell
-- Equation(s):
-- \WideOr8~4_combout\ = (temp(2) & (((!temp(1) & !temp(3))))) # (!temp(2) & ((temp(1) $ (temp(3)))))

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
	dataa => temp(2),
	datac => temp(1),
	datad => temp(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~4_combout\);

-- Location: LC_X13_Y6_N8
\WideOr8~5\ : maxv_lcell
-- Equation(s):
-- \WideOr8~5_combout\ = (!temp(4) & (\WideOr8~4_combout\ & (temp(7) $ (temp(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => \WideOr8~4_combout\,
	datac => temp(7),
	datad => temp(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~5_combout\);

-- Location: LC_X13_Y6_N5
\led[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[3]~reg0_regout\ = DFFEAS((\WideOr11~2\ & (!\WideOr8~5_combout\ & ((!\WideOr8~1_combout\) # (!\WideOr8~0_combout\)))) # (!\WideOr11~2\ & (((!\WideOr8~1_combout\)) # (!\WideOr8~0_combout\))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "153f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \WideOr11~2\,
	datab => \WideOr8~0_combout\,
	datac => \WideOr8~1_combout\,
	datad => \WideOr8~5_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[3]~reg0_regout\);

-- Location: LC_X12_Y6_N7
\WideOr7~1\ : maxv_lcell
-- Equation(s):
-- \WideOr7~1_combout\ = (temp(3) & (!temp(1) & (!temp(0) & !temp(2)))) # (!temp(3) & ((temp(1) & (!temp(0) & !temp(2))) # (!temp(1) & (temp(0) $ (temp(2))))))

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
	dataa => temp(3),
	datab => temp(1),
	datac => temp(0),
	datad => temp(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~1_combout\);

-- Location: LC_X12_Y6_N0
\WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \WideOr7~0_combout\ = (temp(4) & (!temp(6) & (!temp(7) & !temp(5)))) # (!temp(4) & ((temp(6) & (!temp(7) & !temp(5))) # (!temp(6) & (temp(7) $ (temp(5))))))

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
	datab => temp(6),
	datac => temp(7),
	datad => temp(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~0_combout\);

-- Location: LC_X12_Y6_N3
\led[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \led[4]~reg0_regout\ = DFFEAS((((!\WideOr7~0_combout\)) # (!\WideOr7~1_combout\)), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	datab => \WideOr7~1_combout\,
	datac => \WideOr7~0_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led[4]~reg0_regout\);

-- Location: LC_X12_Y5_N6
\lcd_rs~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd_rs~reg0_regout\ = DFFEAS(((\lcd_rs~reg0_regout\ & ((\Selector17~0_combout\) # (!\always3~0_combout\)))) # (!\WideOr12~0_combout\), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8faf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \lcd_rs~reg0_regout\,
	datab => \Selector17~0_combout\,
	datac => \WideOr12~0_combout\,
	datad => \always3~0_combout\,
	aclr => GND,
	ena => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_rs~reg0_regout\);

-- Location: LC_X12_Y5_N4
\Selector17~1\ : maxv_lcell
-- Equation(s):
-- \Selector17~1_combout\ = (((!\WideNor7~combout\) # (!\WideNor4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \WideNor4~combout\,
	datad => \WideNor7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector17~1_combout\);

-- Location: LC_X12_Y5_N5
\lcd_en~reg0\ : maxv_lcell
-- Equation(s):
-- \lcd_en~reg0_regout\ = DFFEAS((\Selector17~1_combout\) # ((\lcd_en~reg0_regout\ & ((\Selector17~0_combout\) # (!\always3~0_combout\)))), GLOBAL(\temp_clk~regout\), VCC, , \rst~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \temp_clk~regout\,
	dataa => \always3~0_combout\,
	datab => \Selector17~0_combout\,
	datac => \lcd_en~reg0_regout\,
	datad => \Selector17~1_combout\,
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

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[0]~reg0_regout\,
	oe => VCC,
	padio => ww_led(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[3]~reg0_regout\,
	oe => VCC,
	padio => ww_led(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\led[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \led[4]~reg0_regout\,
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


