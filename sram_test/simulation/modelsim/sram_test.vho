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

-- DATE "04/15/2015 11:29:58"

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

ENTITY 	sram_test IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	enable : IN std_logic;
	addr_in : IN std_logic_vector(14 DOWNTO 0);
	data_in : IN std_logic_vector(7 DOWNTO 0);
	data_out : BUFFER std_logic_vector(7 DOWNTO 0);
	writeenable : IN std_logic;
	readenable : IN std_logic;
	rd_done : BUFFER std_logic;
	wr_done : BUFFER std_logic;
	sram_addr_out : BUFFER std_logic_vector(14 DOWNTO 0);
	sram_data : BUFFER std_logic_vector(7 DOWNTO 0);
	sram_cs_n : BUFFER std_logic;
	sram_we_n : BUFFER std_logic;
	sram_oe_n : BUFFER std_logic
	);
END sram_test;

-- Design Ports Information
-- data_out[0]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[1]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[2]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[3]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[4]	=>  Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[5]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[6]	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- data_out[7]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rd_done	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- wr_done	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[0]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[1]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[2]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[3]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[4]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[5]	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[6]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[7]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[8]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[9]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[10]	=>  Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[11]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[12]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[13]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_addr_out[14]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_cs_n	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_we_n	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_oe_n	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[0]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[1]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[2]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[3]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[4]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[5]	=>  Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[6]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sram_data[7]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst_n	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[3]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[4]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[5]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[6]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[7]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[8]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[9]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[10]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[11]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[12]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[13]	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- addr_in[14]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- readenable	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- writeenable	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sram_test IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_addr_in : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_data_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_writeenable : std_logic;
SIGNAL ww_readenable : std_logic;
SIGNAL ww_rd_done : std_logic;
SIGNAL ww_wr_done : std_logic;
SIGNAL ww_sram_addr_out : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_sram_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sram_cs_n : std_logic;
SIGNAL ww_sram_we_n : std_logic;
SIGNAL ww_sram_oe_n : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst_n~combout\ : std_logic;
SIGNAL \writeenable~combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \readenable~combout\ : std_logic;
SIGNAL \present_state~12_combout\ : std_logic;
SIGNAL \present_state~8_combout\ : std_logic;
SIGNAL \data_out[0]~1_combout\ : std_logic;
SIGNAL \present_state.S1~regout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \present_state~13_combout\ : std_logic;
SIGNAL \present_state.00~regout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \sram_addr_out[0]~0_combout\ : std_logic;
SIGNAL \present_state~10_combout\ : std_logic;
SIGNAL \present_state.S2~regout\ : std_logic;
SIGNAL \temp_sram_data[0]~0_combout\ : std_logic;
SIGNAL \data_out[0]~0_combout\ : std_logic;
SIGNAL \data_out[0]~reg0_regout\ : std_logic;
SIGNAL \data_out[1]~reg0_regout\ : std_logic;
SIGNAL \data_out[2]~reg0_regout\ : std_logic;
SIGNAL \data_out[3]~reg0_regout\ : std_logic;
SIGNAL \data_out[4]~reg0_regout\ : std_logic;
SIGNAL \data_out[5]~reg0_regout\ : std_logic;
SIGNAL \data_out[6]~reg0_regout\ : std_logic;
SIGNAL \data_out[7]~reg0_regout\ : std_logic;
SIGNAL \rd_done~reg0_regout\ : std_logic;
SIGNAL \wr_done~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[0]~1_combout\ : std_logic;
SIGNAL \sram_addr_out[0]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[1]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[2]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[3]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[4]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[5]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[6]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[7]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[8]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[9]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[10]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[11]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[12]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[13]~reg0_regout\ : std_logic;
SIGNAL \sram_addr_out[14]~reg0_regout\ : std_logic;
SIGNAL \sram_we_n~0_combout\ : std_logic;
SIGNAL \sram_we_n~reg0_regout\ : std_logic;
SIGNAL \sram_oe_n~reg0_regout\ : std_logic;
SIGNAL \data_in~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL read_count : std_logic_vector(2 DOWNTO 0);
SIGNAL \addr_in~combout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL temp_sram_data : std_logic_vector(7 DOWNTO 0);
SIGNAL write_count : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_enable <= enable;
ww_addr_in <= addr_in;
ww_data_in <= data_in;
data_out <= ww_data_out;
ww_writeenable <= writeenable;
ww_readenable <= readenable;
rd_done <= ww_rd_done;
wr_done <= ww_wr_done;
sram_addr_out <= ww_sram_addr_out;
sram_data <= ww_sram_data;
sram_cs_n <= ww_sram_cs_n;
sram_we_n <= ww_sram_we_n;
sram_oe_n <= ww_sram_oe_n;
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

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(0),
	combout => \data_in~combout\(0));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst_n~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst_n,
	combout => \rst_n~combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\writeenable~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_writeenable,
	combout => \writeenable~combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\readenable~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_readenable,
	combout => \readenable~combout\);

