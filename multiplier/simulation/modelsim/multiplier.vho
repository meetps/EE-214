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

-- DATE "03/03/2015 21:13:26"

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

ENTITY 	multiplier IS
    PORT (
	out1 : OUT std_logic;
	Multiplier4 : IN std_logic;
	Multiplier1 : IN std_logic;
	Multiplier2 : IN std_logic;
	Multiplier3 : IN std_logic;
	Loadswitch : IN std_logic;
	Clock : IN std_logic;
	B4 : IN std_logic;
	B3 : IN std_logic;
	B2 : IN std_logic;
	B1 : IN std_logic;
	out2 : OUT std_logic;
	out3 : OUT std_logic;
	out4 : OUT std_logic;
	out5 : OUT std_logic;
	out6 : OUT std_logic;
	out7 : OUT std_logic;
	out8 : OUT std_logic
	);
END multiplier;

-- Design Ports Information
-- out1	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out2	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out3	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out4	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out5	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out6	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out7	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- out8	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Multiplier1	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Loadswitch	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Multiplier2	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Multiplier3	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Multiplier4	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B4	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B3	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B2	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B1	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out1 : std_logic;
SIGNAL ww_Multiplier4 : std_logic;
SIGNAL ww_Multiplier1 : std_logic;
SIGNAL ww_Multiplier2 : std_logic;
SIGNAL ww_Multiplier3 : std_logic;
SIGNAL ww_Loadswitch : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_out2 : std_logic;
SIGNAL ww_out3 : std_logic;
SIGNAL ww_out4 : std_logic;
SIGNAL ww_out5 : std_logic;
SIGNAL ww_out6 : std_logic;
SIGNAL ww_out7 : std_logic;
SIGNAL ww_out8 : std_logic;
SIGNAL \B1~combout\ : std_logic;
SIGNAL \Loadswitch~combout\ : std_logic;
SIGNAL \inst3|26~regout\ : std_logic;
SIGNAL \inst3|6~combout\ : std_logic;
SIGNAL \B2~combout\ : std_logic;
SIGNAL \inst3|25~regout\ : std_logic;
SIGNAL \inst3|50~combout\ : std_logic;
SIGNAL \B3~combout\ : std_logic;
SIGNAL \inst3|24~regout\ : std_logic;
SIGNAL \inst3|22~combout\ : std_logic;
SIGNAL \B4~combout\ : std_logic;
SIGNAL \inst3|23~regout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \inst32|4~1_combout\ : std_logic;
SIGNAL \Multiplier1~combout\ : std_logic;
SIGNAL \inst2|113~regout\ : std_logic;
SIGNAL \Multiplier2~combout\ : std_logic;
SIGNAL \inst2|114~regout\ : std_logic;
SIGNAL \inst12|1~0_combout\ : std_logic;
SIGNAL \Multiplier3~combout\ : std_logic;
SIGNAL \inst2|115~regout\ : std_logic;
SIGNAL \Multiplier4~combout\ : std_logic;
SIGNAL \inst12|1~1_combout\ : std_logic;
SIGNAL \inst2|116~regout\ : std_logic;
SIGNAL \inst1|18~0_combout\ : std_logic;
SIGNAL \inst2|118~regout\ : std_logic;
SIGNAL \inst2|119~regout\ : std_logic;
SIGNAL \inst2|120~regout\ : std_logic;
SIGNAL \inst2|117~regout\ : std_logic;
SIGNAL \inst3|ALT_INV_22~combout\ : std_logic;
SIGNAL \ALT_INV_Loadswitch~combout\ : std_logic;

BEGIN

out1 <= ww_out1;
ww_Multiplier4 <= Multiplier4;
ww_Multiplier1 <= Multiplier1;
ww_Multiplier2 <= Multiplier2;
ww_Multiplier3 <= Multiplier3;
ww_Loadswitch <= Loadswitch;
ww_Clock <= Clock;
ww_B4 <= B4;
ww_B3 <= B3;
ww_B2 <= B2;
ww_B1 <= B1;
out2 <= ww_out2;
out3 <= ww_out3;
out4 <= ww_out4;
out5 <= ww_out5;
out6 <= ww_out6;
out7 <= ww_out7;
out8 <= ww_out8;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|ALT_INV_22~combout\ <= NOT \inst3|22~combout\;
\ALT_INV_Loadswitch~combout\ <= NOT \Loadswitch~combout\;

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B1,
	combout => \B1~combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Loadswitch~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Loadswitch,
	combout => \Loadswitch~combout\);

-- Location: LC_X12_Y3_N0
\inst3|26\ : maxv_lcell
-- Equation(s):
-- \inst3|26~regout\ = DFFEAS((((!\inst3|26~regout\))), GLOBAL(\inst32|4~1_combout\), VCC, , , \B1~combout\, !GLOBAL(\Loadswitch~combout\), , )

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
	clk => \inst32|4~1_combout\,
	datac => \B1~combout\,
	datad => \inst3|26~regout\,
	aclr => GND,
	aload => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|26~regout\);