-- Location: LC_X10_Y5_N2
\present_state~12\ : maxv_lcell
-- Equation(s):
-- \present_state~12_combout\ = (((!\writeenable~combout\ & !\readenable~combout\)) # (!\enable~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \writeenable~combout\,
	datac => \enable~combout\,
	datad => \readenable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \present_state~12_combout\);

-- Location: LC_X10_Y5_N0
\present_state~8\ : maxv_lcell
-- Equation(s):
-- \present_state~8_combout\ = (((\enable~combout\ & !\present_state.00~regout\)))

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
	datac => \enable~combout\,
	datad => \present_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \present_state~8_combout\);

-- Location: LC_X10_Y6_N6
\read_count[1]\ : maxv_lcell
-- Equation(s):
-- read_count(1) = DFFEAS((read_count(1) & (((\present_state.00~regout\)))) # (!read_count(1) & (read_count(0) & (\present_state.S1~regout\))), GLOBAL(\clk~combout\), VCC, , \rst_n~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => read_count(1),
	datab => read_count(0),
	datac => \present_state.S1~regout\,
	datad => \present_state.00~regout\,
	aclr => GND,
	ena => \rst_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => read_count(1));

-- Location: LC_X10_Y6_N2
\read_count[0]\ : maxv_lcell
-- Equation(s):
-- read_count(0) = DFFEAS((read_count(0) & ((\present_state.S2~regout\) # ((\present_state.S1~regout\ & read_count(1))))) # (!read_count(0) & (((\present_state.S1~regout\)))), GLOBAL(\clk~combout\), VCC, , \rst_n~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8b8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.S2~regout\,
	datab => read_count(0),
	datac => \present_state.S1~regout\,
	datad => read_count(1),
	aclr => GND,
	ena => \rst_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => read_count(0));

-- Location: LC_X11_Y6_N1
\data_out[0]~1\ : maxv_lcell
-- Equation(s):
-- \data_out[0]~1_combout\ = ((\present_state.S1~regout\ & ((!read_count(1)) # (!read_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => read_count(0),
	datac => read_count(1),
	datad => \present_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out[0]~1_combout\);

-- Location: LC_X10_Y6_N5
\present_state.S1\ : maxv_lcell
-- Equation(s):
-- \present_state.S1~regout\ = DFFEAS((\rst_n~combout\ & ((\data_out[0]~1_combout\) # ((\readenable~combout\ & \present_state~8_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst_n~combout\,
	datab => \readenable~combout\,
	datac => \present_state~8_combout\,
	datad => \data_out[0]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.S1~regout\);

-- Location: LC_X10_Y6_N4
\write_count[1]\ : maxv_lcell
-- Equation(s):
-- write_count(1) = DFFEAS((write_count(1) & (((\present_state.S1~regout\) # (\present_state.S2~regout\)))) # (!write_count(1) & (write_count(0) & ((\present_state.S2~regout\)))), GLOBAL(\clk~combout\), VCC, , \rst_n~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eec0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => write_count(0),
	datab => write_count(1),
	datac => \present_state.S1~regout\,
	datad => \present_state.S2~regout\,
	aclr => GND,
	ena => \rst_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_count(1));

-- Location: LC_X10_Y6_N1
\write_count[0]\ : maxv_lcell
-- Equation(s):
-- write_count(0) = DFFEAS((write_count(0) & ((\present_state.S1~regout\) # ((write_count(1) & \present_state.S2~regout\)))) # (!write_count(0) & (((\present_state.S2~regout\)))), GLOBAL(\clk~combout\), VCC, , \rst_n~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => write_count(1),
	datab => write_count(0),
	datac => \present_state.S1~regout\,
	datad => \present_state.S2~regout\,
	aclr => GND,
	ena => \rst_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => write_count(0));

-- Location: LC_X10_Y6_N8
\LessThan0~0\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (((!read_count(0)) # (!read_count(1))))

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
	datac => read_count(1),
	datad => read_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X10_Y6_N7
\present_state~13\ : maxv_lcell
-- Equation(s):
-- \present_state~13_combout\ = (\present_state.S2~regout\ & (((!write_count(1))) # (!write_count(0)))) # (!\present_state.S2~regout\ & (((\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.S2~regout\,
	datab => write_count(0),
	datac => write_count(1),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \present_state~13_combout\);

-- Location: LC_X9_Y6_N0
\present_state.00\ : maxv_lcell
-- Equation(s):
-- \present_state.00~regout\ = DFFEAS((\rst_n~combout\ & ((\present_state.00~regout\ & ((\present_state~13_combout\))) # (!\present_state.00~regout\ & (!\present_state~12_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \rst_n~combout\,
	datab => \present_state.00~regout\,
	datac => \present_state~12_combout\,
	datad => \present_state~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.00~regout\);

-- Location: LC_X10_Y6_N3
\LessThan1~0\ : maxv_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (((!write_count(0)) # (!write_count(1))))

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
	datac => write_count(1),
	datad => write_count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X9_Y6_N1
\sram_addr_out[0]~0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[0]~0_combout\ = (\present_state.00~regout\ & ((\present_state.S2~regout\ & (\LessThan1~0_combout\)) # (!\present_state.S2~regout\ & ((\LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \present_state.S2~regout\,
	datab => \present_state.00~regout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sram_addr_out[0]~0_combout\);

-- Location: LC_X10_Y5_N4
\present_state~10\ : maxv_lcell
-- Equation(s):
-- \present_state~10_combout\ = (!\readenable~combout\ & (\writeenable~combout\ & (\enable~combout\ & !\present_state.00~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \readenable~combout\,
	datab => \writeenable~combout\,
	datac => \enable~combout\,
	datad => \present_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \present_state~10_combout\);

-- Location: LC_X9_Y6_N8
\present_state.S2\ : maxv_lcell
-- Equation(s):
-- \present_state.S2~regout\ = DFFEAS((\rst_n~combout\ & ((\present_state~10_combout\) # ((\present_state.S2~regout\ & \sram_addr_out[0]~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.S2~regout\,
	datab => \sram_addr_out[0]~0_combout\,
	datac => \rst_n~combout\,
	datad => \present_state~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \present_state.S2~regout\);

-- Location: LC_X9_Y10_N9
\temp_sram_data[0]~0\ : maxv_lcell
-- Equation(s):
-- \temp_sram_data[0]~0_combout\ = (\rst_n~combout\ & (\present_state.S2~regout\ & ((!write_count(1)) # (!write_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~combout\,
	datab => \present_state.S2~regout\,
	datac => write_count(0),
	datad => write_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \temp_sram_data[0]~0_combout\);

-- Location: LC_X9_Y10_N5
\temp_sram_data[0]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(0) = DFFEAS((((\data_in~combout\(0)))), GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, , , , )

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
	datad => \data_in~combout\(0),
	aclr => GND,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(0));

-- Location: LC_X10_Y6_N0
\data_out[0]~0\ : maxv_lcell
-- Equation(s):
-- \data_out[0]~0_combout\ = (\rst_n~combout\ & (\present_state.S1~regout\ & ((!read_count(1)) # (!read_count(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~combout\,
	datab => read_count(0),
	datac => \present_state.S1~regout\,
	datad => read_count(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \data_out[0]~0_combout\);

-- Location: LC_X10_Y10_N5
\data_out[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[0]~reg0_regout\ = DFFEAS((((temp_sram_data(0)))), GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, , , , )

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
	datad => temp_sram_data(0),
	aclr => GND,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[0]~reg0_regout\);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(1),
	combout => \data_in~combout\(1));

-- Location: LC_X9_Y10_N2
\temp_sram_data[1]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, \data_in~combout\(1), , , VCC)

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
	datac => \data_in~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(1));

-- Location: LC_X10_Y10_N9
\data_out[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[1]~reg0_regout\ = DFFEAS((((temp_sram_data(1)))), GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, , , , )

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
	datad => temp_sram_data(1),
	aclr => GND,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[1]~reg0_regout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(2),
	combout => \data_in~combout\(2));

-- Location: LC_X9_Y10_N7
\temp_sram_data[2]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, \data_in~combout\(2), , , VCC)

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
	datac => \data_in~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(2));

-- Location: LC_X10_Y10_N3
\data_out[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[2]~reg0_regout\ = DFFEAS((((temp_sram_data(2)))), GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, , , , )

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
	datad => temp_sram_data(2),
	aclr => GND,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[2]~reg0_regout\);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(3),
	combout => \data_in~combout\(3));

-- Location: LC_X9_Y10_N4
\temp_sram_data[3]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, \data_in~combout\(3), , , VCC)

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
	datac => \data_in~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(3));

-- Location: LC_X10_Y10_N4
\data_out[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, temp_sram_data(3), , , VCC)

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
	datac => temp_sram_data(3),
	aclr => GND,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[3]~reg0_regout\);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(4),
	combout => \data_in~combout\(4));

-- Location: LC_X9_Y10_N3
\temp_sram_data[4]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, \data_in~combout\(4), , , VCC)

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
	datac => \data_in~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(4));

-- Location: LC_X10_Y10_N2
\data_out[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[4]~reg0_regout\ = DFFEAS((((temp_sram_data(4)))), GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, , , , )

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
	datad => temp_sram_data(4),
	aclr => GND,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[4]~reg0_regout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(5),
	combout => \data_in~combout\(5));

-- Location: LC_X9_Y10_N0
\temp_sram_data[5]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, \data_in~combout\(5), , , VCC)

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
	datac => \data_in~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(5));

-- Location: LC_X10_Y10_N0
\data_out[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[5]~reg0_regout\ = DFFEAS((((temp_sram_data(5)))), GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, , , , )

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
	datad => temp_sram_data(5),
	aclr => GND,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[5]~reg0_regout\);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(6),
	combout => \data_in~combout\(6));

-- Location: LC_X9_Y10_N1
\temp_sram_data[6]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(6) = DFFEAS((((\data_in~combout\(6)))), GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, , , , )

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
	datad => \data_in~combout\(6),
	aclr => GND,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(6));

-- Location: LC_X10_Y10_N8
\data_out[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, temp_sram_data(6), , , VCC)

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
	datac => temp_sram_data(6),
	aclr => GND,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[6]~reg0_regout\);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data_in(7),
	combout => \data_in~combout\(7));

-- Location: LC_X9_Y10_N6
\temp_sram_data[7]\ : maxv_lcell
-- Equation(s):
-- temp_sram_data(7) = DFFEAS((((\data_in~combout\(7)))), GLOBAL(\clk~combout\), VCC, , \temp_sram_data[0]~0_combout\, , , , )

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
	datad => \data_in~combout\(7),
	aclr => GND,
	ena => \temp_sram_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => temp_sram_data(7));

-- Location: LC_X10_Y10_N6
\data_out[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \data_out[7]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \data_out[0]~0_combout\, temp_sram_data(7), , , VCC)

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
	datac => temp_sram_data(7),
	aclr => GND,
	sload => VCC,
	ena => \data_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \data_out[7]~reg0_regout\);

-- Location: LC_X11_Y6_N5
\rd_done~reg0\ : maxv_lcell
-- Equation(s):
-- \rd_done~reg0_regout\ = DFFEAS((\rd_done~reg0_regout\ & ((\present_state.S2~regout\) # ((\present_state.S1~regout\)))) # (!\rd_done~reg0_regout\ & (((!\LessThan0~0_combout\ & \present_state.S1~regout\)))), GLOBAL(\clk~combout\), VCC, , \rst_n~combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.S2~regout\,
	datab => \LessThan0~0_combout\,
	datac => \rd_done~reg0_regout\,
	datad => \present_state.S1~regout\,
	aclr => GND,
	ena => \rst_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rd_done~reg0_regout\);

-- Location: LC_X10_Y6_N9
\wr_done~reg0\ : maxv_lcell
-- Equation(s):
-- \wr_done~reg0_regout\ = DFFEAS((\wr_done~reg0_regout\ & ((\present_state.S1~regout\) # ((\present_state.S2~regout\)))) # (!\wr_done~reg0_regout\ & (((!\LessThan1~0_combout\ & \present_state.S2~regout\)))), GLOBAL(\clk~combout\), VCC, , \rst_n~combout\, , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \present_state.S1~regout\,
	datab => \wr_done~reg0_regout\,
	datac => \LessThan1~0_combout\,
	datad => \present_state.S2~regout\,
	aclr => GND,
	ena => \rst_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wr_done~reg0_regout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(0),
	combout => \addr_in~combout\(0));

-- Location: LC_X9_Y6_N2
\sram_addr_out[0]~1\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[0]~1_combout\ = (((\rst_n~combout\ & \sram_addr_out[0]~0_combout\)))

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
	datac => \rst_n~combout\,
	datad => \sram_addr_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sram_addr_out[0]~1_combout\);

-- Location: LC_X8_Y6_N1
\sram_addr_out[0]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(0), , , VCC)

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
	datac => \addr_in~combout\(0),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[0]~reg0_regout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(1),
	combout => \addr_in~combout\(1));

-- Location: LC_X8_Y6_N6
\sram_addr_out[1]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(1), , , VCC)

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
	datac => \addr_in~combout\(1),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[1]~reg0_regout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(2),
	combout => \addr_in~combout\(2));

-- Location: LC_X9_Y6_N6
\sram_addr_out[2]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(2), , , VCC)

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
	datac => \addr_in~combout\(2),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[2]~reg0_regout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(3),
	combout => \addr_in~combout\(3));

-- Location: LC_X8_Y6_N5
\sram_addr_out[3]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(3), , , VCC)

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
	datac => \addr_in~combout\(3),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[3]~reg0_regout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(4),
	combout => \addr_in~combout\(4));

-- Location: LC_X9_Y6_N3
\sram_addr_out[4]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[4]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(4), , , VCC)

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
	datac => \addr_in~combout\(4),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[4]~reg0_regout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(5),
	combout => \addr_in~combout\(5));