-- Location: LC_X12_Y3_N6
\inst3|6\ : maxv_lcell
-- Equation(s):
-- \inst3|6~combout\ = LCELL((((\inst3|26~regout\) # (\inst32|4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst3|26~regout\,
	datad => \inst32|4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|6~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B2,
	combout => \B2~combout\);

-- Location: LC_X12_Y4_N2
\inst3|25\ : maxv_lcell
-- Equation(s):
-- \inst3|25~regout\ = DFFEAS((((!\inst3|25~regout\))), \inst3|6~combout\, VCC, , , \B2~combout\, !GLOBAL(\Loadswitch~combout\), , )

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
	clk => \inst3|6~combout\,
	datac => \B2~combout\,
	datad => \inst3|25~regout\,
	aclr => GND,
	aload => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|25~regout\);

-- Location: LC_X12_Y3_N8
\inst3|50\ : maxv_lcell
-- Equation(s):
-- \inst3|50~combout\ = LCELL((\inst3|25~regout\) # ((\inst3|26~regout\) # ((\inst32|4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|25~regout\,
	datab => \inst3|26~regout\,
	datac => \inst32|4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|50~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B3,
	combout => \B3~combout\);

-- Location: LC_X12_Y3_N9
\inst3|24\ : maxv_lcell
-- Equation(s):
-- \inst3|24~regout\ = DFFEAS((((!\inst3|24~regout\))), \inst3|50~combout\, VCC, , , \B3~combout\, !GLOBAL(\Loadswitch~combout\), , )

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
	clk => \inst3|50~combout\,
	datac => \B3~combout\,
	datad => \inst3|24~regout\,
	aclr => GND,
	aload => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|24~regout\);

-- Location: LC_X12_Y3_N7
\inst3|22\ : maxv_lcell
-- Equation(s):
-- \inst3|22~combout\ = LCELL((!\inst3|25~regout\ & (!\inst32|4~1_combout\ & (!\inst3|26~regout\ & !\inst3|24~regout\))))

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
	dataa => \inst3|25~regout\,
	datab => \inst32|4~1_combout\,
	datac => \inst3|26~regout\,
	datad => \inst3|24~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|22~combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B4,
	combout => \B4~combout\);

-- Location: LC_X13_Y3_N2
\inst3|23\ : maxv_lcell
-- Equation(s):
-- \inst3|23~regout\ = DFFEAS((((!\inst3|23~regout\))), !\inst3|22~combout\, VCC, , , \B4~combout\, !GLOBAL(\Loadswitch~combout\), , )

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
	clk => \inst3|ALT_INV_22~combout\,
	datac => \B4~combout\,
	datad => \inst3|23~regout\,
	aclr => GND,
	aload => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|23~regout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: LC_X12_Y3_N5
\inst32|4~1\ : maxv_lcell
-- Equation(s):
-- \inst32|4~1_combout\ = ((\Clock~combout\ & ((\inst3|23~regout\) # (!\inst3|22~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|22~combout\,
	datac => \inst3|23~regout\,
	datad => \Clock~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst32|4~1_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier1,
	combout => \Multiplier1~combout\);

-- Location: LC_X7_Y4_N0
\inst2|113\ : maxv_lcell
-- Equation(s):
-- \inst2|113~regout\ = DFFEAS((\inst2|113~regout\ $ ((\Multiplier1~combout\))), GLOBAL(\inst32|4~1_combout\), GLOBAL(\Loadswitch~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst32|4~1_combout\,
	datab => \inst2|113~regout\,
	datac => \Multiplier1~combout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|113~regout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier2,
	combout => \Multiplier2~combout\);

-- Location: LC_X7_Y4_N3
\inst2|114\ : maxv_lcell
-- Equation(s):
-- \inst2|114~regout\ = DFFEAS(\Multiplier2~combout\ $ (\inst2|114~regout\ $ (((\Multiplier1~combout\ & \inst2|113~regout\)))), GLOBAL(\inst32|4~1_combout\), GLOBAL(\Loadswitch~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "936c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst32|4~1_combout\,
	dataa => \Multiplier1~combout\,
	datab => \Multiplier2~combout\,
	datac => \inst2|113~regout\,
	datad => \inst2|114~regout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|114~regout\);

-- Location: LC_X7_Y4_N7
\inst12|1~0\ : maxv_lcell
-- Equation(s):
-- \inst12|1~0_combout\ = (\Multiplier2~combout\ & (!\inst2|114~regout\ & ((!\inst2|113~regout\) # (!\Multiplier1~combout\)))) # (!\Multiplier2~combout\ & (((!\inst2|114~regout\) # (!\inst2|113~regout\)) # (!\Multiplier1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "137f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplier1~combout\,
	datab => \Multiplier2~combout\,
	datac => \inst2|113~regout\,
	datad => \inst2|114~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|1~0_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier3,
	combout => \Multiplier3~combout\);

-- Location: LC_X7_Y4_N4
\inst2|115\ : maxv_lcell
-- Equation(s):
-- \inst2|115~regout\ = DFFEAS((\inst12|1~0_combout\ $ (\inst2|115~regout\ $ (!\Multiplier3~combout\))), GLOBAL(\inst32|4~1_combout\), GLOBAL(\Loadswitch~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst32|4~1_combout\,
	datab => \inst12|1~0_combout\,
	datac => \inst2|115~regout\,
	datad => \Multiplier3~combout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|115~regout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Multiplier4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Multiplier4,
	combout => \Multiplier4~combout\);

-- Location: LC_X7_Y4_N8
\inst12|1~1\ : maxv_lcell
-- Equation(s):
-- \inst12|1~1_combout\ = ((\Multiplier3~combout\ & (!\inst2|115~regout\ & \inst12|1~0_combout\)) # (!\Multiplier3~combout\ & ((\inst12|1~0_combout\) # (!\inst2|115~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Multiplier3~combout\,
	datac => \inst2|115~regout\,
	datad => \inst12|1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|1~1_combout\);

-- Location: LC_X6_Y4_N7
\inst2|116\ : maxv_lcell
-- Equation(s):
-- \inst2|116~regout\ = DFFEAS((\Multiplier4~combout\ $ (\inst2|116~regout\ $ (!\inst12|1~1_combout\))), GLOBAL(\inst32|4~1_combout\), GLOBAL(\Loadswitch~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst32|4~1_combout\,
	datab => \Multiplier4~combout\,
	datac => \inst2|116~regout\,
	datad => \inst12|1~1_combout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|116~regout\);

-- Location: LC_X7_Y4_N5
\inst1|18~0\ : maxv_lcell
-- Equation(s):
-- \inst1|18~0_combout\ = (\inst2|120~regout\ & ((\Multiplier4~combout\ & ((\inst2|116~regout\) # (!\inst12|1~1_combout\))) # (!\Multiplier4~combout\ & (\inst2|116~regout\ & !\inst12|1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Multiplier4~combout\,
	datab => \inst2|116~regout\,
	datac => \inst2|120~regout\,
	datad => \inst12|1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|18~0_combout\);

-- Location: LC_X7_Y4_N6
\inst2|118\ : maxv_lcell
-- Equation(s):
-- \inst2|118~regout\ = DFFEAS(((\inst2|119~regout\ $ (\inst1|18~0_combout\))), GLOBAL(\inst32|4~1_combout\), GLOBAL(\Loadswitch~combout\), , , , , , )

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
	clk => \inst32|4~1_combout\,
	datac => \inst2|119~regout\,
	datad => \inst1|18~0_combout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|118~regout\);

-- Location: LC_X7_Y4_N1
\inst2|119\ : maxv_lcell
-- Equation(s):
-- \inst2|119~regout\ = DFFEAS((\inst2|118~regout\ $ (((\inst1|18~0_combout\ & \inst2|119~regout\)))), GLOBAL(\inst32|4~1_combout\), GLOBAL(\Loadswitch~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst32|4~1_combout\,
	datab => \inst2|118~regout\,
	datac => \inst1|18~0_combout\,
	datad => \inst2|119~regout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|119~regout\);

-- Location: LC_X7_Y4_N2
\inst2|120\ : maxv_lcell
-- Equation(s):
-- \inst2|120~regout\ = DFFEAS(\inst2|117~regout\ $ (((\inst2|119~regout\ & (\inst2|118~regout\ & \inst1|18~0_combout\)))), GLOBAL(\inst32|4~1_combout\), GLOBAL(\Loadswitch~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst32|4~1_combout\,
	dataa => \inst2|119~regout\,
	datab => \inst2|118~regout\,
	datac => \inst1|18~0_combout\,
	datad => \inst2|117~regout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|120~regout\);

-- Location: LC_X7_Y4_N9
\inst2|117\ : maxv_lcell
-- Equation(s):
-- \inst2|117~regout\ = DFFEAS(\inst2|120~regout\ $ (((\Multiplier4~combout\ & ((\inst2|116~regout\) # (!\inst12|1~1_combout\))) # (!\Multiplier4~combout\ & (\inst2|116~regout\ & !\inst12|1~1_combout\)))), GLOBAL(\inst32|4~1_combout\), 
-- GLOBAL(\Loadswitch~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "781e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst32|4~1_combout\,
	dataa => \Multiplier4~combout\,
	datab => \inst2|116~regout\,
	datac => \inst2|120~regout\,
	datad => \inst12|1~1_combout\,
	aclr => \ALT_INV_Loadswitch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|117~regout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|113~regout\,
	oe => VCC,
	padio => ww_out1);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|114~regout\,
	oe => VCC,
	padio => ww_out2);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|115~regout\,
	oe => VCC,
	padio => ww_out3);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|116~regout\,
	oe => VCC,
	padio => ww_out4);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out5~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|117~regout\,
	oe => VCC,
	padio => ww_out5);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out6~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|118~regout\,
	oe => VCC,
	padio => ww_out6);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out7~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|119~regout\,
	oe => VCC,
	padio => ww_out7);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\out8~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|120~regout\,
	oe => VCC,
	padio => ww_out8);
END structure;