-- Location: LC_X8_Y6_N4
\sram_addr_out[5]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[5]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(5), , , VCC)

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
	datac => \addr_in~combout\(5),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[5]~reg0_regout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(6),
	combout => \addr_in~combout\(6));

-- Location: LC_X8_Y6_N3
\sram_addr_out[6]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[6]~reg0_regout\ = DFFEAS((((\addr_in~combout\(6)))), GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, , , , )

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
	datad => \addr_in~combout\(6),
	aclr => GND,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[6]~reg0_regout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(7),
	combout => \addr_in~combout\(7));

-- Location: LC_X9_Y6_N9
\sram_addr_out[7]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[7]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(7), , , VCC)

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
	datac => \addr_in~combout\(7),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[7]~reg0_regout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(8),
	combout => \addr_in~combout\(8));

-- Location: LC_X9_Y6_N5
\sram_addr_out[8]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[8]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(8), , , VCC)

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
	datac => \addr_in~combout\(8),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[8]~reg0_regout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(9),
	combout => \addr_in~combout\(9));

-- Location: LC_X8_Y6_N7
\sram_addr_out[9]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[9]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(9), , , VCC)

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
	datac => \addr_in~combout\(9),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[9]~reg0_regout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(10),
	combout => \addr_in~combout\(10));

-- Location: LC_X9_Y6_N4
\sram_addr_out[10]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[10]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(10), , , VCC)

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
	datac => \addr_in~combout\(10),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[10]~reg0_regout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(11),
	combout => \addr_in~combout\(11));

-- Location: LC_X8_Y6_N2
\sram_addr_out[11]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[11]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(11), , , VCC)

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
	datac => \addr_in~combout\(11),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[11]~reg0_regout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(12),
	combout => \addr_in~combout\(12));

-- Location: LC_X8_Y6_N9
\sram_addr_out[12]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[12]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(12), , , VCC)

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
	datac => \addr_in~combout\(12),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[12]~reg0_regout\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(13),
	combout => \addr_in~combout\(13));

-- Location: LC_X8_Y6_N8
\sram_addr_out[13]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[13]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(13), , , VCC)

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
	datac => \addr_in~combout\(13),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[13]~reg0_regout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\addr_in[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_addr_in(14),
	combout => \addr_in~combout\(14));

-- Location: LC_X9_Y6_N7
\sram_addr_out[14]~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_addr_out[14]~reg0_regout\ = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \sram_addr_out[0]~1_combout\, \addr_in~combout\(14), , , VCC)

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
	datac => \addr_in~combout\(14),
	aclr => GND,
	sload => VCC,
	ena => \sram_addr_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_addr_out[14]~reg0_regout\);

-- Location: LC_X11_Y6_N2
\sram_we_n~0\ : maxv_lcell
-- Equation(s):
-- \sram_we_n~0_combout\ = (\rst_n~combout\ & ((\data_out[0]~1_combout\) # ((\LessThan1~0_combout\ & \present_state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~combout\,
	datab => \LessThan1~0_combout\,
	datac => \present_state.S2~regout\,
	datad => \data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sram_we_n~0_combout\);

-- Location: LC_X11_Y6_N6
\sram_we_n~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_we_n~reg0_regout\ = DFFEAS((((!\present_state.S2~regout\))), GLOBAL(\clk~combout\), VCC, , \sram_we_n~0_combout\, , , , )

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
	clk => \clk~combout\,
	datad => \present_state.S2~regout\,
	aclr => GND,
	ena => \sram_we_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_we_n~reg0_regout\);

-- Location: LC_X11_Y6_N8
\sram_oe_n~reg0\ : maxv_lcell
-- Equation(s):
-- \sram_oe_n~reg0_regout\ = DFFEAS((((\present_state.S2~regout\))), GLOBAL(\clk~combout\), VCC, , \sram_we_n~0_combout\, , , , )

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
	datad => \present_state.S2~regout\,
	aclr => GND,
	ena => \sram_we_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \sram_oe_n~reg0_regout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[0]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[1]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(1));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[2]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(2));

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[3]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(3));

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[4]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(4));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[5]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(5));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[6]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(6));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\data_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \data_out[7]~reg0_regout\,
	oe => VCC,
	padio => ww_data_out(7));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rd_done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \rd_done~reg0_regout\,
	oe => VCC,
	padio => ww_rd_done);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_done~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_done~reg0_regout\,
	oe => VCC,
	padio => ww_wr_done);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[0]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(0));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[1]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(1));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[2]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(2));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[3]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(3));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[4]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(4));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[5]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(5));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[6]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[7]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(7));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[8]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(8));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[9]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(9));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[10]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(10));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[11]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(11));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[12]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(12));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[13]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(13));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_addr_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_addr_out[14]~reg0_regout\,
	oe => VCC,
	padio => ww_sram_addr_out(14));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_cs_n~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_sram_cs_n);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_we_n~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_we_n~reg0_regout\,
	oe => VCC,
	padio => ww_sram_we_n);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_oe_n~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \sram_oe_n~reg0_regout\,
	oe => VCC,
	padio => ww_sram_oe_n);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(0),
	oe => VCC,
	padio => ww_sram_data(0));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(1),
	oe => VCC,
	padio => ww_sram_data(1));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(2),
	oe => VCC,
	padio => ww_sram_data(2));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(3),
	oe => VCC,
	padio => ww_sram_data(3));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(4),
	oe => VCC,
	padio => ww_sram_data(4));

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(5),
	oe => VCC,
	padio => ww_sram_data(5));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(6),
	oe => VCC,
	padio => ww_sram_data(6));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sram_data[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => temp_sram_data(7),
	oe => VCC,
	padio => ww_sram_data(7));
END structure;


