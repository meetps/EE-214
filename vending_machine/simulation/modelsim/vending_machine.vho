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

-- DATE "04/13/2015 17:10:22"

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

ENTITY 	vending_machine IS
    PORT (
	clk : IN std_logic;
	pepsi : IN std_logic;
	lays : IN std_logic;
	coke : IN std_logic;
	quantity1 : IN std_logic;
	quantity2 : IN std_logic;
	quantity3 : IN std_logic;
	oqLED1 : BUFFER std_logic;
	oqLED2 : BUFFER std_logic;
	oqLED3 : BUFFER std_logic;
	start_1 : BUFFER std_logic;
	done_1 : BUFFER std_logic;
	refill : IN std_logic;
	tenRs : IN std_logic;
	fiveRs : IN std_logic;
	twoRs : IN std_logic;
	oneRs : IN std_logic;
	changeAmount : BUFFER std_logic_vector(7 DOWNTO 0);
	lcd : BUFFER std_logic_vector(7 DOWNTO 0);
	lcd_rs : BUFFER std_logic;
	lcd_rw : BUFFER std_logic;
	lcd_en : BUFFER std_logic;
	rst : IN std_logic
	);
END vending_machine;

-- Design Ports Information
-- oqLED1	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oqLED2	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- oqLED3	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- start_1	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- done_1	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- refill	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- changeAmount[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- changeAmount[1]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- changeAmount[2]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- changeAmount[3]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- changeAmount[4]	=>  Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- changeAmount[5]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- changeAmount[6]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- changeAmount[7]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[1]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[2]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[3]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[4]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[5]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[6]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd[7]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rs	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_rw	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- lcd_en	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- rst	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- quantity1	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- quantity2	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- quantity3	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- coke	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pepsi	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- lays	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- twoRs	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- oneRs	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tenRs	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- fiveRs	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF vending_machine IS
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
SIGNAL ww_pepsi : std_logic;
SIGNAL ww_lays : std_logic;
SIGNAL ww_coke : std_logic;
SIGNAL ww_quantity1 : std_logic;
SIGNAL ww_quantity2 : std_logic;
SIGNAL ww_quantity3 : std_logic;
SIGNAL ww_oqLED1 : std_logic;
SIGNAL ww_oqLED2 : std_logic;
SIGNAL ww_oqLED3 : std_logic;
SIGNAL ww_start_1 : std_logic;
SIGNAL ww_done_1 : std_logic;
SIGNAL ww_refill : std_logic;
SIGNAL ww_tenRs : std_logic;
SIGNAL ww_fiveRs : std_logic;
SIGNAL ww_twoRs : std_logic;
SIGNAL ww_oneRs : std_logic;
SIGNAL ww_changeAmount : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_lcd_rs : std_logic;
SIGNAL ww_lcd_rw : std_logic;
SIGNAL ww_lcd_en : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \lcd_instance|n_reset~regout\ : std_logic;
SIGNAL \LessThan4~5\ : std_logic;
SIGNAL \LessThan4~10\ : std_logic;
SIGNAL \LessThan4~15\ : std_logic;
SIGNAL \LessThan4~20\ : std_logic;
SIGNAL \LessThan4~25\ : std_logic;
SIGNAL \LessThan4~30\ : std_logic;
SIGNAL \LessThan4~35\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \quantity1~combout\ : std_logic;
SIGNAL \coke~combout\ : std_logic;
SIGNAL \lays~combout\ : std_logic;
SIGNAL \pepsi~combout\ : std_logic;
SIGNAL \lcd_start~1_combout\ : std_logic;
SIGNAL \lcd_instance|state[1]~3_combout\ : std_logic;
SIGNAL \lcd_instance|count[0]~25\ : std_logic;
SIGNAL \lcd_instance|count[0]~25COUT1_55\ : std_logic;
SIGNAL \lcd_instance|count[1]~27\ : std_logic;
SIGNAL \lcd_instance|count[1]~27COUT1_57\ : std_logic;
SIGNAL \lcd_instance|count[2]~29\ : std_logic;
SIGNAL \lcd_instance|count[2]~29COUT1_59\ : std_logic;
SIGNAL \lcd_instance|count[3]~31\ : std_logic;
SIGNAL \lcd_instance|count[4]~33\ : std_logic;
SIGNAL \lcd_instance|count[4]~33COUT1_61\ : std_logic;
SIGNAL \lcd_instance|count[5]~35\ : std_logic;
SIGNAL \lcd_instance|count[5]~35COUT1_63\ : std_logic;
SIGNAL \lcd_instance|count[6]~37\ : std_logic;
SIGNAL \lcd_instance|count[6]~37COUT1_65\ : std_logic;
SIGNAL \lcd_instance|count[7]~13\ : std_logic;
SIGNAL \lcd_instance|count[7]~13COUT1_67\ : std_logic;
SIGNAL \lcd_instance|count[8]~17\ : std_logic;
SIGNAL \lcd_instance|count[9]~19\ : std_logic;
SIGNAL \lcd_instance|count[9]~19COUT1_69\ : std_logic;
SIGNAL \lcd_instance|count[10]~21\ : std_logic;
SIGNAL \lcd_instance|count[10]~21COUT1_71\ : std_logic;
SIGNAL \lcd_instance|count[11]~23\ : std_logic;
SIGNAL \lcd_instance|count[11]~23COUT1_73\ : std_logic;
SIGNAL \lcd_instance|count[12]~15\ : std_logic;
SIGNAL \lcd_instance|count[12]~15COUT1_75\ : std_logic;
SIGNAL \lcd_instance|count[13]~11\ : std_logic;
SIGNAL \lcd_instance|count[14]~3\ : std_logic;
SIGNAL \lcd_instance|count[14]~3COUT1_77\ : std_logic;
SIGNAL \lcd_instance|count[15]~5\ : std_logic;
SIGNAL \lcd_instance|count[15]~5COUT1_79\ : std_logic;
SIGNAL \lcd_instance|count[16]~7\ : std_logic;
SIGNAL \lcd_instance|count[16]~7COUT1_81\ : std_logic;
SIGNAL \lcd_instance|count[17]~9\ : std_logic;
SIGNAL \lcd_instance|count[17]~9COUT1_83\ : std_logic;
SIGNAL \lcd_instance|LessThan3~0_combout\ : std_logic;
SIGNAL \lcd_instance|LessThan3~1_combout\ : std_logic;
SIGNAL \lcd_instance|LessThan3~2_combout\ : std_logic;
SIGNAL \lcd_instance|LessThan3~3_combout\ : std_logic;
SIGNAL \lcd_instance|LessThan3~4_combout\ : std_logic;
SIGNAL \lcd_instance|LessThan3~5_combout\ : std_logic;
SIGNAL \lcd_instance|clk10~regout\ : std_logic;
SIGNAL \main_fsm_state.state_idle2~regout\ : std_logic;
SIGNAL \lcd_start~regout\ : std_logic;
SIGNAL \lcd_instance|reset~1_combout\ : std_logic;
SIGNAL \lcd_instance|reset~regout\ : std_logic;
SIGNAL \lcd_instance|state[1]~4\ : std_logic;
SIGNAL \lcd_instance|count_cmd[2]~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_state.000~regout\ : std_logic;
SIGNAL \lcd_instance|LessThan2~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_state.S1~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_state.S2~regout\ : std_logic;
SIGNAL \lcd_instance|Selector14~0_combout\ : std_logic;
SIGNAL \lcd_instance|Decoder1~0_combout\ : std_logic;
SIGNAL \lcd_instance|char_count[2]~8_combout\ : std_logic;
SIGNAL \lcd_msg_index[1]~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \lcd_instance|Mux7~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux75~0_combout\ : std_logic;
SIGNAL \lcd_instance|char_count[2]~9_combout\ : std_logic;
SIGNAL \lcd_instance|char_count[2]~10_combout\ : std_logic;
SIGNAL \lcd_instance|char_count[0]~1\ : std_logic;
SIGNAL \lcd_instance|char_count[0]~1COUT1_16\ : std_logic;
SIGNAL \lcd_instance|char_count[1]~3\ : std_logic;
SIGNAL \lcd_instance|char_count[1]~3COUT1_18\ : std_logic;
SIGNAL \lcd_instance|char_count[2]~5\ : std_logic;
SIGNAL \lcd_instance|char_count[2]~5COUT1_20\ : std_logic;
SIGNAL \lcd_instance|flag~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][0]~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][0]~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[13][5]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[11][5]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux130~0_combout\ : std_logic;
SIGNAL \lcd_msg_index[1]~_wirecell_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][6]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux130~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[10][5]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux130~2_combout\ : std_logic;
SIGNAL \lcd_instance|Mux130~3_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[4][5]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][5]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~7_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[0][5]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[1][5]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~6_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[2][5]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[3][5]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~5_combout\ : std_logic;
SIGNAL \lcd_instance|Mux130~4_combout\ : std_logic;
SIGNAL \lcd_instance|Mux130~5_combout\ : std_logic;
SIGNAL \lcd_instance|Decoder1~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[10][6]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[11][6]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux134~4_combout\ : std_logic;
SIGNAL \lcd_instance|Mux129~4_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[5][6]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[0][6]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[2][6]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~4_combout\ : std_logic;
SIGNAL \lcd_instance|Mux129~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[7][6]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][6]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux129~6_combout\ : std_logic;
SIGNAL \lcd_instance|Mux129~7_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[9][6]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux129~2_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[12][6]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux129~1_combout\ : std_logic;
SIGNAL \lcd_instance|Mux129~3_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][2]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux31~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][3]~COMBOUT\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[3][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[3][1]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[4][2]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux133~2_combout\ : std_logic;
SIGNAL \lcd_instance|Mux133~3_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[12][2]~regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[13][2]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux132~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux133~6_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[10][2]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][2]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux133~4_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[11][2]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux133~5_combout\ : std_logic;
SIGNAL \lcd_instance|Mux133~7_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[3][2]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[2][2]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[1][2]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[0][2]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux133~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux133~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[12][3]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][3]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[9][3]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[11][3]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux132~1_combout\ : std_logic;
SIGNAL \lcd_instance|Mux132~2_combout\ : std_logic;
SIGNAL \lcd_instance|Mux132~3_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][3]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[7][3]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~3_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[4][3]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[5][3]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~2_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[1][3]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[3][3]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[2][3]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux132~4_combout\ : std_logic;
SIGNAL \lcd_instance|Mux132~5_combout\ : std_logic;
SIGNAL \lcd_instance|Mux132~6_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[0][1]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][4]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[4][4]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux131~2_combout\ : std_logic;
SIGNAL \lcd_instance|Mux131~3_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[10][4]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[11][4]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[9][4]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][4]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux131~4_combout\ : std_logic;
SIGNAL \lcd_instance|Mux131~5_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[13][4]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[12][4]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux131~6_combout\ : std_logic;
SIGNAL \lcd_instance|Mux131~7_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[2][4]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[3][4]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[1][4]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux131~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux131~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[10][1]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[11][1]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux134~5_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[12][1]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][1]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux134~2_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[9][1]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[13][1]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux134~1_combout\ : std_logic;
SIGNAL \lcd_instance|Mux134~3_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[1][1]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~1_combout\ : std_logic;
SIGNAL \lcd_instance|Mux135~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux134~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux38~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][1]~COMBOUT\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[4][1]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[7][1]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][1]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux134~7_combout\ : std_logic;
SIGNAL \lcd_instance|Mux134~8_combout\ : std_logic;
SIGNAL \lcd_instance|Equal3~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[2][0]~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[1][0]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~8_combout\ : std_logic;
SIGNAL \lcd_instance|Mux135~9_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[10][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[11][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[8][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[9][0]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~12_combout\ : std_logic;
SIGNAL \lcd_instance|Mux135~13_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[12][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[13][0]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~14_combout\ : std_logic;
SIGNAL \lcd_instance|Mux135~15_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[7][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[6][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[5][0]~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_msg[4][0]~regout\ : std_logic;
SIGNAL \lcd_instance|Mux135~10_combout\ : std_logic;
SIGNAL \lcd_instance|Mux135~11_combout\ : std_logic;
SIGNAL \lcd_instance|Equal3~1_combout\ : std_logic;
SIGNAL \lcd_instance|Equal0~0_combout\ : std_logic;
SIGNAL \lcd_instance|Equal0~1_combout\ : std_logic;
SIGNAL \lcd_instance|flag~1_combout\ : std_logic;
SIGNAL \lcd_instance|Selector0~0_combout\ : std_logic;
SIGNAL \lcd_instance|reset~0_combout\ : std_logic;
SIGNAL \lcd_instance|flag~2_combout\ : std_logic;
SIGNAL \lcd_instance|flag~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_state.S3~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_state.S4~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_state.S5~regout\ : std_logic;
SIGNAL \lcd_instance|n_flag~regout\ : std_logic;
SIGNAL \lcd_instance|state[2]~1_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_ready~regout\ : std_logic;
SIGNAL \lcd_instance|state[2]~0_combout\ : std_logic;
SIGNAL \lcd_instance|WideOr0~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux147~0_combout\ : std_logic;
SIGNAL \lcd_instance|Mux147~1_combout\ : std_logic;
SIGNAL \lcd_instance|done~0_combout\ : std_logic;
SIGNAL \lcd_instance|done~regout\ : std_logic;
SIGNAL \lcd_start~0_combout\ : std_logic;
SIGNAL \quantity3~combout\ : std_logic;
SIGNAL \quantity2~combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \main_fsm_state.state_idle~regout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \selected_product.10~regout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \cokeQuantity[2]~0_combout\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_19\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \LessThan0~0\ : std_logic;
SIGNAL \LessThan0~1\ : std_logic;
SIGNAL \pepsiQuantity[0]~0_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_19\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_21\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_21\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \LessThan1~0\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \selected_product.01~regout\ : std_logic;
SIGNAL \laysQuantity[2]~0_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~12COUT1_19\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~7COUT1_21\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \selected_product.11~regout\ : std_logic;
SIGNAL \total_cost~0_combout\ : std_logic;
SIGNAL \total_cost~1_combout\ : std_logic;
SIGNAL \main_fsm_state~22\ : std_logic;
SIGNAL \main_fsm_state~23_combout\ : std_logic;
SIGNAL \main_fsm_state.state_selectQuantity~regout\ : std_logic;
SIGNAL \twoRs~combout\ : std_logic;
SIGNAL \oneRs~combout\ : std_logic;
SIGNAL \total_money[4]~0_combout\ : std_logic;
SIGNAL \tenRs~combout\ : std_logic;
SIGNAL \fiveRs~combout\ : std_logic;
SIGNAL \total_money[0]~1_combout\ : std_logic;
SIGNAL \Add11~30_combout\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \total_money[7]~4_combout\ : std_logic;
SIGNAL \Add8~35_combout\ : std_logic;
SIGNAL \Add10~35_combout\ : std_logic;
SIGNAL \total_money[0]~18_combout\ : std_logic;
SIGNAL \total_money[0]~19_combout\ : std_logic;
SIGNAL \Add8~37\ : std_logic;
SIGNAL \Add8~37COUT1_48\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Add10~37\ : std_logic;
SIGNAL \Add10~37COUT1_48\ : std_logic;
SIGNAL \Add10~30_combout\ : std_logic;
SIGNAL \total_money~16_combout\ : std_logic;
SIGNAL \total_money[7]~5_combout\ : std_logic;
SIGNAL \Add11~32\ : std_logic;
SIGNAL \Add11~32COUT1_42\ : std_logic;
SIGNAL \Add11~25_combout\ : std_logic;
SIGNAL \Add10~32\ : std_logic;
SIGNAL \Add10~32COUT1_50\ : std_logic;
SIGNAL \Add10~25_combout\ : std_logic;
SIGNAL \Add9~32\ : std_logic;
SIGNAL \Add9~32COUT1_42\ : std_logic;
SIGNAL \Add9~25_combout\ : std_logic;
SIGNAL \Add8~32\ : std_logic;
SIGNAL \Add8~32COUT1_50\ : std_logic;
SIGNAL \Add8~25_combout\ : std_logic;
SIGNAL \total_money~14_combout\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~27COUT1_44\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~27COUT1_44\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add10~27\ : std_logic;
SIGNAL \Add10~27COUT1_52\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add8~27\ : std_logic;
SIGNAL \Add8~27COUT1_52\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \total_money~12_combout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~22COUT1_46\ : std_logic;
SIGNAL \Add11~15_combout\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~22COUT1_54\ : std_logic;
SIGNAL \Add10~15_combout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~22COUT1_54\ : std_logic;
SIGNAL \Add8~15_combout\ : std_logic;
SIGNAL \Add9~22\ : std_logic;
SIGNAL \Add9~22COUT1_46\ : std_logic;
SIGNAL \Add9~15_combout\ : std_logic;
SIGNAL \total_money~10_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \total_money~8_combout\ : std_logic;
SIGNAL \Add10~12\ : std_logic;
SIGNAL \Add10~12COUT1_56\ : std_logic;
SIGNAL \Add10~5_combout\ : std_logic;
SIGNAL \Add11~12\ : std_logic;
SIGNAL \Add11~12COUT1_48\ : std_logic;
SIGNAL \Add11~5_combout\ : std_logic;
SIGNAL \Add9~12\ : std_logic;
SIGNAL \Add9~12COUT1_48\ : std_logic;
SIGNAL \Add9~5_combout\ : std_logic;
SIGNAL \Add8~12\ : std_logic;
SIGNAL \Add8~12COUT1_56\ : std_logic;
SIGNAL \Add8~5_combout\ : std_logic;
SIGNAL \total_money~6_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~7COUT1_50\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~7COUT1_50\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~7COUT1_58\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~7COUT1_58\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \total_money~2_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \total_cost~6_combout\ : std_logic;
SIGNAL \LessThan4~37_cout0\ : std_logic;
SIGNAL \LessThan4~37COUT1_48\ : std_logic;
SIGNAL \LessThan4~32_cout0\ : std_logic;
SIGNAL \LessThan4~32COUT1_50\ : std_logic;
SIGNAL \LessThan4~27_cout0\ : std_logic;
SIGNAL \LessThan4~27COUT1_52\ : std_logic;
SIGNAL \LessThan4~22_cout0\ : std_logic;
SIGNAL \LessThan4~22COUT1_54\ : std_logic;
SIGNAL \LessThan4~17_cout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \total_cost~3_combout\ : std_logic;
SIGNAL \total_cost~2_combout\ : std_logic;
SIGNAL \total_cost~5_combout\ : std_logic;
SIGNAL \total_cost~4_combout\ : std_logic;
SIGNAL \LessThan4~12_cout0\ : std_logic;
SIGNAL \LessThan4~12COUT1_56\ : std_logic;
SIGNAL \LessThan4~7_cout0\ : std_logic;
SIGNAL \LessThan4~7COUT1_58\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \main_fsm_state.state_payment~regout\ : std_logic;
SIGNAL \main_fsm_state.state_transactionStatus~regout\ : std_logic;
SIGNAL \main_fsm_state.state_endMessage~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \qLED1~regout\ : std_logic;
SIGNAL \qLED2~regout\ : std_logic;
SIGNAL \qLED3~regout\ : std_logic;
SIGNAL \lcd_instance|Selector12~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_dat[0]~7_combout\ : std_logic;
SIGNAL \lcd_instance|WideOr4~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd[0]~0_combout\ : std_logic;
SIGNAL \lcd_instance|LessThan2~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_cmd~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd[1]~COMBOUT\ : std_logic;
SIGNAL \lcd_instance|Selector9~0\ : std_logic;
SIGNAL \lcd_instance|lcd_cmd~1_combout\ : std_logic;
SIGNAL \lcd_instance|Selector9~1_combout\ : std_logic;
SIGNAL \lcd_instance|Selector5~0_combout\ : std_logic;
SIGNAL \lcd_instance|lcd_rs~regout\ : std_logic;
SIGNAL \lcd_instance|lcd_en~regout\ : std_logic;
SIGNAL total_money : std_logic_vector(7 DOWNTO 0);
SIGNAL total_cost : std_logic_vector(7 DOWNTO 0);
SIGNAL selected_quantity : std_logic_vector(2 DOWNTO 0);
SIGNAL pepsiQuantity : std_logic_vector(2 DOWNTO 0);
SIGNAL lcd_msg_index : std_logic_vector(3 DOWNTO 0);
SIGNAL laysQuantity : std_logic_vector(2 DOWNTO 0);
SIGNAL cokeQuantity : std_logic_vector(2 DOWNTO 0);
SIGNAL \lcd_instance|lcd_char\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_instance|lcd_dat\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_instance|lcd\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_instance|hundreds\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \lcd_instance|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lcd_instance|count_cmd\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \lcd_instance|char_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \lcd_instance|count\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \ALT_INV_pepsiQuantity[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_selected_product.01~regout\ : std_logic;
SIGNAL ALT_INV_lcd_msg_index : std_logic_vector(3 DOWNTO 2);
SIGNAL \lcd_instance|ALT_INV_reset~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_pepsi <= pepsi;
ww_lays <= lays;
ww_coke <= coke;
ww_quantity1 <= quantity1;
ww_quantity2 <= quantity2;
ww_quantity3 <= quantity3;
oqLED1 <= ww_oqLED1;
oqLED2 <= ww_oqLED2;
oqLED3 <= ww_oqLED3;
start_1 <= ww_start_1;
done_1 <= ww_done_1;
ww_refill <= refill;
ww_tenRs <= tenRs;
ww_fiveRs <= fiveRs;
ww_twoRs <= twoRs;
ww_oneRs <= oneRs;
changeAmount <= ww_changeAmount;
lcd <= ww_lcd;
lcd_rs <= ww_lcd_rs;
lcd_rw <= ww_lcd_rw;
lcd_en <= ww_lcd_en;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_pepsiQuantity[0]~0_combout\ <= NOT \pepsiQuantity[0]~0_combout\;
\ALT_INV_selected_product.01~regout\ <= NOT \selected_product.01~regout\;
ALT_INV_lcd_msg_index(3) <= NOT lcd_msg_index(3);
ALT_INV_lcd_msg_index(2) <= NOT lcd_msg_index(2);
\lcd_instance|ALT_INV_reset~regout\ <= NOT \lcd_instance|reset~regout\;

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
\quantity1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_quantity1,
	combout => \quantity1~combout\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\coke~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_coke,
	combout => \coke~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lays~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_lays,
	combout => \lays~combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\pepsi~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_pepsi,
	combout => \pepsi~combout\);

-- Location: LC_X5_Y5_N4
\lcd_start~1\ : maxv_lcell
-- Equation(s):
-- \lcd_start~1_combout\ = (!\coke~combout\ & (((!\lays~combout\ & !\pepsi~combout\))))

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
	dataa => \coke~combout\,
	datac => \lays~combout\,
	datad => \pepsi~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_start~1_combout\);

-- Location: LC_X14_Y6_N9
\lcd_instance|state[1]~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state[1]~3_combout\ = ((\lcd_instance|state\(0) & ((\lcd_instance|state\(1)) # (!\lcd_instance|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(2),
	datac => \lcd_instance|state\(0),
	datad => \lcd_instance|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|state[1]~3_combout\);

-- Location: LC_X13_Y5_N1
\lcd_instance|count[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(0) = DFFEAS(((!\lcd_instance|count\(0))), GLOBAL(\clk~combout\), VCC, , , , , \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[0]~25\ = CARRY(((\lcd_instance|count\(0))))
-- \lcd_instance|count[0]~25COUT1_55\ = CARRY(((\lcd_instance|count\(0))))

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
	datab => \lcd_instance|count\(0),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(0),
	cout0 => \lcd_instance|count[0]~25\,
	cout1 => \lcd_instance|count[0]~25COUT1_55\);

-- Location: LC_X13_Y5_N2
\lcd_instance|count[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(1) = DFFEAS(\lcd_instance|count\(1) $ ((((\lcd_instance|count[0]~25\)))), GLOBAL(\clk~combout\), VCC, , , , , \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[1]~27\ = CARRY(((!\lcd_instance|count[0]~25\)) # (!\lcd_instance|count\(1)))
-- \lcd_instance|count[1]~27COUT1_57\ = CARRY(((!\lcd_instance|count[0]~25COUT1_55\)) # (!\lcd_instance|count\(1)))

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
	dataa => \lcd_instance|count\(1),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin0 => \lcd_instance|count[0]~25\,
	cin1 => \lcd_instance|count[0]~25COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(1),
	cout0 => \lcd_instance|count[1]~27\,
	cout1 => \lcd_instance|count[1]~27COUT1_57\);

-- Location: LC_X13_Y5_N3
\lcd_instance|count[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(2) = DFFEAS(\lcd_instance|count\(2) $ ((((!\lcd_instance|count[1]~27\)))), GLOBAL(\clk~combout\), VCC, , , , , \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[2]~29\ = CARRY((\lcd_instance|count\(2) & ((!\lcd_instance|count[1]~27\))))
-- \lcd_instance|count[2]~29COUT1_59\ = CARRY((\lcd_instance|count\(2) & ((!\lcd_instance|count[1]~27COUT1_57\))))

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
	dataa => \lcd_instance|count\(2),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin0 => \lcd_instance|count[1]~27\,
	cin1 => \lcd_instance|count[1]~27COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(2),
	cout0 => \lcd_instance|count[2]~29\,
	cout1 => \lcd_instance|count[2]~29COUT1_59\);

-- Location: LC_X13_Y5_N4
\lcd_instance|count[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(3) = DFFEAS((\lcd_instance|count\(3) $ ((\lcd_instance|count[2]~29\))), GLOBAL(\clk~combout\), VCC, , , , , \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[3]~31\ = CARRY(((!\lcd_instance|count[2]~29COUT1_59\) # (!\lcd_instance|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \lcd_instance|count\(3),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin0 => \lcd_instance|count[2]~29\,
	cin1 => \lcd_instance|count[2]~29COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(3),
	cout => \lcd_instance|count[3]~31\);

-- Location: LC_X13_Y5_N5
\lcd_instance|count[4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(4) = DFFEAS(\lcd_instance|count\(4) $ ((((!\lcd_instance|count[3]~31\)))), GLOBAL(\clk~combout\), VCC, , , , , \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[4]~33\ = CARRY((\lcd_instance|count\(4) & ((!\lcd_instance|count[3]~31\))))
-- \lcd_instance|count[4]~33COUT1_61\ = CARRY((\lcd_instance|count\(4) & ((!\lcd_instance|count[3]~31\))))

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
	dataa => \lcd_instance|count\(4),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[3]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(4),
	cout0 => \lcd_instance|count[4]~33\,
	cout1 => \lcd_instance|count[4]~33COUT1_61\);

-- Location: LC_X13_Y5_N6
\lcd_instance|count[5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(5) = DFFEAS(\lcd_instance|count\(5) $ (((((!\lcd_instance|count[3]~31\ & \lcd_instance|count[4]~33\) # (\lcd_instance|count[3]~31\ & \lcd_instance|count[4]~33COUT1_61\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[5]~35\ = CARRY(((!\lcd_instance|count[4]~33\)) # (!\lcd_instance|count\(5)))
-- \lcd_instance|count[5]~35COUT1_63\ = CARRY(((!\lcd_instance|count[4]~33COUT1_61\)) # (!\lcd_instance|count\(5)))

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
	dataa => \lcd_instance|count\(5),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[3]~31\,
	cin0 => \lcd_instance|count[4]~33\,
	cin1 => \lcd_instance|count[4]~33COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(5),
	cout0 => \lcd_instance|count[5]~35\,
	cout1 => \lcd_instance|count[5]~35COUT1_63\);

-- Location: LC_X13_Y5_N7
\lcd_instance|count[6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(6) = DFFEAS((\lcd_instance|count\(6) $ ((!(!\lcd_instance|count[3]~31\ & \lcd_instance|count[5]~35\) # (\lcd_instance|count[3]~31\ & \lcd_instance|count[5]~35COUT1_63\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[6]~37\ = CARRY(((\lcd_instance|count\(6) & !\lcd_instance|count[5]~35\)))
-- \lcd_instance|count[6]~37COUT1_65\ = CARRY(((\lcd_instance|count\(6) & !\lcd_instance|count[5]~35COUT1_63\)))

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
	datab => \lcd_instance|count\(6),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[3]~31\,
	cin0 => \lcd_instance|count[5]~35\,
	cin1 => \lcd_instance|count[5]~35COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(6),
	cout0 => \lcd_instance|count[6]~37\,
	cout1 => \lcd_instance|count[6]~37COUT1_65\);

-- Location: LC_X13_Y5_N8
\lcd_instance|count[7]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(7) = DFFEAS(\lcd_instance|count\(7) $ (((((!\lcd_instance|count[3]~31\ & \lcd_instance|count[6]~37\) # (\lcd_instance|count[3]~31\ & \lcd_instance|count[6]~37COUT1_65\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[7]~13\ = CARRY(((!\lcd_instance|count[6]~37\)) # (!\lcd_instance|count\(7)))
-- \lcd_instance|count[7]~13COUT1_67\ = CARRY(((!\lcd_instance|count[6]~37COUT1_65\)) # (!\lcd_instance|count\(7)))

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
	dataa => \lcd_instance|count\(7),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[3]~31\,
	cin0 => \lcd_instance|count[6]~37\,
	cin1 => \lcd_instance|count[6]~37COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(7),
	cout0 => \lcd_instance|count[7]~13\,
	cout1 => \lcd_instance|count[7]~13COUT1_67\);

-- Location: LC_X13_Y5_N9
\lcd_instance|count[8]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(8) = DFFEAS((\lcd_instance|count\(8) $ ((!(!\lcd_instance|count[3]~31\ & \lcd_instance|count[7]~13\) # (\lcd_instance|count[3]~31\ & \lcd_instance|count[7]~13COUT1_67\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[8]~17\ = CARRY(((\lcd_instance|count\(8) & !\lcd_instance|count[7]~13COUT1_67\)))

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
	datab => \lcd_instance|count\(8),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[3]~31\,
	cin0 => \lcd_instance|count[7]~13\,
	cin1 => \lcd_instance|count[7]~13COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(8),
	cout => \lcd_instance|count[8]~17\);

-- Location: LC_X14_Y5_N0
\lcd_instance|count[9]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(9) = DFFEAS((\lcd_instance|count\(9) $ ((\lcd_instance|count[8]~17\))), GLOBAL(\clk~combout\), VCC, , , , , \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[9]~19\ = CARRY(((!\lcd_instance|count[8]~17\) # (!\lcd_instance|count\(9))))
-- \lcd_instance|count[9]~19COUT1_69\ = CARRY(((!\lcd_instance|count[8]~17\) # (!\lcd_instance|count\(9))))

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
	datab => \lcd_instance|count\(9),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[8]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(9),
	cout0 => \lcd_instance|count[9]~19\,
	cout1 => \lcd_instance|count[9]~19COUT1_69\);

-- Location: LC_X14_Y5_N1
\lcd_instance|count[10]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(10) = DFFEAS((\lcd_instance|count\(10) $ ((!(!\lcd_instance|count[8]~17\ & \lcd_instance|count[9]~19\) # (\lcd_instance|count[8]~17\ & \lcd_instance|count[9]~19COUT1_69\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[10]~21\ = CARRY(((\lcd_instance|count\(10) & !\lcd_instance|count[9]~19\)))
-- \lcd_instance|count[10]~21COUT1_71\ = CARRY(((\lcd_instance|count\(10) & !\lcd_instance|count[9]~19COUT1_69\)))

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
	datab => \lcd_instance|count\(10),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[8]~17\,
	cin0 => \lcd_instance|count[9]~19\,
	cin1 => \lcd_instance|count[9]~19COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(10),
	cout0 => \lcd_instance|count[10]~21\,
	cout1 => \lcd_instance|count[10]~21COUT1_71\);

-- Location: LC_X14_Y5_N2
\lcd_instance|count[11]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(11) = DFFEAS((\lcd_instance|count\(11) $ (((!\lcd_instance|count[8]~17\ & \lcd_instance|count[10]~21\) # (\lcd_instance|count[8]~17\ & \lcd_instance|count[10]~21COUT1_71\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[11]~23\ = CARRY(((!\lcd_instance|count[10]~21\) # (!\lcd_instance|count\(11))))
-- \lcd_instance|count[11]~23COUT1_73\ = CARRY(((!\lcd_instance|count[10]~21COUT1_71\) # (!\lcd_instance|count\(11))))

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
	datab => \lcd_instance|count\(11),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[8]~17\,
	cin0 => \lcd_instance|count[10]~21\,
	cin1 => \lcd_instance|count[10]~21COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(11),
	cout0 => \lcd_instance|count[11]~23\,
	cout1 => \lcd_instance|count[11]~23COUT1_73\);

-- Location: LC_X14_Y5_N3
\lcd_instance|count[12]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(12) = DFFEAS(\lcd_instance|count\(12) $ ((((!(!\lcd_instance|count[8]~17\ & \lcd_instance|count[11]~23\) # (\lcd_instance|count[8]~17\ & \lcd_instance|count[11]~23COUT1_73\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[12]~15\ = CARRY((\lcd_instance|count\(12) & ((!\lcd_instance|count[11]~23\))))
-- \lcd_instance|count[12]~15COUT1_75\ = CARRY((\lcd_instance|count\(12) & ((!\lcd_instance|count[11]~23COUT1_73\))))

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
	dataa => \lcd_instance|count\(12),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[8]~17\,
	cin0 => \lcd_instance|count[11]~23\,
	cin1 => \lcd_instance|count[11]~23COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(12),
	cout0 => \lcd_instance|count[12]~15\,
	cout1 => \lcd_instance|count[12]~15COUT1_75\);

-- Location: LC_X14_Y5_N4
\lcd_instance|count[13]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(13) = DFFEAS(\lcd_instance|count\(13) $ (((((!\lcd_instance|count[8]~17\ & \lcd_instance|count[12]~15\) # (\lcd_instance|count[8]~17\ & \lcd_instance|count[12]~15COUT1_75\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[13]~11\ = CARRY(((!\lcd_instance|count[12]~15COUT1_75\)) # (!\lcd_instance|count\(13)))

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
	dataa => \lcd_instance|count\(13),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[8]~17\,
	cin0 => \lcd_instance|count[12]~15\,
	cin1 => \lcd_instance|count[12]~15COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(13),
	cout => \lcd_instance|count[13]~11\);

-- Location: LC_X14_Y5_N5
\lcd_instance|count[14]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(14) = DFFEAS(\lcd_instance|count\(14) $ ((((!\lcd_instance|count[13]~11\)))), GLOBAL(\clk~combout\), VCC, , , , , \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[14]~3\ = CARRY((\lcd_instance|count\(14) & ((!\lcd_instance|count[13]~11\))))
-- \lcd_instance|count[14]~3COUT1_77\ = CARRY((\lcd_instance|count\(14) & ((!\lcd_instance|count[13]~11\))))

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
	dataa => \lcd_instance|count\(14),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[13]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(14),
	cout0 => \lcd_instance|count[14]~3\,
	cout1 => \lcd_instance|count[14]~3COUT1_77\);

-- Location: LC_X14_Y5_N6
\lcd_instance|count[15]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(15) = DFFEAS(\lcd_instance|count\(15) $ (((((!\lcd_instance|count[13]~11\ & \lcd_instance|count[14]~3\) # (\lcd_instance|count[13]~11\ & \lcd_instance|count[14]~3COUT1_77\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[15]~5\ = CARRY(((!\lcd_instance|count[14]~3\)) # (!\lcd_instance|count\(15)))
-- \lcd_instance|count[15]~5COUT1_79\ = CARRY(((!\lcd_instance|count[14]~3COUT1_77\)) # (!\lcd_instance|count\(15)))

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
	dataa => \lcd_instance|count\(15),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[13]~11\,
	cin0 => \lcd_instance|count[14]~3\,
	cin1 => \lcd_instance|count[14]~3COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(15),
	cout0 => \lcd_instance|count[15]~5\,
	cout1 => \lcd_instance|count[15]~5COUT1_79\);

-- Location: LC_X14_Y5_N7
\lcd_instance|count[16]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(16) = DFFEAS((\lcd_instance|count\(16) $ ((!(!\lcd_instance|count[13]~11\ & \lcd_instance|count[15]~5\) # (\lcd_instance|count[13]~11\ & \lcd_instance|count[15]~5COUT1_79\)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[16]~7\ = CARRY(((\lcd_instance|count\(16) & !\lcd_instance|count[15]~5\)))
-- \lcd_instance|count[16]~7COUT1_81\ = CARRY(((\lcd_instance|count\(16) & !\lcd_instance|count[15]~5COUT1_79\)))

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
	datab => \lcd_instance|count\(16),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[13]~11\,
	cin0 => \lcd_instance|count[15]~5\,
	cin1 => \lcd_instance|count[15]~5COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(16),
	cout0 => \lcd_instance|count[16]~7\,
	cout1 => \lcd_instance|count[16]~7COUT1_81\);

-- Location: LC_X14_Y5_N8
\lcd_instance|count[17]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(17) = DFFEAS(\lcd_instance|count\(17) $ (((((!\lcd_instance|count[13]~11\ & \lcd_instance|count[16]~7\) # (\lcd_instance|count[13]~11\ & \lcd_instance|count[16]~7COUT1_81\))))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )
-- \lcd_instance|count[17]~9\ = CARRY(((!\lcd_instance|count[16]~7\)) # (!\lcd_instance|count\(17)))
-- \lcd_instance|count[17]~9COUT1_83\ = CARRY(((!\lcd_instance|count[16]~7COUT1_81\)) # (!\lcd_instance|count\(17)))

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
	dataa => \lcd_instance|count\(17),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[13]~11\,
	cin0 => \lcd_instance|count[16]~7\,
	cin1 => \lcd_instance|count[16]~7COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(17),
	cout0 => \lcd_instance|count[17]~9\,
	cout1 => \lcd_instance|count[17]~9COUT1_83\);

-- Location: LC_X14_Y5_N9
\lcd_instance|count[18]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count\(18) = DFFEAS((((!\lcd_instance|count[13]~11\ & \lcd_instance|count[17]~9\) # (\lcd_instance|count[13]~11\ & \lcd_instance|count[17]~9COUT1_83\) $ (!\lcd_instance|count\(18)))), GLOBAL(\clk~combout\), VCC, , , , , 
-- \lcd_instance|LessThan3~5_combout\, )

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
	datad => \lcd_instance|count\(18),
	aclr => GND,
	sclr => \lcd_instance|LessThan3~5_combout\,
	cin => \lcd_instance|count[13]~11\,
	cin0 => \lcd_instance|count[17]~9\,
	cin1 => \lcd_instance|count[17]~9COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count\(18));

-- Location: LC_X12_Y5_N5
\lcd_instance|LessThan3~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan3~0_combout\ = (\lcd_instance|count\(14) & (\lcd_instance|count\(17) & (\lcd_instance|count\(16) & \lcd_instance|count\(15))))

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
	dataa => \lcd_instance|count\(14),
	datab => \lcd_instance|count\(17),
	datac => \lcd_instance|count\(16),
	datad => \lcd_instance|count\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan3~0_combout\);

-- Location: LC_X12_Y5_N0
\lcd_instance|LessThan3~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan3~1_combout\ = (\lcd_instance|count\(10)) # ((\lcd_instance|count\(8)) # ((\lcd_instance|count\(9)) # (\lcd_instance|count\(11))))

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
	dataa => \lcd_instance|count\(10),
	datab => \lcd_instance|count\(8),
	datac => \lcd_instance|count\(9),
	datad => \lcd_instance|count\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan3~1_combout\);

-- Location: LC_X13_Y5_N0
\lcd_instance|LessThan3~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan3~2_combout\ = (\lcd_instance|count\(2)) # ((\lcd_instance|count\(1)) # ((\lcd_instance|count\(3)) # (\lcd_instance|count\(0))))

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
	dataa => \lcd_instance|count\(2),
	datab => \lcd_instance|count\(1),
	datac => \lcd_instance|count\(3),
	datad => \lcd_instance|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan3~2_combout\);

-- Location: LC_X12_Y5_N6
\lcd_instance|LessThan3~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan3~3_combout\ = (\lcd_instance|count\(5)) # ((\lcd_instance|count\(6)) # ((\lcd_instance|count\(4) & \lcd_instance|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|count\(5),
	datab => \lcd_instance|count\(4),
	datac => \lcd_instance|LessThan3~2_combout\,
	datad => \lcd_instance|count\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan3~3_combout\);

-- Location: LC_X12_Y5_N7
\lcd_instance|LessThan3~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan3~4_combout\ = (\lcd_instance|count\(12) & ((\lcd_instance|LessThan3~1_combout\) # ((\lcd_instance|count\(7) & \lcd_instance|LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|count\(12),
	datab => \lcd_instance|count\(7),
	datac => \lcd_instance|LessThan3~1_combout\,
	datad => \lcd_instance|LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan3~4_combout\);

-- Location: LC_X12_Y5_N8
\lcd_instance|LessThan3~5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan3~5_combout\ = (\lcd_instance|count\(18)) # ((\lcd_instance|LessThan3~0_combout\ & ((\lcd_instance|count\(13)) # (\lcd_instance|LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|count\(13),
	datab => \lcd_instance|count\(18),
	datac => \lcd_instance|LessThan3~0_combout\,
	datad => \lcd_instance|LessThan3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan3~5_combout\);

-- Location: LC_X12_Y5_N9
\lcd_instance|clk10\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|clk10~regout\ = DFFEAS((\lcd_instance|clk10~regout\ $ (((\lcd_instance|LessThan3~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	datab => \lcd_instance|clk10~regout\,
	datad => \lcd_instance|LessThan3~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|clk10~regout\);

-- Location: LC_X6_Y5_N1
\main_fsm_state.state_idle2\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state.state_idle2~regout\ = DFFEAS((\lcd_start~1_combout\ & (((!\lcd_instance|done~regout\ & \main_fsm_state.state_idle2~regout\)) # (!\main_fsm_state.state_idle~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|done~regout\,
	datab => \lcd_start~1_combout\,
	datac => \main_fsm_state.state_idle~regout\,
	datad => \main_fsm_state.state_idle2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_fsm_state.state_idle2~regout\);

-- Location: LC_X6_Y5_N6
lcd_start : maxv_lcell
-- Equation(s):
-- \lcd_start~regout\ = DFFEAS((\main_fsm_state.state_idle2~regout\ & (((\lcd_start~0_combout\)))) # (!\main_fsm_state.state_idle2~regout\ & ((\lcd_start~regout\) # ((!\main_fsm_state.state_idle~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0bb",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_start~regout\,
	datab => \main_fsm_state.state_idle~regout\,
	datac => \lcd_start~0_combout\,
	datad => \main_fsm_state.state_idle2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_start~regout\);

-- Location: LC_X14_Y6_N8
\lcd_instance|reset~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|reset~1_combout\ = (\lcd_instance|state\(0) & (\lcd_instance|state\(1) & (\lcd_start~regout\ & !\lcd_instance|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(0),
	datab => \lcd_instance|state\(1),
	datac => \lcd_start~regout\,
	datad => \lcd_instance|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|reset~1_combout\);

-- Location: LC_X16_Y8_N6
\lcd_instance|reset\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|reset~regout\ = DFFEAS((\lcd_instance|reset~1_combout\) # ((\lcd_instance|reset~regout\ & ((\lcd_instance|state\(0)) # (\lcd_instance|state[1]~4\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|reset~1_combout\,
	datab => \lcd_instance|state\(0),
	datac => \lcd_instance|reset~regout\,
	datad => \lcd_instance|state[1]~4\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|reset~regout\);

-- Location: LC_X15_Y6_N2
\lcd_instance|n_reset\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state[1]~4\ = ((\lcd_instance|state\(1) & ((!B1_n_reset) # (!\lcd_instance|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	datab => \lcd_instance|state\(2),
	datac => \lcd_instance|reset~regout\,
	datad => \lcd_instance|state\(1),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|state[1]~4\,
	regout => \lcd_instance|n_reset~regout\);

-- Location: LC_X16_Y8_N1
\lcd_instance|count_cmd[2]~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count_cmd[2]~1_combout\ = (((\lcd_instance|reset~regout\) # (\lcd_instance|lcd_state.S2~regout\)))

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
	datac => \lcd_instance|reset~regout\,
	datad => \lcd_instance|lcd_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|count_cmd[2]~1_combout\);

-- Location: LC_X16_Y8_N2
\lcd_instance|lcd_state.000\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_state.000~regout\ = DFFEAS((((!\lcd_instance|count_cmd[2]~1_combout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , , )

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
	clk => \lcd_instance|clk10~regout\,
	datad => \lcd_instance|count_cmd[2]~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_state.000~regout\);

-- Location: LC_X14_Y8_N2
\lcd_instance|count_cmd[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count_cmd\(1) = DFFEAS((\lcd_instance|count_cmd\(1) $ ((\lcd_instance|count_cmd\(0)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , \lcd_instance|count_cmd[2]~1_combout\, , , \lcd_instance|reset~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	datab => \lcd_instance|count_cmd\(1),
	datac => \lcd_instance|count_cmd\(0),
	aclr => GND,
	sclr => \lcd_instance|reset~regout\,
	ena => \lcd_instance|count_cmd[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count_cmd\(1));

-- Location: LC_X14_Y8_N9
\lcd_instance|count_cmd[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count_cmd\(2) = DFFEAS(\lcd_instance|count_cmd\(2) $ (((\lcd_instance|count_cmd\(0) & (\lcd_instance|count_cmd\(1))))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , \lcd_instance|count_cmd[2]~1_combout\, , , \lcd_instance|reset~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6c6c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|count_cmd\(0),
	datab => \lcd_instance|count_cmd\(2),
	datac => \lcd_instance|count_cmd\(1),
	aclr => GND,
	sclr => \lcd_instance|reset~regout\,
	ena => \lcd_instance|count_cmd[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count_cmd\(2));

-- Location: LC_X14_Y8_N1
\lcd_instance|LessThan2~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan2~1_combout\ = (((!\lcd_instance|count_cmd\(0) & !\lcd_instance|count_cmd\(1))) # (!\lcd_instance|count_cmd\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "333f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|count_cmd\(2),
	datac => \lcd_instance|count_cmd\(0),
	datad => \lcd_instance|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan2~1_combout\);

-- Location: LC_X13_Y8_N6
\lcd_instance|lcd_state.S1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_state.S1~regout\ = DFFEAS(((!\lcd_instance|lcd_state.000~regout\ & (!\lcd_instance|reset~regout\ & \lcd_instance|LessThan2~1_combout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	datab => \lcd_instance|lcd_state.000~regout\,
	datac => \lcd_instance|reset~regout\,
	datad => \lcd_instance|LessThan2~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_state.S1~regout\);

-- Location: LC_X16_Y8_N8
\lcd_instance|lcd_state.S2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_state.S2~regout\ = DFFEAS((!\lcd_instance|reset~regout\ & (((\lcd_instance|lcd_state.S1~regout\)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|reset~regout\,
	datac => \lcd_instance|lcd_state.S1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_state.S2~regout\);

-- Location: LC_X15_Y8_N6
\lcd_instance|count_cmd[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|count_cmd\(0) = DFFEAS(((!\lcd_instance|reset~regout\ & (\lcd_instance|count_cmd\(0) $ (\lcd_instance|lcd_state.S2~regout\)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "050a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|count_cmd\(0),
	datac => \lcd_instance|reset~regout\,
	datad => \lcd_instance|lcd_state.S2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|count_cmd\(0));

-- Location: LC_X15_Y8_N1
\lcd_instance|Selector14~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector14~0_combout\ = (!\lcd_instance|lcd_state.000~regout\ & (\lcd_instance|count_cmd\(2) & ((\lcd_instance|count_cmd\(0)) # (\lcd_instance|count_cmd\(1)))))

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
	dataa => \lcd_instance|count_cmd\(0),
	datab => \lcd_instance|lcd_state.000~regout\,
	datac => \lcd_instance|count_cmd\(2),
	datad => \lcd_instance|count_cmd\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector14~0_combout\);

-- Location: LC_X14_Y6_N7
\lcd_instance|Decoder1~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Decoder1~0_combout\ = ((!\lcd_instance|state\(1) & ((!\lcd_instance|state\(2)))))

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
	datab => \lcd_instance|state\(1),
	datad => \lcd_instance|state\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Decoder1~0_combout\);

-- Location: LC_X12_Y6_N1
\lcd_instance|char_count[2]~8\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|char_count[2]~8_combout\ = ((\lcd_instance|state\(0)) # ((\lcd_instance|state\(2)) # (!\lcd_instance|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|state\(0),
	datac => \lcd_instance|state\(2),
	datad => \lcd_instance|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|char_count[2]~8_combout\);

-- Location: LC_X9_Y5_N7
\lcd_msg_index[0]\ : maxv_lcell
-- Equation(s):
-- lcd_msg_index(0) = DFFEAS((\main_fsm_state.state_idle2~regout\ & ((\lcd_start~0_combout\ $ (lcd_msg_index(0))))) # (!\main_fsm_state.state_idle2~regout\ & (!\main_fsm_state.state_endMessage~regout\ & ((lcd_msg_index(0))))), GLOBAL(\clk~combout\), VCC, , , 
-- , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \main_fsm_state.state_endMessage~regout\,
	datab => \lcd_start~0_combout\,
	datac => lcd_msg_index(0),
	datad => \main_fsm_state.state_idle2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_msg_index(0));

-- Location: LC_X9_Y5_N4
\lcd_msg_index[1]~0\ : maxv_lcell
-- Equation(s):
-- \lcd_msg_index[1]~0_combout\ = ((\main_fsm_state.state_idle2~regout\ & ((\lcd_start~0_combout\))) # (!\main_fsm_state.state_idle2~regout\ & (\main_fsm_state.state_endMessage~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm_state.state_idle2~regout\,
	datac => \main_fsm_state.state_endMessage~regout\,
	datad => \lcd_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_msg_index[1]~0_combout\);

-- Location: LC_X9_Y5_N5
\lcd_msg_index[1]\ : maxv_lcell
-- Equation(s):
-- lcd_msg_index(1) = DFFEAS((!\main_fsm_state.state_endMessage~regout\ & (lcd_msg_index(1) $ ((lcd_msg_index(0))))), GLOBAL(\clk~combout\), VCC, , \lcd_msg_index[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0606",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => \main_fsm_state.state_endMessage~regout\,
	aclr => GND,
	ena => \lcd_msg_index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_msg_index(1));

-- Location: LC_X9_Y5_N9
\Selector18~0\ : maxv_lcell
-- Equation(s):
-- \Selector18~0_combout\ = lcd_msg_index(3) $ (((lcd_msg_index(1) & (lcd_msg_index(0) & lcd_msg_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector18~0_combout\);

-- Location: LC_X9_Y5_N1
\lcd_msg_index[3]\ : maxv_lcell
-- Equation(s):
-- lcd_msg_index(3) = DFFEAS((((\main_fsm_state.state_endMessage~regout\) # (\Selector18~0_combout\))), GLOBAL(\clk~combout\), VCC, , \lcd_msg_index[1]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \main_fsm_state.state_endMessage~regout\,
	datad => \Selector18~0_combout\,
	aclr => GND,
	ena => \lcd_msg_index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_msg_index(3));

-- Location: LC_X9_Y5_N6
\Selector19~0\ : maxv_lcell
-- Equation(s):
-- \Selector19~0_combout\ = (lcd_msg_index(1) & ((lcd_msg_index(0) & (!lcd_msg_index(2) & lcd_msg_index(3))) # (!lcd_msg_index(0) & (lcd_msg_index(2))))) # (!lcd_msg_index(1) & (((lcd_msg_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7870",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector19~0_combout\);

-- Location: LC_X9_Y5_N3
\Selector19~1\ : maxv_lcell
-- Equation(s):
-- \Selector19~1_combout\ = ((\lcd_start~0_combout\ & (\Selector19~0_combout\)) # (!\lcd_start~0_combout\ & ((lcd_msg_index(2))))) # (!\main_fsm_state.state_idle2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbf3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \main_fsm_state.state_idle2~regout\,
	datac => lcd_msg_index(2),
	datad => \lcd_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector19~1_combout\);

-- Location: LC_X9_Y5_N0
\lcd_msg_index[2]\ : maxv_lcell
-- Equation(s):
-- lcd_msg_index(2) = DFFEAS((\Selector19~1_combout\ & ((\main_fsm_state.state_endMessage~regout\) # ((\main_fsm_state.state_idle2~regout\) # (lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \main_fsm_state.state_endMessage~regout\,
	datab => \main_fsm_state.state_idle2~regout\,
	datac => lcd_msg_index(2),
	datad => \Selector19~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => lcd_msg_index(2));

-- Location: LC_X12_Y6_N5
\lcd_instance|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux7~0_combout\ = (((!lcd_msg_index(2) & !lcd_msg_index(3))))

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
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux7~0_combout\);

-- Location: LC_X9_Y6_N6
\lcd_instance|Mux75~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux75~0_combout\ = (((!lcd_msg_index(1) & !lcd_msg_index(0))))

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
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux75~0_combout\);

-- Location: LC_X12_Y6_N3
\lcd_instance|char_count[2]~9\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|char_count[2]~9_combout\ = (!\lcd_instance|state\(1) & ((\lcd_instance|state\(0)) # ((!\lcd_instance|Mux75~0_combout\) # (!\lcd_instance|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(1),
	datab => \lcd_instance|state\(0),
	datac => \lcd_instance|Mux7~0_combout\,
	datad => \lcd_instance|Mux75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|char_count[2]~9_combout\);

-- Location: LC_X12_Y6_N4
\lcd_instance|char_count[2]~10\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|char_count[2]~10_combout\ = (!\lcd_instance|char_count[2]~9_combout\ & (((\lcd_instance|state\(0) & !\lcd_start~regout\)) # (!\lcd_instance|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "005d",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(2),
	datab => \lcd_instance|state\(0),
	datac => \lcd_start~regout\,
	datad => \lcd_instance|char_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|char_count[2]~10_combout\);

-- Location: LC_X12_Y6_N6
\lcd_instance|char_count[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|char_count\(0) = DFFEAS(\lcd_instance|char_count\(0) $ ((\lcd_instance|n_flag~regout\)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|char_count[2]~10_combout\, , , \lcd_instance|char_count[2]~8_combout\, )
-- \lcd_instance|char_count[0]~1\ = CARRY((\lcd_instance|char_count\(0) & (\lcd_instance|n_flag~regout\)))
-- \lcd_instance|char_count[0]~1COUT1_16\ = CARRY((\lcd_instance|char_count\(0) & (\lcd_instance|n_flag~regout\)))

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
	dataa => \lcd_instance|char_count\(0),
	datab => \lcd_instance|n_flag~regout\,
	aclr => GND,
	sclr => \lcd_instance|char_count[2]~8_combout\,
	ena => \lcd_instance|char_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|char_count\(0),
	cout0 => \lcd_instance|char_count[0]~1\,
	cout1 => \lcd_instance|char_count[0]~1COUT1_16\);

-- Location: LC_X12_Y6_N7
\lcd_instance|char_count[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|char_count\(1) = DFFEAS((\lcd_instance|char_count\(1) $ ((\lcd_instance|char_count[0]~1\))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|char_count[2]~10_combout\, , , \lcd_instance|char_count[2]~8_combout\, )
-- \lcd_instance|char_count[1]~3\ = CARRY(((!\lcd_instance|char_count[0]~1\) # (!\lcd_instance|char_count\(1))))
-- \lcd_instance|char_count[1]~3COUT1_18\ = CARRY(((!\lcd_instance|char_count[0]~1COUT1_16\) # (!\lcd_instance|char_count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \lcd_instance|char_count\(1),
	aclr => GND,
	sclr => \lcd_instance|char_count[2]~8_combout\,
	ena => \lcd_instance|char_count[2]~10_combout\,
	cin0 => \lcd_instance|char_count[0]~1\,
	cin1 => \lcd_instance|char_count[0]~1COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|char_count\(1),
	cout0 => \lcd_instance|char_count[1]~3\,
	cout1 => \lcd_instance|char_count[1]~3COUT1_18\);

-- Location: LC_X12_Y6_N8
\lcd_instance|char_count[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|char_count\(2) = DFFEAS(\lcd_instance|char_count\(2) $ ((((!\lcd_instance|char_count[1]~3\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|char_count[2]~10_combout\, , , \lcd_instance|char_count[2]~8_combout\, )
-- \lcd_instance|char_count[2]~5\ = CARRY((\lcd_instance|char_count\(2) & ((!\lcd_instance|char_count[1]~3\))))
-- \lcd_instance|char_count[2]~5COUT1_20\ = CARRY((\lcd_instance|char_count\(2) & ((!\lcd_instance|char_count[1]~3COUT1_18\))))

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
	dataa => \lcd_instance|char_count\(2),
	aclr => GND,
	sclr => \lcd_instance|char_count[2]~8_combout\,
	ena => \lcd_instance|char_count[2]~10_combout\,
	cin0 => \lcd_instance|char_count[1]~3\,
	cin1 => \lcd_instance|char_count[1]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|char_count\(2),
	cout0 => \lcd_instance|char_count[2]~5\,
	cout1 => \lcd_instance|char_count[2]~5COUT1_20\);

-- Location: LC_X12_Y6_N9
\lcd_instance|char_count[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|char_count\(3) = DFFEAS(((\lcd_instance|char_count[2]~5\ $ (\lcd_instance|char_count\(3)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|char_count[2]~10_combout\, , , \lcd_instance|char_count[2]~8_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \lcd_instance|char_count\(3),
	aclr => GND,
	sclr => \lcd_instance|char_count[2]~8_combout\,
	ena => \lcd_instance|char_count[2]~10_combout\,
	cin0 => \lcd_instance|char_count[2]~5\,
	cin1 => \lcd_instance|char_count[2]~5COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|char_count\(3));

-- Location: LC_X12_Y6_N2
\lcd_instance|flag~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|flag~0_combout\ = (\lcd_instance|char_count\(0) & (\lcd_instance|char_count\(3) & (\lcd_instance|char_count\(1) & \lcd_instance|char_count\(2))))

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
	dataa => \lcd_instance|char_count\(0),
	datab => \lcd_instance|char_count\(3),
	datac => \lcd_instance|char_count\(1),
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|flag~0_combout\);

-- Location: LC_X10_Y6_N2
\lcd_instance|lcd_msg[8][0]~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][0]~0_combout\ = ((!lcd_msg_index(2) & ((!lcd_msg_index(1)) # (!lcd_msg_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => lcd_msg_index(2),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd_msg[8][0]~0_combout\);

-- Location: LC_X10_Y6_N5
\lcd_instance|lcd_msg[8][0]~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][0]~1_combout\ = (!\lcd_instance|state\(0) & (\lcd_instance|Decoder1~0_combout\ & ((\lcd_instance|lcd_msg[8][0]~0_combout\) # (!lcd_msg_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(0),
	datab => lcd_msg_index(3),
	datac => \lcd_instance|Decoder1~0_combout\,
	datad => \lcd_instance|lcd_msg[8][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd_msg[8][0]~1_combout\);

-- Location: LC_X8_Y6_N8
\lcd_instance|lcd_msg[13][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[13][5]~regout\ = DFFEAS((lcd_msg_index(0)) # ((lcd_msg_index(1)) # ((!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(1),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[13][5]~regout\);

-- Location: LC_X8_Y6_N7
\lcd_instance|lcd_msg[11][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[11][5]~regout\ = DFFEAS((lcd_msg_index(3) & (((lcd_msg_index(1)) # (!lcd_msg_index(0))))) # (!lcd_msg_index(3) & (((lcd_msg_index(0))) # (!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , 
-- , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd3d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(3),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(1),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[11][5]~regout\);

-- Location: LC_X8_Y6_N9
\lcd_instance|Mux130~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux130~0_combout\ = (\lcd_instance|char_count\(2) & ((\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[13][5]~regout\)) # (!\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[11][5]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ac00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[13][5]~regout\,
	datab => \lcd_instance|lcd_msg[11][5]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux130~0_combout\);

-- Location: LC_X8_Y6_N2
\lcd_msg_index[1]~_wirecell\ : maxv_lcell
-- Equation(s):
-- \lcd_msg_index[1]~_wirecell_combout\ = (((!lcd_msg_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => lcd_msg_index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_msg_index[1]~_wirecell_combout\);

-- Location: LC_X8_Y6_N4
\lcd_instance|lcd_msg[8][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][6]~regout\ = DFFEAS((lcd_msg_index(0) & (((lcd_msg_index(2))))) # (!lcd_msg_index(0) & (((\lcd_msg_index[1]~_wirecell_combout\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, 
-- \lcd_msg_index[1]~_wirecell_combout\, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[8][6]~regout\);

-- Location: LC_X8_Y6_N6
\lcd_instance|Mux130~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux130~1_combout\ = (!\lcd_instance|char_count\(1) & (!\lcd_instance|char_count\(2) & ((\lcd_instance|lcd_msg[8][6]~regout\) # (!\lcd_instance|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0023",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[8][6]~regout\,
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux130~1_combout\);

-- Location: LC_X8_Y7_N1
\lcd_instance|lcd_msg[10][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[10][5]~regout\ = DFFEAS((lcd_msg_index(0) & (((lcd_msg_index(1))) # (!lcd_msg_index(3)))) # (!lcd_msg_index(0) & ((lcd_msg_index(3)) # ((!lcd_msg_index(2)) # (!lcd_msg_index(1))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e7f7",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(3),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[10][5]~regout\);

-- Location: LC_X8_Y6_N0
\lcd_instance|Mux130~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux130~2_combout\ = (\lcd_instance|char_count\(2)) # ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[11][5]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[10][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[10][5]~regout\,
	datab => \lcd_instance|lcd_msg[11][5]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux130~2_combout\);

-- Location: LC_X8_Y6_N1
\lcd_instance|Mux130~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux130~3_combout\ = (\lcd_instance|Mux130~0_combout\) # ((\lcd_instance|Mux130~1_combout\) # ((\lcd_instance|char_count\(1) & \lcd_instance|Mux130~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|Mux130~0_combout\,
	datac => \lcd_instance|Mux130~1_combout\,
	datad => \lcd_instance|Mux130~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux130~3_combout\);

-- Location: LC_X8_Y7_N7
\lcd_instance|lcd_msg[4][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[4][5]~regout\ = DFFEAS(((lcd_msg_index(0)) # ((!lcd_msg_index(2)))) # (!lcd_msg_index(1)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[4][5]~regout\);

-- Location: LC_X8_Y7_N0
\lcd_instance|lcd_msg[6][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[6][5]~regout\ = DFFEAS(((lcd_msg_index(0)) # ((!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[6][5]~regout\);

-- Location: LC_X8_Y7_N6
\lcd_instance|Mux135~7\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~7_combout\ = ((\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[10][5]~regout\)) # (!\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[6][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|lcd_msg[10][5]~regout\,
	datac => \lcd_instance|lcd_msg[6][5]~regout\,
	datad => \lcd_instance|char_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~7_combout\);

-- Location: LC_X9_Y7_N8
\lcd_instance|lcd_msg[0][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[0][5]~regout\ = DFFEAS(((lcd_msg_index(1) & (!lcd_msg_index(0) & lcd_msg_index(2))) # (!lcd_msg_index(1) & (lcd_msg_index(0) $ (!lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , 
-- lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c03",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	sclr => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[0][5]~regout\);

-- Location: LC_X8_Y7_N9
\lcd_instance|lcd_msg[1][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[1][5]~regout\ = DFFEAS((((!lcd_msg_index(2))) # (!lcd_msg_index(0))) # (!lcd_msg_index(1)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[1][5]~regout\);

-- Location: LC_X8_Y7_N5
\lcd_instance|Mux135~6\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~6_combout\ = ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[1][5]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[0][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|lcd_msg[0][5]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[1][5]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~6_combout\);

-- Location: LC_X8_Y7_N8
\lcd_instance|lcd_msg[2][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[2][5]~regout\ = DFFEAS((((!lcd_msg_index(2)))) # (!lcd_msg_index(1)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[2][5]~regout\);

-- Location: LC_X8_Y6_N3
\lcd_instance|lcd_msg[3][5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[3][5]~regout\ = DFFEAS((lcd_msg_index(0)) # ((\lcd_msg_index[1]~_wirecell_combout\ $ (!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaf",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[3][5]~regout\);

-- Location: LC_X8_Y7_N2
\lcd_instance|Mux135~5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~5_combout\ = ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[3][5]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[2][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[2][5]~regout\,
	datac => \lcd_instance|lcd_msg[3][5]~regout\,
	datad => \lcd_instance|char_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~5_combout\);

-- Location: LC_X8_Y7_N3
\lcd_instance|Mux130~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux130~4_combout\ = (\lcd_instance|char_count\(2) & (\lcd_instance|char_count\(1))) # (!\lcd_instance|char_count\(2) & ((\lcd_instance|char_count\(1) & ((\lcd_instance|Mux135~5_combout\))) # (!\lcd_instance|char_count\(1) & 
-- (\lcd_instance|Mux135~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(2),
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|Mux135~6_combout\,
	datad => \lcd_instance|Mux135~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux130~4_combout\);

-- Location: LC_X8_Y7_N4
\lcd_instance|Mux130~5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux130~5_combout\ = (\lcd_instance|char_count\(2) & ((\lcd_instance|Mux130~4_combout\ & ((\lcd_instance|Mux135~7_combout\))) # (!\lcd_instance|Mux130~4_combout\ & (\lcd_instance|lcd_msg[4][5]~regout\)))) # (!\lcd_instance|char_count\(2) & 
-- (((\lcd_instance|Mux130~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(2),
	datab => \lcd_instance|lcd_msg[4][5]~regout\,
	datac => \lcd_instance|Mux135~7_combout\,
	datad => \lcd_instance|Mux130~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux130~5_combout\);

-- Location: LC_X12_Y6_N0
\lcd_instance|Decoder1~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Decoder1~1_combout\ = ((\lcd_instance|state\(0) & (!\lcd_instance|state\(2) & !\lcd_instance|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|state\(0),
	datac => \lcd_instance|state\(2),
	datad => \lcd_instance|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Decoder1~1_combout\);

-- Location: LC_X9_Y7_N1
\lcd_instance|lcd_char[5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_char\(5) = DFFEAS(((\lcd_instance|char_count\(3) & (\lcd_instance|Mux130~3_combout\)) # (!\lcd_instance|char_count\(3) & ((\lcd_instance|Mux130~5_combout\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|Decoder1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \lcd_instance|char_count\(3),
	datac => \lcd_instance|Mux130~3_combout\,
	datad => \lcd_instance|Mux130~5_combout\,
	aclr => GND,
	ena => \lcd_instance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_char\(5));

-- Location: LC_X12_Y8_N7
\lcd_instance|lcd_msg[10][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[10][6]~regout\ = DFFEAS(((lcd_msg_index(1)) # ((!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(1),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[10][6]~regout\);

-- Location: LC_X12_Y8_N4
\lcd_instance|lcd_msg[11][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[11][6]~regout\ = DFFEAS((lcd_msg_index(1) & (((lcd_msg_index(2))))) # (!lcd_msg_index(1) & (!lcd_msg_index(0))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb11",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[11][6]~regout\);

-- Location: LC_X12_Y8_N1
\lcd_instance|Mux134~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~4_combout\ = (((\lcd_instance|char_count\(1) & !\lcd_instance|char_count\(2))))

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
	datac => \lcd_instance|char_count\(1),
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~4_combout\);

-- Location: LC_X12_Y8_N2
\lcd_instance|Mux129~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux129~4_combout\ = (\lcd_instance|Mux134~4_combout\ & ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[11][6]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[10][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(0),
	datab => \lcd_instance|lcd_msg[10][6]~regout\,
	datac => \lcd_instance|lcd_msg[11][6]~regout\,
	datad => \lcd_instance|Mux134~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux129~4_combout\);

-- Location: LC_X11_Y8_N7
\lcd_instance|lcd_msg[5][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[5][6]~regout\ = DFFEAS((lcd_msg_index(1)) # ((lcd_msg_index(0)) # ((!lcd_msg_index(2) & !lcd_msg_index(3)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeef",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[5][6]~regout\);

-- Location: LC_X10_Y7_N4
\lcd_instance|lcd_msg[0][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[0][6]~regout\ = DFFEAS((((\lcd_msg_index[1]~_wirecell_combout\ & lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[0][6]~regout\);

-- Location: LC_X11_Y7_N6
\lcd_instance|lcd_msg[2][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[2][6]~regout\ = DFFEAS((lcd_msg_index(3) & (((!lcd_msg_index(1))))) # (!lcd_msg_index(3) & (((lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[2][6]~regout\);

-- Location: LC_X11_Y7_N1
\lcd_instance|Mux135~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~4_combout\ = (((\lcd_instance|lcd_msg[2][6]~regout\) # (\lcd_instance|char_count\(0))))

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
	datac => \lcd_instance|lcd_msg[2][6]~regout\,
	datad => \lcd_instance|char_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~4_combout\);

-- Location: LC_X11_Y7_N2
\lcd_instance|Mux129~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux129~0_combout\ = (\lcd_instance|char_count\(2) & (((\lcd_instance|char_count\(1))))) # (!\lcd_instance|char_count\(2) & ((\lcd_instance|char_count\(1) & ((\lcd_instance|Mux135~4_combout\))) # (!\lcd_instance|char_count\(1) & 
-- (\lcd_instance|lcd_msg[0][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(2),
	datab => \lcd_instance|lcd_msg[0][6]~regout\,
	datac => \lcd_instance|char_count\(1),
	datad => \lcd_instance|Mux135~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux129~0_combout\);

-- Location: LC_X11_Y7_N3
\lcd_instance|lcd_msg[7][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[7][6]~regout\ = DFFEAS(((!lcd_msg_index(0) & ((lcd_msg_index(2))))) # (!lcd_msg_index(1)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7755",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[7][6]~regout\);

-- Location: LC_X11_Y7_N4
\lcd_instance|lcd_msg[6][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[6][6]~regout\ = DFFEAS(((lcd_msg_index(3) & (lcd_msg_index(1))) # (!lcd_msg_index(3) & ((lcd_msg_index(2)) # (!lcd_msg_index(1))))) # (!lcd_msg_index(0)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f7b7",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[6][6]~regout\);

-- Location: LC_X11_Y7_N8
\lcd_instance|Mux129~6\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux129~6_combout\ = (\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[7][6]~regout\ & ((\lcd_instance|Mux129~0_combout\)))) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[6][6]~regout\) # 
-- (!\lcd_instance|Mux129~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b833",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[7][6]~regout\,
	datab => \lcd_instance|char_count\(0),
	datac => \lcd_instance|lcd_msg[6][6]~regout\,
	datad => \lcd_instance|Mux129~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux129~6_combout\);

-- Location: LC_X11_Y7_N9
\lcd_instance|Mux129~7\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux129~7_combout\ = (\lcd_instance|char_count\(2) & ((\lcd_instance|Mux129~6_combout\) # ((\lcd_instance|lcd_msg[5][6]~regout\ & !\lcd_instance|Mux129~0_combout\)))) # (!\lcd_instance|char_count\(2) & (((\lcd_instance|Mux129~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[5][6]~regout\,
	datab => \lcd_instance|Mux129~0_combout\,
	datac => \lcd_instance|char_count\(2),
	datad => \lcd_instance|Mux129~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux129~7_combout\);

-- Location: LC_X9_Y6_N4
\lcd_instance|lcd_msg[9][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[9][6]~regout\ = DFFEAS(((lcd_msg_index(1)) # ((!lcd_msg_index(2) & !lcd_msg_index(3)))) # (!lcd_msg_index(0)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff57",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(2),
	datac => lcd_msg_index(3),
	datad => lcd_msg_index(1),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[9][6]~regout\);

-- Location: LC_X9_Y6_N0
\lcd_instance|Mux129~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux129~2_combout\ = (\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[9][6]~regout\)) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[8][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[9][6]~regout\,
	datab => \lcd_instance|lcd_msg[8][6]~regout\,
	datac => \lcd_instance|char_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux129~2_combout\);

-- Location: LC_X10_Y7_N7
\lcd_instance|lcd_msg[12][6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[12][6]~regout\ = DFFEAS(((lcd_msg_index(2) & ((!\lcd_msg_index[1]~_wirecell_combout\) # (!lcd_msg_index(0))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[12][6]~regout\);

-- Location: LC_X11_Y7_N7
\lcd_instance|Mux129~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux129~1_combout\ = (\lcd_instance|char_count\(0) & (!\lcd_instance|lcd_msg[5][6]~regout\)) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[12][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7744",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[5][6]~regout\,
	datab => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[12][6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux129~1_combout\);

-- Location: LC_X12_Y7_N8
\lcd_instance|Mux129~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux129~3_combout\ = (!\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(2) & ((\lcd_instance|Mux129~1_combout\))) # (!\lcd_instance|char_count\(2) & (\lcd_instance|Mux129~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux129~2_combout\,
	datad => \lcd_instance|Mux129~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux129~3_combout\);

-- Location: LC_X12_Y7_N7
\lcd_instance|lcd_char[6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_char\(6) = DFFEAS((\lcd_instance|char_count\(3) & ((\lcd_instance|Mux129~4_combout\) # ((\lcd_instance|Mux129~3_combout\)))) # (!\lcd_instance|char_count\(3) & (((\lcd_instance|Mux129~7_combout\)))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|Decoder1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcb8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Mux129~4_combout\,
	datab => \lcd_instance|char_count\(3),
	datac => \lcd_instance|Mux129~7_combout\,
	datad => \lcd_instance|Mux129~3_combout\,
	aclr => GND,
	ena => \lcd_instance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_char\(6));

-- Location: LC_X9_Y8_N3
\lcd_instance|lcd_msg[6][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[6][2]~regout\ = DFFEAS((lcd_msg_index(0) & (lcd_msg_index(3))) # (!lcd_msg_index(0) & (lcd_msg_index(1) & ((lcd_msg_index(3)) # (lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aac8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(0),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[6][2]~regout\);

-- Location: LC_X9_Y8_N8
\lcd_instance|Mux31~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux31~0_combout\ = ((lcd_msg_index(2) $ (lcd_msg_index(1))))

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
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux31~0_combout\);

-- Location: LC_X9_Y6_N1
\lcd_instance|lcd_msg[8][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][3]~COMBOUT\ = ((\lcd_instance|Mux31~0_combout\ & ((!lcd_msg_index(2)))) # (!\lcd_instance|Mux31~0_combout\ & (lcd_msg_index(0))))
-- \lcd_instance|lcd_msg[8][3]~regout\ = DFFEAS(\lcd_instance|lcd_msg[8][3]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_instance|Mux75~0_combout\, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(2),
	datac => \lcd_instance|Mux75~0_combout\,
	datad => \lcd_instance|Mux31~0_combout\,
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd_msg[8][3]~COMBOUT\,
	regout => \lcd_instance|lcd_msg[8][3]~regout\);

-- Location: LC_X9_Y6_N2
\lcd_instance|lcd_msg[3][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[3][0]~regout\ = DFFEAS((lcd_msg_index(3) & (!lcd_msg_index(0) & (!lcd_msg_index(1)))) # (!lcd_msg_index(3) & (((!\lcd_instance|lcd_msg[8][3]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "101f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(3),
	datad => \lcd_instance|lcd_msg[8][3]~COMBOUT\,
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[3][0]~regout\);

-- Location: LC_X10_Y8_N1
\lcd_instance|lcd_msg[3][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[3][1]~regout\ = DFFEAS((lcd_msg_index(0) & ((lcd_msg_index(3) & (!lcd_msg_index(1))) # (!lcd_msg_index(3) & (lcd_msg_index(1) & lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4808",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[3][1]~regout\);

-- Location: LC_X9_Y8_N9
\lcd_instance|lcd_msg[4][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[4][2]~regout\ = DFFEAS((lcd_msg_index(2)) # (((\lcd_msg_index[1]~_wirecell_combout\) # (lcd_msg_index(0)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(0),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[4][2]~regout\);

-- Location: LC_X9_Y8_N4
\lcd_instance|Mux133~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~2_combout\ = (\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[3][1]~regout\) # ((\lcd_instance|char_count\(1))))) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[4][2]~regout\ & !\lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[3][1]~regout\,
	datab => \lcd_instance|lcd_msg[4][2]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~2_combout\);

-- Location: LC_X9_Y8_N5
\lcd_instance|Mux133~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~3_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|Mux133~2_combout\ & ((\lcd_instance|lcd_msg[3][0]~regout\))) # (!\lcd_instance|Mux133~2_combout\ & (\lcd_instance|lcd_msg[6][2]~regout\)))) # (!\lcd_instance|char_count\(1) 
-- & (((\lcd_instance|Mux133~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[6][2]~regout\,
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|lcd_msg[3][0]~regout\,
	datad => \lcd_instance|Mux133~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~3_combout\);

-- Location: LC_X11_Y7_N0
\lcd_instance|lcd_msg[12][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[12][2]~regout\ = DFFEAS((!lcd_msg_index(0) & ((lcd_msg_index(3) & (!lcd_msg_index(1))) # (!lcd_msg_index(3) & (lcd_msg_index(1) & lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1202",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[12][2]~regout\);

-- Location: LC_X11_Y5_N8
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X11_Y5_N3
\lcd_instance|lcd_msg[13][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[13][2]~regout\ = DFFEAS((!lcd_msg_index(1) & (((lcd_msg_index(0))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \~GND~combout\, , lcd_msg_index(3), lcd_msg_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datac => \~GND~combout\,
	datad => lcd_msg_index(0),
	aclr => GND,
	sclr => lcd_msg_index(3),
	sload => lcd_msg_index(2),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[13][2]~regout\);

-- Location: LC_X11_Y6_N4
\lcd_instance|Mux132~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux132~0_combout\ = (((!\lcd_instance|char_count\(0) & !\lcd_instance|char_count\(1))))

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
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux132~0_combout\);

-- Location: LC_X11_Y6_N2
\lcd_instance|Mux133~6\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~6_combout\ = (\lcd_instance|Mux132~0_combout\ & (\lcd_instance|lcd_msg[12][2]~regout\)) # (!\lcd_instance|Mux132~0_combout\ & ((\lcd_instance|char_count\(2) & ((\lcd_instance|lcd_msg[13][2]~regout\))) # (!\lcd_instance|char_count\(2) 
-- & (\lcd_instance|lcd_msg[12][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[12][2]~regout\,
	datab => \lcd_instance|lcd_msg[13][2]~regout\,
	datac => \lcd_instance|Mux132~0_combout\,
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~6_combout\);

-- Location: LC_X11_Y7_N5
\lcd_instance|lcd_msg[10][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[10][2]~regout\ = DFFEAS(((lcd_msg_index(1) & ((lcd_msg_index(2)))) # (!lcd_msg_index(1) & (!lcd_msg_index(0)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[10][2]~regout\);

-- Location: LC_X11_Y5_N0
\lcd_instance|lcd_msg[8][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][2]~regout\ = DFFEAS((lcd_msg_index(1)) # (((lcd_msg_index(0)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(0), , lcd_msg_index(3), lcd_msg_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	aclr => GND,
	sclr => lcd_msg_index(3),
	sload => lcd_msg_index(2),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[8][2]~regout\);

-- Location: LC_X11_Y6_N5
\lcd_instance|Mux133~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~4_combout\ = (\lcd_instance|char_count\(1) & (((\lcd_instance|char_count\(0))))) # (!\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[12][6]~regout\)) # (!\lcd_instance|char_count\(0) & 
-- ((\lcd_instance|lcd_msg[8][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|lcd_msg[12][6]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[8][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~4_combout\);

-- Location: LC_X10_Y7_N2
\lcd_instance|lcd_msg[11][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[11][2]~regout\ = DFFEAS((((lcd_msg_index(1)) # (!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[11][2]~regout\);

-- Location: LC_X11_Y6_N3
\lcd_instance|Mux133~5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~5_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|Mux133~4_combout\ & ((\lcd_instance|lcd_msg[11][2]~regout\))) # (!\lcd_instance|Mux133~4_combout\ & (\lcd_instance|lcd_msg[10][2]~regout\)))) # 
-- (!\lcd_instance|char_count\(1) & (((\lcd_instance|Mux133~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|lcd_msg[10][2]~regout\,
	datac => \lcd_instance|Mux133~4_combout\,
	datad => \lcd_instance|lcd_msg[11][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~5_combout\);

-- Location: LC_X12_Y7_N4
\lcd_instance|Mux133~7\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~7_combout\ = (\lcd_instance|char_count\(2) & (!\lcd_instance|char_count\(1) & (\lcd_instance|Mux133~6_combout\))) # (!\lcd_instance|char_count\(2) & (((\lcd_instance|Mux133~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux133~6_combout\,
	datad => \lcd_instance|Mux133~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~7_combout\);

-- Location: LC_X10_Y8_N3
\lcd_instance|lcd_msg[3][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[3][2]~regout\ = DFFEAS((lcd_msg_index(3)) # (((lcd_msg_index(1)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datac => lcd_msg_index(1),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[3][2]~regout\);

-- Location: LC_X10_Y8_N9
\lcd_instance|lcd_msg[2][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[2][2]~regout\ = DFFEAS(((lcd_msg_index(0) & ((lcd_msg_index(1)) # (!lcd_msg_index(2)))) # (!lcd_msg_index(0) & (lcd_msg_index(1) $ (lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , 
-- lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sclr => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[2][2]~regout\);

-- Location: LC_X10_Y8_N6
\lcd_instance|lcd_msg[1][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[1][2]~regout\ = DFFEAS((!lcd_msg_index(1) & ((lcd_msg_index(3) & (!lcd_msg_index(0))) # (!lcd_msg_index(3) & ((lcd_msg_index(2)))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0702",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[1][2]~regout\);

-- Location: LC_X11_Y6_N7
\lcd_instance|lcd_msg[0][2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[0][2]~regout\ = DFFEAS((!lcd_msg_index(1) & (!lcd_msg_index(0))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \~GND~combout\, , lcd_msg_index(3), !lcd_msg_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => \~GND~combout\,
	aclr => GND,
	sclr => lcd_msg_index(3),
	sload => ALT_INV_lcd_msg_index(2),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[0][2]~regout\);

-- Location: LC_X10_Y8_N0
\lcd_instance|Mux133~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~0_combout\ = (\lcd_instance|char_count\(1) & (((\lcd_instance|char_count\(0))))) # (!\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[1][2]~regout\)) # (!\lcd_instance|char_count\(0) & 
-- ((\lcd_instance|lcd_msg[0][2]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[1][2]~regout\,
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[0][2]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~0_combout\);

-- Location: LC_X10_Y8_N5
\lcd_instance|Mux133~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux133~1_combout\ = (\lcd_instance|Mux133~0_combout\ & ((\lcd_instance|lcd_msg[3][2]~regout\) # ((!\lcd_instance|char_count\(1))))) # (!\lcd_instance|Mux133~0_combout\ & (((\lcd_instance|lcd_msg[2][2]~regout\ & 
-- \lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[3][2]~regout\,
	datab => \lcd_instance|lcd_msg[2][2]~regout\,
	datac => \lcd_instance|Mux133~0_combout\,
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux133~1_combout\);

-- Location: LC_X12_Y7_N3
\lcd_instance|lcd_char[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_char\(2) = DFFEAS((\lcd_instance|char_count\(2) & (\lcd_instance|Mux133~3_combout\)) # (!\lcd_instance|char_count\(2) & (((\lcd_instance|Mux133~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|Decoder1~1_combout\, 
-- \lcd_instance|Mux133~7_combout\, , , \lcd_instance|char_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Mux133~3_combout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux133~7_combout\,
	datad => \lcd_instance|Mux133~1_combout\,
	aclr => GND,
	sload => \lcd_instance|char_count\(3),
	ena => \lcd_instance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_char\(2));

-- Location: LC_X11_Y6_N6
\lcd_instance|lcd_msg[12][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[12][3]~regout\ = DFFEAS((lcd_msg_index(1) & (lcd_msg_index(0))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \~GND~combout\, , lcd_msg_index(3), !lcd_msg_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => \~GND~combout\,
	aclr => GND,
	sclr => lcd_msg_index(3),
	sload => ALT_INV_lcd_msg_index(2),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[12][3]~regout\);

-- Location: LC_X9_Y6_N8
\lcd_instance|lcd_msg[9][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[9][3]~regout\ = DFFEAS((lcd_msg_index(0) & ((lcd_msg_index(3)) # ((lcd_msg_index(2) & lcd_msg_index(1))))) # (!lcd_msg_index(0) & (((lcd_msg_index(3) & lcd_msg_index(1))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(2),
	datac => lcd_msg_index(3),
	datad => lcd_msg_index(1),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[9][3]~regout\);

-- Location: LC_X11_Y8_N8
\lcd_instance|lcd_msg[11][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[11][3]~regout\ = DFFEAS((lcd_msg_index(0) & (((!lcd_msg_index(2) & !lcd_msg_index(3))))) # (!lcd_msg_index(0) & (lcd_msg_index(1) $ (((lcd_msg_index(3)))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "112e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[11][3]~regout\);

-- Location: LC_X11_Y6_N8
\lcd_instance|Mux132~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux132~1_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[11][3]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[10][2]~regout\)))) # (!\lcd_instance|char_count\(1) & 
-- (((\lcd_instance|char_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|lcd_msg[10][2]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[11][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux132~1_combout\);

-- Location: LC_X11_Y6_N9
\lcd_instance|Mux132~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux132~2_combout\ = (\lcd_instance|char_count\(1) & (((\lcd_instance|Mux132~1_combout\)))) # (!\lcd_instance|char_count\(1) & ((\lcd_instance|Mux132~1_combout\ & ((\lcd_instance|lcd_msg[9][3]~regout\))) # (!\lcd_instance|Mux132~1_combout\ & 
-- (\lcd_instance|lcd_msg[8][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|lcd_msg[8][3]~regout\,
	datac => \lcd_instance|lcd_msg[9][3]~regout\,
	datad => \lcd_instance|Mux132~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux132~2_combout\);

-- Location: LC_X11_Y6_N1
\lcd_instance|Mux132~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux132~3_combout\ = (\lcd_instance|char_count\(2) & (\lcd_instance|lcd_msg[12][3]~regout\ & (\lcd_instance|Mux132~0_combout\))) # (!\lcd_instance|char_count\(2) & (((\lcd_instance|Mux132~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b380",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[12][3]~regout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux132~0_combout\,
	datad => \lcd_instance|Mux132~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux132~3_combout\);

-- Location: LC_X8_Y5_N9
\lcd_instance|lcd_msg[6][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[6][3]~regout\ = DFFEAS((lcd_msg_index(0) & (((lcd_msg_index(3))))) # (!lcd_msg_index(0) & (lcd_msg_index(1) $ (((!lcd_msg_index(2) & !lcd_msg_index(3)))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc21",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[6][3]~regout\);

-- Location: LC_X8_Y5_N8
\lcd_instance|lcd_msg[7][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[7][3]~regout\ = DFFEAS((((!lcd_msg_index(0) & lcd_msg_index(2))) # (!lcd_msg_index(1))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[7][3]~regout\);

-- Location: LC_X8_Y5_N3
\lcd_instance|Mux135~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~3_combout\ = ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[7][3]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[6][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|lcd_msg[6][3]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[7][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~3_combout\);

-- Location: LC_X8_Y5_N4
\lcd_instance|lcd_msg[4][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[4][3]~regout\ = DFFEAS(((lcd_msg_index(1) & (lcd_msg_index(0) & !lcd_msg_index(2))) # (!lcd_msg_index(1) & ((lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[4][3]~regout\);

-- Location: LC_X11_Y6_N0
\lcd_instance|lcd_msg[5][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[5][3]~regout\ = DFFEAS(((!lcd_msg_index(0) & (lcd_msg_index(1)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , lcd_msg_index(3), !lcd_msg_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	aclr => GND,
	sclr => lcd_msg_index(3),
	sload => ALT_INV_lcd_msg_index(2),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[5][3]~regout\);

-- Location: LC_X8_Y5_N7
\lcd_instance|Mux135~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~2_combout\ = ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[5][3]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[4][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[4][3]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[5][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~2_combout\);

-- Location: LC_X8_Y5_N6
\lcd_instance|lcd_msg[1][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[1][3]~regout\ = DFFEAS((lcd_msg_index(3) & (((lcd_msg_index(0) & !lcd_msg_index(1))))) # (!lcd_msg_index(3) & (lcd_msg_index(2) & (lcd_msg_index(0) $ (!lcd_msg_index(1))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c82",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[1][3]~regout\);

-- Location: LC_X8_Y5_N5
\lcd_instance|lcd_msg[3][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[3][3]~regout\ = DFFEAS((lcd_msg_index(0) & ((lcd_msg_index(3) & ((!lcd_msg_index(1)))) # (!lcd_msg_index(3) & (lcd_msg_index(2))))) # (!lcd_msg_index(0) & (!lcd_msg_index(2) & (lcd_msg_index(1) & !lcd_msg_index(3)))), 
-- GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c98",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[3][3]~regout\);

-- Location: LC_X11_Y5_N6
\lcd_instance|lcd_msg[2][3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[2][3]~regout\ = DFFEAS((lcd_msg_index(1)) # (((lcd_msg_index(0)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \~GND~combout\, , lcd_msg_index(3), lcd_msg_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datac => \~GND~combout\,
	datad => lcd_msg_index(0),
	aclr => GND,
	sclr => lcd_msg_index(3),
	sload => lcd_msg_index(2),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[2][3]~regout\);

-- Location: LC_X8_Y5_N0
\lcd_instance|Mux132~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux132~4_combout\ = (\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[3][3]~regout\) # ((!\lcd_instance|char_count\(1))))) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[2][3]~regout\ & \lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[3][3]~regout\,
	datab => \lcd_instance|lcd_msg[2][3]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux132~4_combout\);

-- Location: LC_X8_Y5_N1
\lcd_instance|Mux132~5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux132~5_combout\ = (\lcd_instance|char_count\(2) & (((\lcd_instance|char_count\(1))))) # (!\lcd_instance|char_count\(2) & (\lcd_instance|Mux132~4_combout\ & ((\lcd_instance|lcd_msg[1][3]~regout\) # (\lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[1][3]~regout\,
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|char_count\(2),
	datad => \lcd_instance|Mux132~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux132~5_combout\);

-- Location: LC_X8_Y5_N2
\lcd_instance|Mux132~6\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux132~6_combout\ = (\lcd_instance|char_count\(2) & ((\lcd_instance|Mux132~5_combout\ & (\lcd_instance|Mux135~3_combout\)) # (!\lcd_instance|Mux132~5_combout\ & ((\lcd_instance|Mux135~2_combout\))))) # (!\lcd_instance|char_count\(2) & 
-- (((\lcd_instance|Mux132~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|Mux135~3_combout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux135~2_combout\,
	datad => \lcd_instance|Mux132~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux132~6_combout\);

-- Location: LC_X12_Y7_N2
\lcd_instance|lcd_char[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_char\(3) = DFFEAS(((\lcd_instance|char_count\(3) & (\lcd_instance|Mux132~3_combout\)) # (!\lcd_instance|char_count\(3) & ((\lcd_instance|Mux132~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|Decoder1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \lcd_instance|char_count\(3),
	datac => \lcd_instance|Mux132~3_combout\,
	datad => \lcd_instance|Mux132~6_combout\,
	aclr => GND,
	ena => \lcd_instance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_char\(3));

-- Location: LC_X11_Y8_N1
\lcd_instance|lcd_msg[0][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[0][1]~regout\ = DFFEAS((!lcd_msg_index(1) & (((lcd_msg_index(3))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

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
	dataa => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[0][1]~regout\);

-- Location: LC_X10_Y7_N1
\lcd_instance|lcd_msg[6][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[6][4]~regout\ = DFFEAS(((lcd_msg_index(0) & (\lcd_msg_index[1]~_wirecell_combout\ $ (lcd_msg_index(2)))) # (!lcd_msg_index(0) & (!\lcd_msg_index[1]~_wirecell_combout\ & !lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[6][4]~regout\);

-- Location: LC_X9_Y7_N5
\lcd_instance|lcd_msg[4][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[4][4]~regout\ = DFFEAS((lcd_msg_index(1) & (!lcd_msg_index(3) & (lcd_msg_index(0) & lcd_msg_index(2)))) # (!lcd_msg_index(1) & (!lcd_msg_index(0) & ((lcd_msg_index(3)) # (!lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4203",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[4][4]~regout\);

-- Location: LC_X10_Y7_N8
\lcd_instance|Mux131~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~2_combout\ = (\lcd_instance|char_count\(1) & (((\lcd_instance|char_count\(0))))) # (!\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[2][3]~regout\))) # (!\lcd_instance|char_count\(0) & 
-- (\lcd_instance|lcd_msg[4][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[4][4]~regout\,
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[2][3]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~2_combout\);

-- Location: LC_X10_Y7_N9
\lcd_instance|Mux131~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~3_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|Mux131~2_combout\ & (\lcd_instance|lcd_msg[0][1]~regout\)) # (!\lcd_instance|Mux131~2_combout\ & ((\lcd_instance|lcd_msg[6][4]~regout\))))) # (!\lcd_instance|char_count\(1) 
-- & (((\lcd_instance|Mux131~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[0][1]~regout\,
	datab => \lcd_instance|lcd_msg[6][4]~regout\,
	datac => \lcd_instance|char_count\(1),
	datad => \lcd_instance|Mux131~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~3_combout\);

-- Location: LC_X9_Y7_N0
\lcd_instance|lcd_msg[10][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[10][4]~regout\ = DFFEAS((lcd_msg_index(2) $ (((lcd_msg_index(1)) # (lcd_msg_index(0))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	sclr => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[10][4]~regout\);

-- Location: LC_X9_Y7_N6
\lcd_instance|lcd_msg[11][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[11][4]~regout\ = DFFEAS(((lcd_msg_index(1) & (lcd_msg_index(3)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[11][4]~regout\);

-- Location: LC_X9_Y7_N4
\lcd_instance|lcd_msg[9][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[9][4]~regout\ = DFFEAS((lcd_msg_index(3) & ((lcd_msg_index(1)) # ((!lcd_msg_index(0))))) # (!lcd_msg_index(3) & (lcd_msg_index(2) $ (((lcd_msg_index(1)) # (lcd_msg_index(0)))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8bde",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[9][4]~regout\);

-- Location: LC_X9_Y7_N9
\lcd_instance|lcd_msg[8][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][4]~regout\ = DFFEAS((lcd_msg_index(3) & (!lcd_msg_index(1) & (lcd_msg_index(0)))) # (!lcd_msg_index(3) & (lcd_msg_index(2) $ (((lcd_msg_index(1)) # (lcd_msg_index(0)))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2174",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[8][4]~regout\);

-- Location: LC_X9_Y7_N2
\lcd_instance|Mux131~4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~4_combout\ = (\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[9][4]~regout\) # ((\lcd_instance|char_count\(1))))) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[8][4]~regout\ & !\lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[9][4]~regout\,
	datab => \lcd_instance|lcd_msg[8][4]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~4_combout\);

-- Location: LC_X9_Y7_N3
\lcd_instance|Mux131~5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~5_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|Mux131~4_combout\ & ((\lcd_instance|lcd_msg[11][4]~regout\))) # (!\lcd_instance|Mux131~4_combout\ & (\lcd_instance|lcd_msg[10][4]~regout\)))) # 
-- (!\lcd_instance|char_count\(1) & (((\lcd_instance|Mux131~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|lcd_msg[10][4]~regout\,
	datac => \lcd_instance|lcd_msg[11][4]~regout\,
	datad => \lcd_instance|Mux131~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~5_combout\);

-- Location: LC_X10_Y7_N3
\lcd_instance|lcd_msg[13][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[13][4]~regout\ = DFFEAS((lcd_msg_index(3) & (((!lcd_msg_index(1) & !lcd_msg_index(0))))) # (!lcd_msg_index(3) & (!lcd_msg_index(2) & ((lcd_msg_index(1)) # (lcd_msg_index(0))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "111c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(3),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(0),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[13][4]~regout\);

-- Location: LC_X9_Y7_N7
\lcd_instance|lcd_msg[12][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[12][4]~regout\ = DFFEAS(((lcd_msg_index(1) & ((lcd_msg_index(0)) # (!lcd_msg_index(2)))) # (!lcd_msg_index(1) & (lcd_msg_index(0) & !lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , 
-- lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	sclr => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[12][4]~regout\);

-- Location: LC_X10_Y7_N5
\lcd_instance|Mux131~6\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~6_combout\ = (\lcd_instance|char_count\(2) & ((\lcd_instance|Mux132~0_combout\ & ((\lcd_instance|lcd_msg[12][4]~regout\))) # (!\lcd_instance|Mux132~0_combout\ & (\lcd_instance|lcd_msg[13][4]~regout\)))) # 
-- (!\lcd_instance|char_count\(2) & (((\lcd_instance|lcd_msg[12][4]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[13][4]~regout\,
	datab => \lcd_instance|lcd_msg[12][4]~regout\,
	datac => \lcd_instance|char_count\(2),
	datad => \lcd_instance|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~6_combout\);

-- Location: LC_X10_Y7_N6
\lcd_instance|Mux131~7\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~7_combout\ = (\lcd_instance|char_count\(2) & (((!\lcd_instance|char_count\(1) & \lcd_instance|Mux131~6_combout\)))) # (!\lcd_instance|char_count\(2) & (\lcd_instance|Mux131~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(2),
	datab => \lcd_instance|Mux131~5_combout\,
	datac => \lcd_instance|char_count\(1),
	datad => \lcd_instance|Mux131~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~7_combout\);

-- Location: LC_X12_Y8_N8
\lcd_instance|lcd_msg[2][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[2][4]~regout\ = DFFEAS((!lcd_msg_index(0) & ((lcd_msg_index(3) & (!lcd_msg_index(1))) # (!lcd_msg_index(3) & ((lcd_msg_index(2)))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0704",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(3),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[2][4]~regout\);

-- Location: LC_X12_Y8_N6
\lcd_instance|lcd_msg[3][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[3][4]~regout\ = DFFEAS(((lcd_msg_index(0) & ((!lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[3][4]~regout\);

-- Location: LC_X10_Y8_N8
\lcd_instance|lcd_msg[1][4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[1][4]~regout\ = DFFEAS(((lcd_msg_index(1) & ((!lcd_msg_index(2)))) # (!lcd_msg_index(1) & (lcd_msg_index(0)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sclr => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[1][4]~regout\);

-- Location: LC_X11_Y8_N4
\lcd_instance|Mux131~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~0_combout\ = (\lcd_instance|char_count\(1) & (((\lcd_instance|char_count\(0))))) # (!\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[1][4]~regout\))) # (!\lcd_instance|char_count\(0) & 
-- (!\lcd_instance|lcd_msg[5][6]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa11",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|lcd_msg[5][6]~regout\,
	datac => \lcd_instance|lcd_msg[1][4]~regout\,
	datad => \lcd_instance|char_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~0_combout\);

-- Location: LC_X12_Y8_N5
\lcd_instance|Mux131~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux131~1_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|Mux131~0_combout\ & ((\lcd_instance|lcd_msg[3][4]~regout\))) # (!\lcd_instance|Mux131~0_combout\ & (\lcd_instance|lcd_msg[2][4]~regout\)))) # (!\lcd_instance|char_count\(1) 
-- & (((\lcd_instance|Mux131~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[2][4]~regout\,
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|lcd_msg[3][4]~regout\,
	datad => \lcd_instance|Mux131~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux131~1_combout\);

-- Location: LC_X12_Y7_N5
\lcd_instance|lcd_char[4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_char\(4) = DFFEAS((\lcd_instance|char_count\(2) & (\lcd_instance|Mux131~3_combout\)) # (!\lcd_instance|char_count\(2) & (((\lcd_instance|Mux131~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|Decoder1~1_combout\, 
-- \lcd_instance|Mux131~7_combout\, , , \lcd_instance|char_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Mux131~3_combout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux131~7_combout\,
	datad => \lcd_instance|Mux131~1_combout\,
	aclr => GND,
	sload => \lcd_instance|char_count\(3),
	ena => \lcd_instance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_char\(4));

-- Location: LC_X12_Y8_N9
\lcd_instance|lcd_msg[10][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[10][1]~regout\ = DFFEAS((lcd_msg_index(1)) # ((lcd_msg_index(3) & (!lcd_msg_index(0))) # (!lcd_msg_index(3) & (lcd_msg_index(0) & !lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aebe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(3),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[10][1]~regout\);

-- Location: LC_X10_Y8_N4
\lcd_instance|lcd_msg[11][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[11][1]~regout\ = DFFEAS(((lcd_msg_index(0) & ((!lcd_msg_index(2)) # (!lcd_msg_index(1)))) # (!lcd_msg_index(0) & (lcd_msg_index(1)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sclr => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[11][1]~regout\);

-- Location: LC_X12_Y8_N0
\lcd_instance|Mux134~5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~5_combout\ = (\lcd_instance|Mux134~4_combout\ & ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[11][1]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[10][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(0),
	datab => \lcd_instance|lcd_msg[10][1]~regout\,
	datac => \lcd_instance|lcd_msg[11][1]~regout\,
	datad => \lcd_instance|Mux134~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~5_combout\);

-- Location: LC_X11_Y5_N1
\lcd_instance|lcd_msg[12][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[12][1]~regout\ = DFFEAS((lcd_msg_index(1) & (((lcd_msg_index(0))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \~GND~combout\, , lcd_msg_index(3), lcd_msg_index(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datac => \~GND~combout\,
	datad => lcd_msg_index(0),
	aclr => GND,
	sclr => lcd_msg_index(3),
	sload => lcd_msg_index(2),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[12][1]~regout\);

-- Location: LC_X11_Y5_N7
\lcd_instance|lcd_msg[8][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][1]~regout\ = DFFEAS((!lcd_msg_index(1) & ((lcd_msg_index(0) & ((lcd_msg_index(3)))) # (!lcd_msg_index(0) & (lcd_msg_index(2) & !lcd_msg_index(3))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[8][1]~regout\);

-- Location: LC_X11_Y5_N9
\lcd_instance|Mux134~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~2_combout\ = ((\lcd_instance|char_count\(2) & (\lcd_instance|lcd_msg[12][1]~regout\)) # (!\lcd_instance|char_count\(2) & ((\lcd_instance|lcd_msg[8][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|lcd_msg[12][1]~regout\,
	datac => \lcd_instance|lcd_msg[8][1]~regout\,
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~2_combout\);

-- Location: LC_X11_Y5_N5
\lcd_instance|lcd_msg[9][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[9][1]~regout\ = DFFEAS((lcd_msg_index(3) & (((lcd_msg_index(0) & !lcd_msg_index(1))))) # (!lcd_msg_index(3) & (((lcd_msg_index(0) & lcd_msg_index(1))) # (!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cd5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[9][1]~regout\);

-- Location: LC_X8_Y8_N9
\lcd_instance|lcd_msg[13][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[13][1]~regout\ = DFFEAS(((!lcd_msg_index(1) & (!lcd_msg_index(0)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , !lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(0),
	aclr => GND,
	sclr => ALT_INV_lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[13][1]~regout\);

-- Location: LC_X10_Y5_N0
\lcd_instance|Mux134~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~1_combout\ = ((\lcd_instance|char_count\(2) & ((\lcd_instance|lcd_msg[13][1]~regout\))) # (!\lcd_instance|char_count\(2) & (\lcd_instance|lcd_msg[9][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|lcd_msg[9][1]~regout\,
	datac => \lcd_instance|lcd_msg[13][1]~regout\,
	datad => \lcd_instance|char_count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~1_combout\);

-- Location: LC_X10_Y5_N1
\lcd_instance|Mux134~3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~3_combout\ = (!\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(0) & ((\lcd_instance|Mux134~1_combout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|Mux134~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(0),
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|Mux134~2_combout\,
	datad => \lcd_instance|Mux134~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~3_combout\);

-- Location: LC_X10_Y8_N7
\lcd_instance|lcd_msg[1][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[1][1]~regout\ = DFFEAS(((lcd_msg_index(1) $ (lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , lcd_msg_index(3), )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sclr => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[1][1]~regout\);

-- Location: LC_X11_Y8_N0
\lcd_instance|Mux135~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~1_combout\ = ((\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[1][1]~regout\)) # (!\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|lcd_msg[1][1]~regout\,
	datac => \lcd_instance|lcd_msg[0][1]~regout\,
	datad => \lcd_instance|char_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~1_combout\);

-- Location: LC_X11_Y8_N2
\lcd_instance|Mux135~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~0_combout\ = ((\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[3][1]~regout\))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[11][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|lcd_msg[11][3]~regout\,
	datac => \lcd_instance|lcd_msg[3][1]~regout\,
	datad => \lcd_instance|char_count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~0_combout\);

-- Location: LC_X11_Y8_N3
\lcd_instance|Mux134~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~0_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(2)) # ((\lcd_instance|Mux135~0_combout\)))) # (!\lcd_instance|char_count\(1) & (!\lcd_instance|char_count\(2) & (\lcd_instance|Mux135~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux135~1_combout\,
	datad => \lcd_instance|Mux135~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~0_combout\);

-- Location: LC_X9_Y8_N7
\Equal0~0\ : maxv_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (((!lcd_msg_index(2) & lcd_msg_index(0))))

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
	datac => lcd_msg_index(2),
	datad => lcd_msg_index(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X9_Y8_N0
\lcd_instance|Mux38~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux38~1_combout\ = ((lcd_msg_index(1)) # ((!lcd_msg_index(0))))

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
	datab => lcd_msg_index(1),
	datad => lcd_msg_index(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux38~1_combout\);

-- Location: LC_X9_Y8_N2
\lcd_instance|lcd_msg[6][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[6][1]~COMBOUT\ = ((\lcd_instance|Mux31~0_combout\ & ((!\Equal0~0_combout\))) # (!\lcd_instance|Mux31~0_combout\ & (lcd_msg_index(0))))
-- \lcd_instance|lcd_msg[6][1]~regout\ = DFFEAS(\lcd_instance|lcd_msg[6][1]~COMBOUT\, GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_instance|Mux38~1_combout\, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => \Equal0~0_combout\,
	datac => \lcd_instance|Mux38~1_combout\,
	datad => \lcd_instance|Mux31~0_combout\,
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd_msg[6][1]~COMBOUT\,
	regout => \lcd_instance|lcd_msg[6][1]~regout\);

-- Location: LC_X9_Y8_N6
\lcd_instance|lcd_msg[4][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[4][1]~regout\ = DFFEAS((lcd_msg_index(3) & (lcd_msg_index(0) & (!lcd_msg_index(1)))) # (!lcd_msg_index(3) & (((!\lcd_instance|lcd_msg[6][1]~COMBOUT\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "202f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(1),
	datac => lcd_msg_index(3),
	datad => \lcd_instance|lcd_msg[6][1]~COMBOUT\,
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[4][1]~regout\);

-- Location: LC_X11_Y8_N9
\lcd_instance|lcd_msg[7][1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[7][1]~regout\ = DFFEAS((!lcd_msg_index(1) & (!lcd_msg_index(0) & ((lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, VCC, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(0),
	datac => VCC,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[7][1]~regout\);

-- Location: LC_X11_Y8_N5
\lcd_instance|Mux134~7\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~7_combout\ = (\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[7][1]~regout\ & ((\lcd_instance|Mux134~0_combout\)))) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[6][1]~regout\) # 
-- (!\lcd_instance|Mux134~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d855",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(0),
	datab => \lcd_instance|lcd_msg[7][1]~regout\,
	datac => \lcd_instance|lcd_msg[6][1]~regout\,
	datad => \lcd_instance|Mux134~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~7_combout\);

-- Location: LC_X11_Y8_N6
\lcd_instance|Mux134~8\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux134~8_combout\ = (\lcd_instance|char_count\(2) & (\lcd_instance|Mux134~7_combout\ & ((\lcd_instance|Mux134~0_combout\) # (\lcd_instance|lcd_msg[4][1]~regout\)))) # (!\lcd_instance|char_count\(2) & (\lcd_instance|Mux134~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|Mux134~0_combout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|lcd_msg[4][1]~regout\,
	datad => \lcd_instance|Mux134~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux134~8_combout\);

-- Location: LC_X12_Y7_N9
\lcd_instance|lcd_char[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_char\(1) = DFFEAS((\lcd_instance|char_count\(3) & ((\lcd_instance|Mux134~5_combout\) # ((\lcd_instance|Mux134~3_combout\)))) # (!\lcd_instance|char_count\(3) & (((\lcd_instance|Mux134~8_combout\)))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|Decoder1~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Mux134~5_combout\,
	datab => \lcd_instance|char_count\(3),
	datac => \lcd_instance|Mux134~3_combout\,
	datad => \lcd_instance|Mux134~8_combout\,
	aclr => GND,
	ena => \lcd_instance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_char\(1));

-- Location: LC_X12_Y7_N1
\lcd_instance|Equal3~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Equal3~0_combout\ = (!\lcd_instance|lcd_char\(2) & (!\lcd_instance|lcd_char\(3) & (!\lcd_instance|lcd_char\(4) & \lcd_instance|lcd_char\(1))))

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
	dataa => \lcd_instance|lcd_char\(2),
	datab => \lcd_instance|lcd_char\(3),
	datac => \lcd_instance|lcd_char\(4),
	datad => \lcd_instance|lcd_char\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Equal3~0_combout\);

-- Location: LC_X8_Y6_N5
\lcd_instance|lcd_msg[2][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[2][0]~regout\ = DFFEAS((lcd_msg_index(0) & (((lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[2][0]~regout\);

-- Location: LC_X9_Y5_N8
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (lcd_msg_index(0) $ ((lcd_msg_index(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X9_Y6_N9
\lcd_instance|lcd_msg[1][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[1][0]~regout\ = DFFEAS(((lcd_msg_index(2) & ((!\Add0~0_combout\))) # (!lcd_msg_index(2) & (lcd_msg_index(0)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_instance|Mux75~0_combout\, , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => \Add0~0_combout\,
	datac => \lcd_instance|Mux75~0_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[1][0]~regout\);

-- Location: LC_X9_Y6_N3
\lcd_instance|Mux135~8\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~8_combout\ = (\lcd_instance|char_count\(1) & (((\lcd_instance|char_count\(0))))) # (!\lcd_instance|char_count\(1) & ((\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[1][0]~regout\)) # (!\lcd_instance|char_count\(0) & 
-- ((!\lcd_instance|lcd_msg[9][6]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0e5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(1),
	datab => \lcd_instance|lcd_msg[1][0]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|lcd_msg[9][6]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~8_combout\);

-- Location: LC_X9_Y6_N7
\lcd_instance|Mux135~9\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~9_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|Mux135~8_combout\ & ((\lcd_instance|lcd_msg[3][0]~regout\))) # (!\lcd_instance|Mux135~8_combout\ & (\lcd_instance|lcd_msg[2][0]~regout\)))) # (!\lcd_instance|char_count\(1) 
-- & (((\lcd_instance|Mux135~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[2][0]~regout\,
	datab => \lcd_instance|lcd_msg[3][0]~regout\,
	datac => \lcd_instance|char_count\(1),
	datad => \lcd_instance|Mux135~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~9_combout\);

-- Location: LC_X10_Y6_N8
\lcd_instance|lcd_msg[10][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[10][0]~regout\ = DFFEAS((lcd_msg_index(0) & ((lcd_msg_index(3) & ((lcd_msg_index(1)))) # (!lcd_msg_index(3) & (!lcd_msg_index(2))))) # (!lcd_msg_index(0) & ((lcd_msg_index(2)) # ((lcd_msg_index(3)) # (lcd_msg_index(1))))), 
-- GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f756",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(2),
	datac => lcd_msg_index(3),
	datad => lcd_msg_index(1),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[10][0]~regout\);

-- Location: LC_X10_Y6_N9
\lcd_instance|lcd_msg[11][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[11][0]~regout\ = DFFEAS((lcd_msg_index(0) & (((lcd_msg_index(2))))) # (!lcd_msg_index(0) & (((!lcd_msg_index(1) & !lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa05",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[11][0]~regout\);

-- Location: LC_X10_Y6_N7
\lcd_instance|lcd_msg[8][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[8][0]~regout\ = DFFEAS((lcd_msg_index(0)) # (((\lcd_msg_index[1]~_wirecell_combout\) # (!lcd_msg_index(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[8][0]~regout\);

-- Location: LC_X10_Y6_N0
\lcd_instance|lcd_msg[9][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[9][0]~regout\ = DFFEAS((lcd_msg_index(0) & (((lcd_msg_index(1) & lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, lcd_msg_index(1), , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[9][0]~regout\);

-- Location: LC_X10_Y6_N4
\lcd_instance|Mux135~12\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~12_combout\ = (\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[9][0]~regout\) # (\lcd_instance|char_count\(1))))) # (!\lcd_instance|char_count\(0) & (\lcd_instance|lcd_msg[8][0]~regout\ & ((!\lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|char_count\(0),
	datab => \lcd_instance|lcd_msg[8][0]~regout\,
	datac => \lcd_instance|lcd_msg[9][0]~regout\,
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~12_combout\);

-- Location: LC_X10_Y6_N3
\lcd_instance|Mux135~13\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~13_combout\ = (\lcd_instance|Mux135~12_combout\ & (((\lcd_instance|lcd_msg[11][0]~regout\) # (!\lcd_instance|char_count\(1))))) # (!\lcd_instance|Mux135~12_combout\ & (\lcd_instance|lcd_msg[10][0]~regout\ & 
-- ((\lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[10][0]~regout\,
	datab => \lcd_instance|lcd_msg[11][0]~regout\,
	datac => \lcd_instance|Mux135~12_combout\,
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~13_combout\);

-- Location: LC_X9_Y6_N5
\lcd_instance|lcd_msg[12][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[12][0]~regout\ = DFFEAS(((lcd_msg_index(2) & (lcd_msg_index(1))) # (!lcd_msg_index(2) & ((\Add0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_instance|Mux75~0_combout\, , , 
-- lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(1),
	datab => \Add0~0_combout\,
	datac => \lcd_instance|Mux75~0_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[12][0]~regout\);

-- Location: LC_X11_Y5_N2
\lcd_instance|lcd_msg[13][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[13][0]~regout\ = DFFEAS((!lcd_msg_index(1) & ((lcd_msg_index(0) & (!lcd_msg_index(2) & !lcd_msg_index(3))) # (!lcd_msg_index(0) & ((lcd_msg_index(3)))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0304",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[13][0]~regout\);

-- Location: LC_X10_Y5_N3
\lcd_instance|Mux135~14\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~14_combout\ = (\lcd_instance|char_count\(2) & ((\lcd_instance|Mux132~0_combout\ & (\lcd_instance|lcd_msg[12][0]~regout\)) # (!\lcd_instance|Mux132~0_combout\ & ((\lcd_instance|lcd_msg[13][0]~regout\))))) # 
-- (!\lcd_instance|char_count\(2) & (\lcd_instance|lcd_msg[12][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[12][0]~regout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|lcd_msg[13][0]~regout\,
	datad => \lcd_instance|Mux132~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~14_combout\);

-- Location: LC_X10_Y5_N4
\lcd_instance|Mux135~15\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~15_combout\ = (\lcd_instance|char_count\(2) & (((!\lcd_instance|char_count\(1) & \lcd_instance|Mux135~14_combout\)))) # (!\lcd_instance|char_count\(2) & (\lcd_instance|Mux135~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|Mux135~13_combout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|char_count\(1),
	datad => \lcd_instance|Mux135~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~15_combout\);

-- Location: LC_X10_Y6_N1
\lcd_instance|lcd_msg[7][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[7][0]~regout\ = DFFEAS((lcd_msg_index(1) & (((lcd_msg_index(3))))) # (!lcd_msg_index(1) & (lcd_msg_index(0) $ (((lcd_msg_index(2)) # (lcd_msg_index(3)))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f056",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(0),
	datab => lcd_msg_index(2),
	datac => lcd_msg_index(3),
	datad => lcd_msg_index(1),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[7][0]~regout\);

-- Location: LC_X10_Y7_N0
\lcd_instance|lcd_msg[6][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[6][0]~regout\ = DFFEAS(((lcd_msg_index(0) & (\lcd_msg_index[1]~_wirecell_combout\ & !lcd_msg_index(2))) # (!lcd_msg_index(0) & ((\lcd_msg_index[1]~_wirecell_combout\) # (!lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, \lcd_msg_index[1]~_wirecell_combout\, , , lcd_msg_index(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30f3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => lcd_msg_index(0),
	datac => \lcd_msg_index[1]~_wirecell_combout\,
	datad => lcd_msg_index(2),
	aclr => GND,
	sload => lcd_msg_index(3),
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[6][0]~regout\);

-- Location: LC_X10_Y8_N2
\lcd_instance|lcd_msg[5][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[5][0]~regout\ = DFFEAS((lcd_msg_index(1)) # (lcd_msg_index(0) $ (((!lcd_msg_index(3) & !lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf9",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(3),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(2),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[5][0]~regout\);

-- Location: LC_X11_Y5_N4
\lcd_instance|lcd_msg[4][0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_msg[4][0]~regout\ = DFFEAS((lcd_msg_index(1) & (!lcd_msg_index(2) & ((!lcd_msg_index(3))))) # (!lcd_msg_index(1) & (lcd_msg_index(0) & ((lcd_msg_index(3)) # (!lcd_msg_index(2))))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_msg[8][0]~1_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c54",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => lcd_msg_index(2),
	datab => lcd_msg_index(0),
	datac => lcd_msg_index(1),
	datad => lcd_msg_index(3),
	aclr => GND,
	ena => \lcd_instance|lcd_msg[8][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_msg[4][0]~regout\);

-- Location: LC_X10_Y5_N8
\lcd_instance|Mux135~10\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~10_combout\ = (\lcd_instance|char_count\(0) & ((\lcd_instance|lcd_msg[5][0]~regout\) # ((\lcd_instance|char_count\(1))))) # (!\lcd_instance|char_count\(0) & (((\lcd_instance|lcd_msg[4][0]~regout\ & !\lcd_instance|char_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[5][0]~regout\,
	datab => \lcd_instance|lcd_msg[4][0]~regout\,
	datac => \lcd_instance|char_count\(0),
	datad => \lcd_instance|char_count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~10_combout\);

-- Location: LC_X10_Y5_N9
\lcd_instance|Mux135~11\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux135~11_combout\ = (\lcd_instance|char_count\(1) & ((\lcd_instance|Mux135~10_combout\ & (\lcd_instance|lcd_msg[7][0]~regout\)) # (!\lcd_instance|Mux135~10_combout\ & ((\lcd_instance|lcd_msg[6][0]~regout\))))) # 
-- (!\lcd_instance|char_count\(1) & (((\lcd_instance|Mux135~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_msg[7][0]~regout\,
	datab => \lcd_instance|char_count\(1),
	datac => \lcd_instance|lcd_msg[6][0]~regout\,
	datad => \lcd_instance|Mux135~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux135~11_combout\);

-- Location: LC_X10_Y5_N5
\lcd_instance|lcd_char[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_char\(0) = DFFEAS((\lcd_instance|char_count\(2) & (((\lcd_instance|Mux135~11_combout\)))) # (!\lcd_instance|char_count\(2) & (\lcd_instance|Mux135~9_combout\)), GLOBAL(\clk~combout\), VCC, , \lcd_instance|Decoder1~1_combout\, 
-- \lcd_instance|Mux135~15_combout\, , , \lcd_instance|char_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Mux135~9_combout\,
	datab => \lcd_instance|char_count\(2),
	datac => \lcd_instance|Mux135~15_combout\,
	datad => \lcd_instance|Mux135~11_combout\,
	aclr => GND,
	sload => \lcd_instance|char_count\(3),
	ena => \lcd_instance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_char\(0));

-- Location: LC_X13_Y7_N4
\lcd_instance|Equal3~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Equal3~1_combout\ = (\lcd_instance|lcd_char\(5) & (!\lcd_instance|lcd_char\(6) & (\lcd_instance|Equal3~0_combout\ & \lcd_instance|lcd_char\(0))))

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
	dataa => \lcd_instance|lcd_char\(5),
	datab => \lcd_instance|lcd_char\(6),
	datac => \lcd_instance|Equal3~0_combout\,
	datad => \lcd_instance|lcd_char\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Equal3~1_combout\);

-- Location: LC_X12_Y7_N0
\lcd_instance|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Equal0~0_combout\ = (!\lcd_instance|lcd_char\(2) & (!\lcd_instance|lcd_char\(1) & (!\lcd_instance|lcd_char\(4) & !\lcd_instance|lcd_char\(3))))

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
	dataa => \lcd_instance|lcd_char\(2),
	datab => \lcd_instance|lcd_char\(1),
	datac => \lcd_instance|lcd_char\(4),
	datad => \lcd_instance|lcd_char\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Equal0~0_combout\);

-- Location: LC_X13_Y7_N6
\lcd_instance|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Equal0~1_combout\ = (!\lcd_instance|lcd_char\(5) & (\lcd_instance|lcd_char\(6) & (!\lcd_instance|lcd_char\(0) & \lcd_instance|Equal0~0_combout\)))

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
	dataa => \lcd_instance|lcd_char\(5),
	datab => \lcd_instance|lcd_char\(6),
	datac => \lcd_instance|lcd_char\(0),
	datad => \lcd_instance|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Equal0~1_combout\);

-- Location: LC_X13_Y7_N7
\lcd_instance|flag~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|flag~1_combout\ = ((\lcd_instance|flag~0_combout\ & (!\lcd_instance|Equal3~1_combout\ & !\lcd_instance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|flag~0_combout\,
	datac => \lcd_instance|Equal3~1_combout\,
	datad => \lcd_instance|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|flag~1_combout\);

-- Location: LC_X14_Y6_N0
\lcd_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector0~0_combout\ = ((\lcd_instance|state\(0) $ (\lcd_instance|state\(1))))

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
	datac => \lcd_instance|state\(0),
	datad => \lcd_instance|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector0~0_combout\);

-- Location: LC_X14_Y6_N3
\lcd_instance|reset~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|reset~0_combout\ = (!\lcd_instance|state\(2) & (((\lcd_instance|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(2),
	datad => \lcd_instance|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|reset~0_combout\);

-- Location: LC_X14_Y6_N4
\lcd_instance|flag~2\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|flag~2_combout\ = (\lcd_instance|flag~regout\ & (((!\lcd_instance|n_flag~regout\) # (!\lcd_instance|Selector0~0_combout\)) # (!\lcd_instance|reset~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|reset~0_combout\,
	datab => \lcd_instance|Selector0~0_combout\,
	datac => \lcd_instance|flag~regout\,
	datad => \lcd_instance|n_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|flag~2_combout\);

-- Location: LC_X14_Y6_N5
\lcd_instance|flag\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|flag~regout\ = DFFEAS((\lcd_instance|flag~2_combout\) # ((\lcd_instance|Decoder1~0_combout\ & (!\lcd_instance|flag~1_combout\ & \lcd_instance|Selector0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Decoder1~0_combout\,
	datab => \lcd_instance|flag~1_combout\,
	datac => \lcd_instance|Selector0~0_combout\,
	datad => \lcd_instance|flag~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|flag~regout\);

-- Location: LC_X16_Y8_N7
\lcd_instance|lcd_state.S3\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_state.S3~regout\ = DFFEAS((\lcd_instance|Selector14~0_combout\) # ((\lcd_instance|flag~regout\ & (\lcd_instance|lcd_state.S5~regout\)) # (!\lcd_instance|flag~regout\ & ((\lcd_instance|lcd_state.S3~regout\)))), 
-- GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , \lcd_instance|reset~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_state.S5~regout\,
	datab => \lcd_instance|lcd_state.S3~regout\,
	datac => \lcd_instance|Selector14~0_combout\,
	datad => \lcd_instance|flag~regout\,
	aclr => GND,
	sclr => \lcd_instance|reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_state.S3~regout\);

-- Location: LC_X16_Y8_N3
\lcd_instance|lcd_state.S4\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_state.S4~regout\ = DFFEAS(((\lcd_instance|lcd_state.S3~regout\ & (!\lcd_instance|reset~regout\ & \lcd_instance|flag~regout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	datab => \lcd_instance|lcd_state.S3~regout\,
	datac => \lcd_instance|reset~regout\,
	datad => \lcd_instance|flag~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_state.S4~regout\);

-- Location: LC_X16_Y8_N5
\lcd_instance|lcd_state.S5\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_state.S5~regout\ = DFFEAS(((\lcd_instance|lcd_state.S4~regout\) # ((\lcd_instance|lcd_state.S5~regout\ & !\lcd_instance|flag~regout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , \lcd_instance|reset~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_state.S5~regout\,
	datac => \lcd_instance|lcd_state.S4~regout\,
	datad => \lcd_instance|flag~regout\,
	aclr => GND,
	sclr => \lcd_instance|reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_state.S5~regout\);

-- Location: LC_X13_Y6_N2
\lcd_instance|n_flag\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|n_flag~regout\ = DFFEAS(((\lcd_instance|lcd_state.S5~regout\ & ((!\lcd_instance|reset~regout\)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	datab => \lcd_instance|lcd_state.S5~regout\,
	datad => \lcd_instance|reset~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|n_flag~regout\);

-- Location: LC_X14_Y6_N2
\lcd_instance|state[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state\(1) = DFFEAS((\lcd_instance|state[1]~3_combout\) # ((\lcd_instance|state[1]~4\ & ((\lcd_instance|state\(2)) # (!\lcd_instance|n_flag~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|state\(2),
	datab => \lcd_instance|state[1]~3_combout\,
	datac => \lcd_instance|state[1]~4\,
	datad => \lcd_instance|n_flag~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state\(1));

-- Location: LC_X13_Y6_N4
\lcd_instance|state[2]~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state[2]~1_combout\ = (\lcd_instance|state\(0) & (((\lcd_start~regout\)))) # (!\lcd_instance|state\(0) & (((\lcd_instance|n_flag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(0),
	datac => \lcd_start~regout\,
	datad => \lcd_instance|n_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|state[2]~1_combout\);

-- Location: LC_X13_Y6_N5
\lcd_instance|lcd_ready\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_ready~regout\ = DFFEAS((!\lcd_instance|lcd_state.S2~regout\ & (!\lcd_instance|lcd_state.S1~regout\ & (\lcd_instance|lcd_state.000~regout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , , , , \lcd_instance|reset~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_state.S2~regout\,
	datab => \lcd_instance|lcd_state.S1~regout\,
	datac => \lcd_instance|lcd_state.000~regout\,
	aclr => GND,
	sclr => \lcd_instance|reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_ready~regout\);

-- Location: LC_X13_Y6_N9
\lcd_instance|state[2]~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state[2]~0_combout\ = (\lcd_instance|state\(1)) # ((\lcd_instance|state\(0) & ((\lcd_instance|n_flag~regout\))) # (!\lcd_instance|state\(0) & (!\lcd_instance|lcd_ready~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efcd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(0),
	datab => \lcd_instance|state\(1),
	datac => \lcd_instance|lcd_ready~regout\,
	datad => \lcd_instance|n_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|state[2]~0_combout\);

-- Location: LC_X13_Y6_N0
\lcd_instance|state[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state\(2) = DFFEAS((\lcd_instance|state\(2) & ((\lcd_instance|state[2]~0_combout\) # ((\lcd_instance|state\(1) & \lcd_instance|state[2]~1_combout\)))) # (!\lcd_instance|state\(2) & (\lcd_instance|state\(1) & 
-- (\lcd_instance|state[2]~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \lcd_instance|state\(2),
	datab => \lcd_instance|state\(1),
	datac => \lcd_instance|state[2]~1_combout\,
	datad => \lcd_instance|state[2]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state\(2));

-- Location: LC_X10_Y6_N6
\lcd_instance|WideOr0~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|WideOr0~0_combout\ = (lcd_msg_index(3) & ((lcd_msg_index(2)) # ((lcd_msg_index(1) & lcd_msg_index(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => lcd_msg_index(1),
	datab => lcd_msg_index(3),
	datac => lcd_msg_index(0),
	datad => lcd_msg_index(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|WideOr0~0_combout\);

-- Location: LC_X13_Y6_N6
\lcd_instance|Mux147~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux147~0_combout\ = (\lcd_instance|state\(0) & (\lcd_instance|state\(1))) # (!\lcd_instance|state\(0) & ((\lcd_instance|state\(1) & ((!\lcd_instance|n_flag~regout\))) # (!\lcd_instance|state\(1) & (\lcd_instance|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "98dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(0),
	datab => \lcd_instance|state\(1),
	datac => \lcd_instance|WideOr0~0_combout\,
	datad => \lcd_instance|n_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux147~0_combout\);

-- Location: LC_X13_Y6_N7
\lcd_instance|Mux147~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Mux147~1_combout\ = ((\lcd_instance|Mux147~0_combout\ & ((!\lcd_start~regout\) # (!\lcd_instance|state\(2)))))

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
	datab => \lcd_instance|state\(2),
	datac => \lcd_start~regout\,
	datad => \lcd_instance|Mux147~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Mux147~1_combout\);

-- Location: LC_X13_Y6_N8
\lcd_instance|state[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|state\(0) = DFFEAS((\lcd_instance|state\(0) & ((\lcd_instance|state\(2) & ((!\lcd_instance|Mux147~1_combout\))) # (!\lcd_instance|state\(2) & ((\lcd_instance|flag~1_combout\) # (\lcd_instance|Mux147~1_combout\))))) # 
-- (!\lcd_instance|state\(0) & (!\lcd_instance|state\(2) & ((!\lcd_instance|Mux147~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "22b9",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|state\(0),
	datab => \lcd_instance|state\(2),
	datac => \lcd_instance|flag~1_combout\,
	datad => \lcd_instance|Mux147~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|state\(0));

-- Location: LC_X14_Y6_N1
\lcd_instance|done~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|done~0_combout\ = (\lcd_instance|done~regout\ & ((\lcd_instance|state\(0) & ((\lcd_instance|state\(2)) # (!\lcd_instance|state\(1)))) # (!\lcd_instance|state\(0) & ((\lcd_instance|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8cc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(2),
	datab => \lcd_instance|done~regout\,
	datac => \lcd_instance|state\(0),
	datad => \lcd_instance|state\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|done~0_combout\);

-- Location: LC_X14_Y6_N6
\lcd_instance|done\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|done~regout\ = DFFEAS((\lcd_instance|done~0_combout\) # ((\lcd_instance|state\(0) & (!\lcd_start~regout\ & \lcd_instance|reset~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cecc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|state\(0),
	datab => \lcd_instance|done~0_combout\,
	datac => \lcd_start~regout\,
	datad => \lcd_instance|reset~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|done~regout\);

-- Location: LC_X5_Y5_N8
\lcd_start~0\ : maxv_lcell
-- Equation(s):
-- \lcd_start~0_combout\ = (!\coke~combout\ & (!\pepsi~combout\ & (!\lays~combout\ & \lcd_instance|done~regout\)))

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
	dataa => \coke~combout\,
	datab => \pepsi~combout\,
	datac => \lays~combout\,
	datad => \lcd_instance|done~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_start~0_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\quantity3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_quantity3,
	combout => \quantity3~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\quantity2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_quantity2,
	combout => \quantity2~combout\);

-- Location: LC_X6_Y5_N8
\always0~0\ : maxv_lcell
-- Equation(s):
-- \always0~0_combout\ = (\quantity3~combout\) # ((\quantity2~combout\) # ((\quantity1~combout\) # (!\lcd_start~1_combout\)))

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
	dataa => \quantity3~combout\,
	datab => \quantity2~combout\,
	datac => \quantity1~combout\,
	datad => \lcd_start~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~0_combout\);

-- Location: LC_X6_Y5_N7
\main_fsm_state.state_idle\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state.state_idle~regout\ = DFFEAS((\lcd_start~0_combout\ & (!\main_fsm_state.state_idle2~regout\ & ((!\always0~0_combout\) # (!\main_fsm_state.state_endMessage~regout\)))) # (!\lcd_start~0_combout\ & (((!\always0~0_combout\) # 
-- (!\main_fsm_state.state_endMessage~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0777",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_start~0_combout\,
	datab => \main_fsm_state.state_idle2~regout\,
	datac => \main_fsm_state.state_endMessage~regout\,
	datad => \always0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_fsm_state.state_idle~regout\);

-- Location: LC_X6_Y5_N5
\WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \WideOr1~0_combout\ = (((\main_fsm_state.state_idle2~regout\) # (!\main_fsm_state.state_idle~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \main_fsm_state.state_idle~regout\,
	datad => \main_fsm_state.state_idle2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~0_combout\);

-- Location: LC_X3_Y6_N6
\selected_product.10\ : maxv_lcell
-- Equation(s):
-- \selected_product.10~regout\ = DFFEAS((!\pepsi~combout\ & (((\lays~combout\)))), GLOBAL(\clk~combout\), VCC, , \WideOr1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \pepsi~combout\,
	datac => \lays~combout\,
	aclr => GND,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \selected_product.10~regout\);

-- Location: LC_X4_Y6_N5
\Add3~10\ : maxv_lcell
-- Equation(s):
-- \Add3~10_combout\ = cokeQuantity(0) $ ((!selected_quantity(0)))
-- \Add3~12\ = CARRY(((!selected_quantity(0))) # (!cokeQuantity(0)))
-- \Add3~12COUT1_19\ = CARRY(((!selected_quantity(0))) # (!cokeQuantity(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9977",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cokeQuantity(0),
	datab => selected_quantity(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_19\);

-- Location: LC_X3_Y6_N8
\cokeQuantity[2]~0\ : maxv_lcell
-- Equation(s):
-- \cokeQuantity[2]~0_combout\ = ((\main_fsm_state.state_selectQuantity~regout\ & (\selected_product.10~regout\ & !\LessThan1~1_combout\)))

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
	datab => \main_fsm_state.state_selectQuantity~regout\,
	datac => \selected_product.10~regout\,
	datad => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cokeQuantity[2]~0_combout\);

-- Location: LC_X3_Y6_N3
\cokeQuantity[0]\ : maxv_lcell
-- Equation(s):
-- cokeQuantity(0) = DFFEAS((((!\Add3~10_combout\))), GLOBAL(\clk~combout\), VCC, , \cokeQuantity[2]~0_combout\, , , , )

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
	datad => \Add3~10_combout\,
	aclr => GND,
	ena => \cokeQuantity[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cokeQuantity(0));

-- Location: LC_X3_Y6_N1
\selected_quantity[1]\ : maxv_lcell
-- Equation(s):
-- \LessThan0~0\ = (selected_quantity[1] & (((pepsiQuantity(0) & selected_quantity(0))) # (!pepsiQuantity(1)))) # (!selected_quantity[1] & (pepsiQuantity(0) & (selected_quantity(0) & !pepsiQuantity(1))))
-- selected_quantity(1) = DFFEAS(\LessThan0~0\, GLOBAL(\clk~combout\), VCC, , \WideOr1~0_combout\, \quantity2~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80f8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pepsiQuantity(0),
	datab => selected_quantity(0),
	datac => \quantity2~combout\,
	datad => pepsiQuantity(1),
	aclr => GND,
	sload => VCC,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0\,
	regout => selected_quantity(1));

-- Location: LC_X4_Y6_N6
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = cokeQuantity(1) $ (selected_quantity(1) $ ((!\Add3~12\)))
-- \Add3~7\ = CARRY((cokeQuantity(1) & (selected_quantity(1) & !\Add3~12\)) # (!cokeQuantity(1) & ((selected_quantity(1)) # (!\Add3~12\))))
-- \Add3~7COUT1_21\ = CARRY((cokeQuantity(1) & (selected_quantity(1) & !\Add3~12COUT1_19\)) # (!cokeQuantity(1) & ((selected_quantity(1)) # (!\Add3~12COUT1_19\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cokeQuantity(1),
	datab => selected_quantity(1),
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_21\);

-- Location: LC_X4_Y6_N8
\cokeQuantity[1]\ : maxv_lcell
-- Equation(s):
-- cokeQuantity(1) = DFFEAS((\selected_product.10~regout\ & ((\LessThan1~1_combout\ & (cokeQuantity(1))) # (!\LessThan1~1_combout\ & ((\Add3~5_combout\))))) # (!\selected_product.10~regout\ & (cokeQuantity(1))), GLOBAL(\clk~combout\), VCC, , 
-- \main_fsm_state.state_selectQuantity~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cokeQuantity(1),
	datab => \selected_product.10~regout\,
	datac => \Add3~5_combout\,
	datad => \LessThan1~1_combout\,
	aclr => GND,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cokeQuantity(1));

-- Location: LC_X3_Y6_N9
\selected_quantity[0]\ : maxv_lcell
-- Equation(s):
-- \LessThan1~0\ = (selected_quantity(1) & (((cokeQuantity(0) & selected_quantity[0])) # (!cokeQuantity(1)))) # (!selected_quantity(1) & (cokeQuantity(0) & (selected_quantity[0] & !cokeQuantity(1))))
-- selected_quantity(0) = DFFEAS(\LessThan1~0\, GLOBAL(\clk~combout\), VCC, , \WideOr1~0_combout\, \quantity3~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80ec",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => cokeQuantity(0),
	datab => selected_quantity(1),
	datac => \quantity3~combout\,
	datad => cokeQuantity(1),
	aclr => GND,
	sload => VCC,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0\,
	regout => selected_quantity(0));

-- Location: LC_X3_Y7_N0
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = selected_quantity(0) $ ((!pepsiQuantity(0)))
-- \Add1~12\ = CARRY(((!pepsiQuantity(0))) # (!selected_quantity(0)))
-- \Add1~12COUT1_19\ = CARRY(((!pepsiQuantity(0))) # (!selected_quantity(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9977",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datab => pepsiQuantity(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_19\);

-- Location: LC_X3_Y7_N6
\pepsiQuantity[0]\ : maxv_lcell
-- Equation(s):
-- pepsiQuantity(0) = DFFEAS((((!\Add1~10_combout\))), GLOBAL(\clk~combout\), VCC, , !\pepsiQuantity[0]~0_combout\, , , , )

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
	datac => \Add1~10_combout\,
	aclr => GND,
	ena => \ALT_INV_pepsiQuantity[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pepsiQuantity(0));

-- Location: LC_X3_Y6_N2
\selected_quantity[2]\ : maxv_lcell
-- Equation(s):
-- \LessThan0~1\ = ((pepsiQuantity(2) & ((selected_quantity[2]) # (\LessThan0~0\))) # (!pepsiQuantity(2) & (selected_quantity[2] & \LessThan0~0\)))
-- selected_quantity(2) = DFFEAS(\LessThan0~1\, GLOBAL(\clk~combout\), VCC, , \WideOr1~0_combout\, \quantity1~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => pepsiQuantity(2),
	datac => \quantity1~combout\,
	datad => \LessThan0~0\,
	aclr => GND,
	sload => VCC,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1\,
	regout => selected_quantity(2));

-- Location: LC_X3_Y7_N4
\pepsiQuantity[0]~0\ : maxv_lcell
-- Equation(s):
-- \pepsiQuantity[0]~0_combout\ = (((\LessThan0~1\) # (!\selected_product.01~regout\)) # (!\main_fsm_state.state_selectQuantity~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \main_fsm_state.state_selectQuantity~regout\,
	datac => \selected_product.01~regout\,
	datad => \LessThan0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \pepsiQuantity[0]~0_combout\);

-- Location: LC_X3_Y7_N1
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = pepsiQuantity(1) $ (selected_quantity(1) $ ((!\Add1~12\)))
-- \Add1~7\ = CARRY((pepsiQuantity(1) & (selected_quantity(1) & !\Add1~12\)) # (!pepsiQuantity(1) & ((selected_quantity(1)) # (!\Add1~12\))))
-- \Add1~7COUT1_21\ = CARRY((pepsiQuantity(1) & (selected_quantity(1) & !\Add1~12COUT1_19\)) # (!pepsiQuantity(1) & ((selected_quantity(1)) # (!\Add1~12COUT1_19\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => pepsiQuantity(1),
	datab => selected_quantity(1),
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_21\);

-- Location: LC_X3_Y7_N7
\pepsiQuantity[1]\ : maxv_lcell
-- Equation(s):
-- pepsiQuantity(1) = DFFEAS(((\pepsiQuantity[0]~0_combout\ & (pepsiQuantity(1))) # (!\pepsiQuantity[0]~0_combout\ & ((\Add1~5_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => pepsiQuantity(1),
	datac => \pepsiQuantity[0]~0_combout\,
	datad => \Add1~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pepsiQuantity(1));

-- Location: LC_X3_Y7_N2
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = (selected_quantity(2) $ (\Add1~7\ $ (!pepsiQuantity(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => selected_quantity(2),
	datad => pepsiQuantity(2),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: LC_X3_Y7_N3
\pepsiQuantity[2]\ : maxv_lcell
-- Equation(s):
-- pepsiQuantity(2) = DFFEAS((((!\Add1~0_combout\))), GLOBAL(\clk~combout\), VCC, , !\pepsiQuantity[0]~0_combout\, , , , )

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
	datad => \Add1~0_combout\,
	aclr => GND,
	ena => \ALT_INV_pepsiQuantity[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pepsiQuantity(2));

-- Location: LC_X4_Y6_N7
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = (cokeQuantity(2) $ (\Add3~7\ $ (!selected_quantity(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => cokeQuantity(2),
	datad => selected_quantity(2),
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\);

-- Location: LC_X3_Y6_N7
\cokeQuantity[2]\ : maxv_lcell
-- Equation(s):
-- cokeQuantity(2) = DFFEAS((((!\Add3~0_combout\))), GLOBAL(\clk~combout\), VCC, , \cokeQuantity[2]~0_combout\, , , , )

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
	datad => \Add3~0_combout\,
	aclr => GND,
	ena => \cokeQuantity[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cokeQuantity(2));

-- Location: LC_X3_Y6_N0
\LessThan1~1\ : maxv_lcell
-- Equation(s):
-- \LessThan1~1_combout\ = (selected_quantity(2) & (((cokeQuantity(2)) # (\LessThan1~0\)))) # (!selected_quantity(2) & (((cokeQuantity(2) & \LessThan1~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(2),
	datac => cokeQuantity(2),
	datad => \LessThan1~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1_combout\);

-- Location: LC_X3_Y6_N4
\selected_product.01\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state~22\ = (selected_product.01 & (((\LessThan0~1\)))) # (!selected_product.01 & (\selected_product.10~regout\ & (\LessThan1~1_combout\)))
-- \selected_product.01~regout\ = DFFEAS(\main_fsm_state~22\, GLOBAL(\clk~combout\), VCC, , \WideOr1~0_combout\, \pepsi~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f808",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \selected_product.10~regout\,
	datab => \LessThan1~1_combout\,
	datac => \pepsi~combout\,
	datad => \LessThan0~1\,
	aclr => GND,
	sload => VCC,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main_fsm_state~22\,
	regout => \selected_product.01~regout\);

-- Location: LC_X2_Y6_N4
\laysQuantity[2]~0\ : maxv_lcell
-- Equation(s):
-- \laysQuantity[2]~0_combout\ = (((\main_fsm_state.state_selectQuantity~regout\ & \total_cost~1_combout\)))

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
	datac => \main_fsm_state.state_selectQuantity~regout\,
	datad => \total_cost~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \laysQuantity[2]~0_combout\);

-- Location: LC_X2_Y6_N5
\Add5~10\ : maxv_lcell
-- Equation(s):
-- \Add5~10_combout\ = selected_quantity(0) $ ((!laysQuantity(0)))
-- \Add5~12\ = CARRY(((!laysQuantity(0))) # (!selected_quantity(0)))
-- \Add5~12COUT1_19\ = CARRY(((!laysQuantity(0))) # (!selected_quantity(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9977",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datab => laysQuantity(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10_combout\,
	cout0 => \Add5~12\,
	cout1 => \Add5~12COUT1_19\);

-- Location: LC_X2_Y6_N2
\laysQuantity[0]\ : maxv_lcell
-- Equation(s):
-- laysQuantity(0) = DFFEAS((((!\Add5~10_combout\))), GLOBAL(\clk~combout\), VCC, , \laysQuantity[2]~0_combout\, , , , )

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
	datac => \Add5~10_combout\,
	aclr => GND,
	ena => \laysQuantity[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => laysQuantity(0));

-- Location: LC_X2_Y6_N6
\Add5~5\ : maxv_lcell
-- Equation(s):
-- \Add5~5_combout\ = selected_quantity(1) $ (laysQuantity(1) $ ((!\Add5~12\)))
-- \Add5~7\ = CARRY((selected_quantity(1) & ((!\Add5~12\) # (!laysQuantity(1)))) # (!selected_quantity(1) & (!laysQuantity(1) & !\Add5~12\)))
-- \Add5~7COUT1_21\ = CARRY((selected_quantity(1) & ((!\Add5~12COUT1_19\) # (!laysQuantity(1)))) # (!selected_quantity(1) & (!laysQuantity(1) & !\Add5~12COUT1_19\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(1),
	datab => laysQuantity(1),
	cin0 => \Add5~12\,
	cin1 => \Add5~12COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\,
	cout0 => \Add5~7\,
	cout1 => \Add5~7COUT1_21\);

-- Location: LC_X2_Y6_N3
\laysQuantity[1]\ : maxv_lcell
-- Equation(s):
-- laysQuantity(1) = DFFEAS((\laysQuantity[2]~0_combout\ & ((\selected_product.01~regout\ & ((laysQuantity(1)))) # (!\selected_product.01~regout\ & (\Add5~5_combout\)))) # (!\laysQuantity[2]~0_combout\ & (((laysQuantity(1))))), GLOBAL(\clk~combout\), VCC, , 
-- , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \laysQuantity[2]~0_combout\,
	datab => \selected_product.01~regout\,
	datac => \Add5~5_combout\,
	datad => laysQuantity(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => laysQuantity(1));

-- Location: LC_X2_Y6_N7
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = (selected_quantity(2) $ (\Add5~7\ $ (!laysQuantity(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => selected_quantity(2),
	datad => laysQuantity(2),
	cin0 => \Add5~7\,
	cin1 => \Add5~7COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\);

-- Location: LC_X2_Y6_N8
\laysQuantity[2]\ : maxv_lcell
-- Equation(s):
-- laysQuantity(2) = DFFEAS((((!\Add5~0_combout\))), GLOBAL(\clk~combout\), VCC, , \laysQuantity[2]~0_combout\, , , , )

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
	datad => \Add5~0_combout\,
	aclr => GND,
	ena => \laysQuantity[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => laysQuantity(2));

-- Location: LC_X3_Y5_N7
\selected_product.11\ : maxv_lcell
-- Equation(s):
-- \selected_product.11~regout\ = DFFEAS(((\coke~combout\ & (!\lays~combout\ & !\pepsi~combout\))), GLOBAL(\clk~combout\), VCC, , \WideOr1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \coke~combout\,
	datac => \lays~combout\,
	datad => \pepsi~combout\,
	aclr => GND,
	ena => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \selected_product.11~regout\);

-- Location: LC_X2_Y6_N0
\total_cost~0\ : maxv_lcell
-- Equation(s):
-- \total_cost~0_combout\ = (laysQuantity(1) & (selected_quantity(0) & (laysQuantity(0) & selected_quantity(1)))) # (!laysQuantity(1) & ((selected_quantity(1)) # ((selected_quantity(0) & laysQuantity(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => laysQuantity(1),
	datab => selected_quantity(0),
	datac => laysQuantity(0),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_cost~0_combout\);

-- Location: LC_X2_Y6_N1
\total_cost~1\ : maxv_lcell
-- Equation(s):
-- \total_cost~1_combout\ = (\selected_product.11~regout\ & ((laysQuantity(2) & (!selected_quantity(2) & !\total_cost~0_combout\)) # (!laysQuantity(2) & ((!\total_cost~0_combout\) # (!selected_quantity(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => laysQuantity(2),
	datab => selected_quantity(2),
	datac => \selected_product.11~regout\,
	datad => \total_cost~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_cost~1_combout\);

-- Location: LC_X3_Y6_N5
\main_fsm_state~23\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state~23_combout\ = (\main_fsm_state~22\) # ((!\selected_product.10~regout\ & (!\selected_product.01~regout\ & !\total_cost~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff01",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \selected_product.10~regout\,
	datab => \selected_product.01~regout\,
	datac => \total_cost~1_combout\,
	datad => \main_fsm_state~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \main_fsm_state~23_combout\);

-- Location: LC_X4_Y6_N4
\main_fsm_state.state_selectQuantity\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state.state_selectQuantity~regout\ = DFFEAS((\main_fsm_state.state_selectQuantity~regout\ & ((\main_fsm_state~23_combout\) # ((!\lcd_start~1_combout\ & \WideOr1~0_combout\)))) # (!\main_fsm_state.state_selectQuantity~regout\ & 
-- (!\lcd_start~1_combout\ & (\WideOr1~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \main_fsm_state.state_selectQuantity~regout\,
	datab => \lcd_start~1_combout\,
	datac => \WideOr1~0_combout\,
	datad => \main_fsm_state~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_fsm_state.state_selectQuantity~regout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\twoRs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_twoRs,
	combout => \twoRs~combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\oneRs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_oneRs,
	combout => \oneRs~combout\);

-- Location: LC_X4_Y7_N4
\total_money[4]~0\ : maxv_lcell
-- Equation(s):
-- \total_money[4]~0_combout\ = (((\twoRs~combout\ & \oneRs~combout\)))

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
	datac => \twoRs~combout\,
	datad => \oneRs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money[4]~0_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tenRs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_tenRs,
	combout => \tenRs~combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fiveRs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fiveRs,
	combout => \fiveRs~combout\);

-- Location: LC_X4_Y7_N5
\total_money[0]~1\ : maxv_lcell
-- Equation(s):
-- \total_money[0]~1_combout\ = ((\oneRs~combout\ & ((\fiveRs~combout\) # (!\twoRs~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \fiveRs~combout\,
	datac => \twoRs~combout\,
	datad => \oneRs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money[0]~1_combout\);

-- Location: LC_X3_Y8_N1
\Add11~30\ : maxv_lcell
-- Equation(s):
-- \Add11~30_combout\ = ((!total_money(1)))
-- \Add11~32\ = CARRY(((total_money(1))))
-- \Add11~32COUT1_42\ = CARRY(((total_money(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~30_combout\,
	cout0 => \Add11~32\,
	cout1 => \Add11~32COUT1_42\);

-- Location: LC_X6_Y7_N1
\Add9~30\ : maxv_lcell
-- Equation(s):
-- \Add9~30_combout\ = (!total_money(1))
-- \Add9~32\ = CARRY((total_money(1)))
-- \Add9~32COUT1_42\ = CARRY((total_money(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~30_combout\,
	cout0 => \Add9~32\,
	cout1 => \Add9~32COUT1_42\);

-- Location: LC_X5_Y8_N9
\total_money[7]~4\ : maxv_lcell
-- Equation(s):
-- \total_money[7]~4_combout\ = (\main_fsm_state.state_payment~regout\ & (((\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm_state.state_payment~regout\,
	datac => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money[7]~4_combout\);

-- Location: LC_X5_Y7_N0
\Add8~35\ : maxv_lcell
-- Equation(s):
-- \Add8~35_combout\ = (!total_money(0))
-- \Add8~37\ = CARRY((total_money(0)))
-- \Add8~37COUT1_48\ = CARRY((total_money(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~35_combout\,
	cout0 => \Add8~37\,
	cout1 => \Add8~37COUT1_48\);

-- Location: LC_X5_Y9_N0
\Add10~35\ : maxv_lcell
-- Equation(s):
-- \Add10~35_combout\ = (!total_money(0))
-- \Add10~37\ = CARRY((total_money(0)))
-- \Add10~37COUT1_48\ = CARRY((total_money(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~35_combout\,
	cout0 => \Add10~37\,
	cout1 => \Add10~37COUT1_48\);

-- Location: LC_X4_Y7_N1
\total_money[0]~18\ : maxv_lcell
-- Equation(s):
-- \total_money[0]~18_combout\ = (((!\fiveRs~combout\ & \Add10~35_combout\)))

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
	datac => \fiveRs~combout\,
	datad => \Add10~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money[0]~18_combout\);

-- Location: LC_X4_Y7_N0
\total_money[0]~19\ : maxv_lcell
-- Equation(s):
-- \total_money[0]~19_combout\ = (\oneRs~combout\ & (\twoRs~combout\ & ((\total_money[0]~18_combout\)))) # (!\oneRs~combout\ & (((\Add8~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b830",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \twoRs~combout\,
	datab => \oneRs~combout\,
	datac => \Add8~35_combout\,
	datad => \total_money[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money[0]~19_combout\);

-- Location: LC_X6_Y8_N8
\total_money[0]\ : maxv_lcell
-- Equation(s):
-- total_money(0) = DFFEAS((\total_money[7]~4_combout\ & ((\total_money[0]~19_combout\) # ((\total_money[0]~1_combout\ & total_money(0))))) # (!\total_money[7]~4_combout\ & (((total_money(0))))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc8c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[0]~1_combout\,
	datab => total_money(0),
	datac => \total_money[7]~4_combout\,
	datad => \total_money[0]~19_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(0));

-- Location: LC_X5_Y7_N1
\Add8~30\ : maxv_lcell
-- Equation(s):
-- \Add8~30_combout\ = total_money(1) $ ((((\Add8~37\))))
-- \Add8~32\ = CARRY(((!\Add8~37\)) # (!total_money(1)))
-- \Add8~32COUT1_50\ = CARRY(((!\Add8~37COUT1_48\)) # (!total_money(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(1),
	cin0 => \Add8~37\,
	cin1 => \Add8~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~30_combout\,
	cout0 => \Add8~32\,
	cout1 => \Add8~32COUT1_50\);

-- Location: LC_X5_Y9_N1
\Add10~30\ : maxv_lcell
-- Equation(s):
-- \Add10~30_combout\ = total_money(1) $ ((((\Add10~37\))))
-- \Add10~32\ = CARRY(((!\Add10~37\)) # (!total_money(1)))
-- \Add10~32COUT1_50\ = CARRY(((!\Add10~37COUT1_48\)) # (!total_money(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(1),
	cin0 => \Add10~37\,
	cin1 => \Add10~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~30_combout\,
	cout0 => \Add10~32\,
	cout1 => \Add10~32COUT1_50\);

-- Location: LC_X5_Y7_N9
\total_money~16\ : maxv_lcell
-- Equation(s):
-- \total_money~16_combout\ = (\total_money[4]~0_combout\ & (((\total_money[0]~1_combout\) # (\Add10~30_combout\)))) # (!\total_money[4]~0_combout\ & (\Add8~30_combout\ & (!\total_money[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[4]~0_combout\,
	datab => \Add8~30_combout\,
	datac => \total_money[0]~1_combout\,
	datad => \Add10~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money~16_combout\);

-- Location: LC_X5_Y8_N8
\total_money[7]~5\ : maxv_lcell
-- Equation(s):
-- \total_money[7]~5_combout\ = (\total_money[7]~4_combout\ & (((!\tenRs~combout\) # (!\fiveRs~combout\)) # (!\total_money[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[4]~0_combout\,
	datab => \fiveRs~combout\,
	datac => \tenRs~combout\,
	datad => \total_money[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money[7]~5_combout\);

-- Location: LC_X6_Y8_N1
\total_money[1]\ : maxv_lcell
-- Equation(s):
-- total_money(1) = DFFEAS((\total_money[0]~1_combout\ & ((\total_money~16_combout\ & (\Add11~30_combout\)) # (!\total_money~16_combout\ & ((\Add9~30_combout\))))) # (!\total_money[0]~1_combout\ & (((\total_money~16_combout\)))), GLOBAL(\clk~combout\), VCC, 
-- , \total_money[7]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[0]~1_combout\,
	datab => \Add11~30_combout\,
	datac => \Add9~30_combout\,
	datad => \total_money~16_combout\,
	aclr => GND,
	ena => \total_money[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(1));

-- Location: LC_X3_Y8_N2
\Add11~25\ : maxv_lcell
-- Equation(s):
-- \Add11~25_combout\ = (total_money(2) $ ((\Add11~32\)))
-- \Add11~27\ = CARRY(((!\Add11~32\) # (!total_money(2))))
-- \Add11~27COUT1_44\ = CARRY(((!\Add11~32COUT1_42\) # (!total_money(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(2),
	cin0 => \Add11~32\,
	cin1 => \Add11~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~25_combout\,
	cout0 => \Add11~27\,
	cout1 => \Add11~27COUT1_44\);

-- Location: LC_X5_Y9_N2
\Add10~25\ : maxv_lcell
-- Equation(s):
-- \Add10~25_combout\ = total_money(2) $ ((((\Add10~32\))))
-- \Add10~27\ = CARRY((total_money(2)) # ((!\Add10~32\)))
-- \Add10~27COUT1_52\ = CARRY((total_money(2)) # ((!\Add10~32COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(2),
	cin0 => \Add10~32\,
	cin1 => \Add10~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~25_combout\,
	cout0 => \Add10~27\,
	cout1 => \Add10~27COUT1_52\);

-- Location: LC_X6_Y7_N2
\Add9~25\ : maxv_lcell
-- Equation(s):
-- \Add9~25_combout\ = (total_money(2) $ ((\Add9~32\)))
-- \Add9~27\ = CARRY(((!\Add9~32\) # (!total_money(2))))
-- \Add9~27COUT1_44\ = CARRY(((!\Add9~32COUT1_42\) # (!total_money(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(2),
	cin0 => \Add9~32\,
	cin1 => \Add9~32COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~25_combout\,
	cout0 => \Add9~27\,
	cout1 => \Add9~27COUT1_44\);

-- Location: LC_X5_Y7_N2
\Add8~25\ : maxv_lcell
-- Equation(s):
-- \Add8~25_combout\ = total_money(2) $ ((((!\Add8~32\))))
-- \Add8~27\ = CARRY((total_money(2) & ((!\Add8~32\))))
-- \Add8~27COUT1_52\ = CARRY((total_money(2) & ((!\Add8~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(2),
	cin0 => \Add8~32\,
	cin1 => \Add8~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~25_combout\,
	cout0 => \Add8~27\,
	cout1 => \Add8~27COUT1_52\);

-- Location: LC_X4_Y8_N9
\total_money~14\ : maxv_lcell
-- Equation(s):
-- \total_money~14_combout\ = (\total_money[4]~0_combout\ & (\total_money[0]~1_combout\)) # (!\total_money[4]~0_combout\ & ((\total_money[0]~1_combout\ & (\Add9~25_combout\)) # (!\total_money[0]~1_combout\ & ((\Add8~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[4]~0_combout\,
	datab => \total_money[0]~1_combout\,
	datac => \Add9~25_combout\,
	datad => \Add8~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money~14_combout\);

-- Location: LC_X4_Y8_N5
\total_money[2]\ : maxv_lcell
-- Equation(s):
-- total_money(2) = DFFEAS((\total_money[4]~0_combout\ & ((\total_money~14_combout\ & (\Add11~25_combout\)) # (!\total_money~14_combout\ & ((\Add10~25_combout\))))) # (!\total_money[4]~0_combout\ & (((\total_money~14_combout\)))), GLOBAL(\clk~combout\), VCC, 
-- , \total_money[7]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[4]~0_combout\,
	datab => \Add11~25_combout\,
	datac => \Add10~25_combout\,
	datad => \total_money~14_combout\,
	aclr => GND,
	ena => \total_money[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(2));

-- Location: LC_X3_Y8_N3
\Add11~20\ : maxv_lcell
-- Equation(s):
-- \Add11~20_combout\ = (total_money(3) $ ((\Add11~27\)))
-- \Add11~22\ = CARRY(((total_money(3)) # (!\Add11~27\)))
-- \Add11~22COUT1_46\ = CARRY(((total_money(3)) # (!\Add11~27COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(3),
	cin0 => \Add11~27\,
	cin1 => \Add11~27COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~20_combout\,
	cout0 => \Add11~22\,
	cout1 => \Add11~22COUT1_46\);

-- Location: LC_X6_Y7_N3
\Add9~20\ : maxv_lcell
-- Equation(s):
-- \Add9~20_combout\ = (total_money(3) $ ((!\Add9~27\)))
-- \Add9~22\ = CARRY(((total_money(3) & !\Add9~27\)))
-- \Add9~22COUT1_46\ = CARRY(((total_money(3) & !\Add9~27COUT1_44\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(3),
	cin0 => \Add9~27\,
	cin1 => \Add9~27COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~20_combout\,
	cout0 => \Add9~22\,
	cout1 => \Add9~22COUT1_46\);

-- Location: LC_X5_Y9_N3
\Add10~20\ : maxv_lcell
-- Equation(s):
-- \Add10~20_combout\ = (total_money(3) $ ((\Add10~27\)))
-- \Add10~22\ = CARRY(((!\Add10~27\) # (!total_money(3))))
-- \Add10~22COUT1_54\ = CARRY(((!\Add10~27COUT1_52\) # (!total_money(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(3),
	cin0 => \Add10~27\,
	cin1 => \Add10~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~20_combout\,
	cout0 => \Add10~22\,
	cout1 => \Add10~22COUT1_54\);

-- Location: LC_X5_Y7_N3
\Add8~20\ : maxv_lcell
-- Equation(s):
-- \Add8~20_combout\ = (total_money(3) $ ((\Add8~27\)))
-- \Add8~22\ = CARRY(((!\Add8~27\) # (!total_money(3))))
-- \Add8~22COUT1_54\ = CARRY(((!\Add8~27COUT1_52\) # (!total_money(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(3),
	cin0 => \Add8~27\,
	cin1 => \Add8~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~20_combout\,
	cout0 => \Add8~22\,
	cout1 => \Add8~22COUT1_54\);

-- Location: LC_X6_Y8_N3
\total_money~12\ : maxv_lcell
-- Equation(s):
-- \total_money~12_combout\ = (\total_money[4]~0_combout\ & ((\total_money[0]~1_combout\) # ((\Add10~20_combout\)))) # (!\total_money[4]~0_combout\ & (!\total_money[0]~1_combout\ & ((\Add8~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[4]~0_combout\,
	datab => \total_money[0]~1_combout\,
	datac => \Add10~20_combout\,
	datad => \Add8~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money~12_combout\);

-- Location: LC_X6_Y8_N4
\total_money[3]\ : maxv_lcell
-- Equation(s):
-- total_money(3) = DFFEAS((\total_money[0]~1_combout\ & ((\total_money~12_combout\ & (\Add11~20_combout\)) # (!\total_money~12_combout\ & ((\Add9~20_combout\))))) # (!\total_money[0]~1_combout\ & (((\total_money~12_combout\)))), GLOBAL(\clk~combout\), VCC, 
-- , \total_money[7]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[0]~1_combout\,
	datab => \Add11~20_combout\,
	datac => \Add9~20_combout\,
	datad => \total_money~12_combout\,
	aclr => GND,
	ena => \total_money[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(3));

-- Location: LC_X3_Y8_N4
\Add11~15\ : maxv_lcell
-- Equation(s):
-- \Add11~15_combout\ = (total_money(4) $ ((\Add11~22\)))
-- \Add11~17\ = CARRY(((!\Add11~22COUT1_46\) # (!total_money(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(4),
	cin0 => \Add11~22\,
	cin1 => \Add11~22COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~15_combout\,
	cout => \Add11~17\);

-- Location: LC_X5_Y9_N4
\Add10~15\ : maxv_lcell
-- Equation(s):
-- \Add10~15_combout\ = (total_money(4) $ ((!\Add10~22\)))
-- \Add10~17\ = CARRY(((total_money(4) & !\Add10~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(4),
	cin0 => \Add10~22\,
	cin1 => \Add10~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~15_combout\,
	cout => \Add10~17\);

-- Location: LC_X5_Y7_N4
\Add8~15\ : maxv_lcell
-- Equation(s):
-- \Add8~15_combout\ = (total_money(4) $ ((!\Add8~22\)))
-- \Add8~17\ = CARRY(((total_money(4) & !\Add8~22COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(4),
	cin0 => \Add8~22\,
	cin1 => \Add8~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~15_combout\,
	cout => \Add8~17\);

-- Location: LC_X6_Y7_N4
\Add9~15\ : maxv_lcell
-- Equation(s):
-- \Add9~15_combout\ = total_money(4) $ ((((\Add9~22\))))
-- \Add9~17\ = CARRY(((!\Add9~22COUT1_46\)) # (!total_money(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(4),
	cin0 => \Add9~22\,
	cin1 => \Add9~22COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~15_combout\,
	cout => \Add9~17\);

-- Location: LC_X5_Y7_N8
\total_money~10\ : maxv_lcell
-- Equation(s):
-- \total_money~10_combout\ = (\total_money[0]~1_combout\ & ((\total_money[4]~0_combout\) # ((\Add9~15_combout\)))) # (!\total_money[0]~1_combout\ & (!\total_money[4]~0_combout\ & (\Add8~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[0]~1_combout\,
	datab => \total_money[4]~0_combout\,
	datac => \Add8~15_combout\,
	datad => \Add9~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money~10_combout\);

-- Location: LC_X4_Y8_N8
\total_money[4]\ : maxv_lcell
-- Equation(s):
-- total_money(4) = DFFEAS((\total_money[4]~0_combout\ & ((\total_money~10_combout\ & (\Add11~15_combout\)) # (!\total_money~10_combout\ & ((\Add10~15_combout\))))) # (!\total_money[4]~0_combout\ & (((\total_money~10_combout\)))), GLOBAL(\clk~combout\), VCC, 
-- , \total_money[7]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dda0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[4]~0_combout\,
	datab => \Add11~15_combout\,
	datac => \Add10~15_combout\,
	datad => \total_money~10_combout\,
	aclr => GND,
	ena => \total_money[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(4));

-- Location: LC_X6_Y7_N5
\Add9~10\ : maxv_lcell
-- Equation(s):
-- \Add9~10_combout\ = total_money(5) $ ((((!\Add9~17\))))
-- \Add9~12\ = CARRY((total_money(5) & ((!\Add9~17\))))
-- \Add9~12COUT1_48\ = CARRY((total_money(5) & ((!\Add9~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(5),
	cin => \Add9~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~10_combout\,
	cout0 => \Add9~12\,
	cout1 => \Add9~12COUT1_48\);

-- Location: LC_X3_Y8_N5
\Add11~10\ : maxv_lcell
-- Equation(s):
-- \Add11~10_combout\ = (total_money(5) $ ((!\Add11~17\)))
-- \Add11~12\ = CARRY(((total_money(5) & !\Add11~17\)))
-- \Add11~12COUT1_48\ = CARRY(((total_money(5) & !\Add11~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(5),
	cin => \Add11~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~10_combout\,
	cout0 => \Add11~12\,
	cout1 => \Add11~12COUT1_48\);

-- Location: LC_X5_Y9_N5
\Add10~10\ : maxv_lcell
-- Equation(s):
-- \Add10~10_combout\ = total_money(5) $ ((((\Add10~17\))))
-- \Add10~12\ = CARRY(((!\Add10~17\)) # (!total_money(5)))
-- \Add10~12COUT1_56\ = CARRY(((!\Add10~17\)) # (!total_money(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(5),
	cin => \Add10~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~10_combout\,
	cout0 => \Add10~12\,
	cout1 => \Add10~12COUT1_56\);

-- Location: LC_X5_Y7_N5
\Add8~10\ : maxv_lcell
-- Equation(s):
-- \Add8~10_combout\ = (total_money(5) $ ((\Add8~17\)))
-- \Add8~12\ = CARRY(((!\Add8~17\) # (!total_money(5))))
-- \Add8~12COUT1_56\ = CARRY(((!\Add8~17\) # (!total_money(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(5),
	cin => \Add8~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~10_combout\,
	cout0 => \Add8~12\,
	cout1 => \Add8~12COUT1_56\);

-- Location: LC_X6_Y8_N9
\total_money~8\ : maxv_lcell
-- Equation(s):
-- \total_money~8_combout\ = (\total_money[0]~1_combout\ & (\total_money[4]~0_combout\)) # (!\total_money[0]~1_combout\ & ((\total_money[4]~0_combout\ & (\Add10~10_combout\)) # (!\total_money[4]~0_combout\ & ((\Add8~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[0]~1_combout\,
	datab => \total_money[4]~0_combout\,
	datac => \Add10~10_combout\,
	datad => \Add8~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money~8_combout\);

-- Location: LC_X6_Y8_N7
\total_money[5]\ : maxv_lcell
-- Equation(s):
-- total_money(5) = DFFEAS((\total_money[0]~1_combout\ & ((\total_money~8_combout\ & ((\Add11~10_combout\))) # (!\total_money~8_combout\ & (\Add9~10_combout\)))) # (!\total_money[0]~1_combout\ & (((\total_money~8_combout\)))), GLOBAL(\clk~combout\), VCC, , 
-- \total_money[7]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[0]~1_combout\,
	datab => \Add9~10_combout\,
	datac => \Add11~10_combout\,
	datad => \total_money~8_combout\,
	aclr => GND,
	ena => \total_money[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(5));

-- Location: LC_X5_Y9_N6
\Add10~5\ : maxv_lcell
-- Equation(s):
-- \Add10~5_combout\ = (total_money(6) $ ((!(!\Add10~17\ & \Add10~12\) # (\Add10~17\ & \Add10~12COUT1_56\))))
-- \Add10~7\ = CARRY(((total_money(6) & !\Add10~12\)))
-- \Add10~7COUT1_58\ = CARRY(((total_money(6) & !\Add10~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(6),
	cin => \Add10~17\,
	cin0 => \Add10~12\,
	cin1 => \Add10~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~5_combout\,
	cout0 => \Add10~7\,
	cout1 => \Add10~7COUT1_58\);

-- Location: LC_X3_Y8_N6
\Add11~5\ : maxv_lcell
-- Equation(s):
-- \Add11~5_combout\ = (total_money(6) $ (((!\Add11~17\ & \Add11~12\) # (\Add11~17\ & \Add11~12COUT1_48\))))
-- \Add11~7\ = CARRY(((!\Add11~12\) # (!total_money(6))))
-- \Add11~7COUT1_50\ = CARRY(((!\Add11~12COUT1_48\) # (!total_money(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(6),
	cin => \Add11~17\,
	cin0 => \Add11~12\,
	cin1 => \Add11~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~5_combout\,
	cout0 => \Add11~7\,
	cout1 => \Add11~7COUT1_50\);

-- Location: LC_X6_Y7_N6
\Add9~5\ : maxv_lcell
-- Equation(s):
-- \Add9~5_combout\ = (total_money(6) $ (((!\Add9~17\ & \Add9~12\) # (\Add9~17\ & \Add9~12COUT1_48\))))
-- \Add9~7\ = CARRY(((!\Add9~12\) # (!total_money(6))))
-- \Add9~7COUT1_50\ = CARRY(((!\Add9~12COUT1_48\) # (!total_money(6))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(6),
	cin => \Add9~17\,
	cin0 => \Add9~12\,
	cin1 => \Add9~12COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~5_combout\,
	cout0 => \Add9~7\,
	cout1 => \Add9~7COUT1_50\);

-- Location: LC_X5_Y7_N6
\Add8~5\ : maxv_lcell
-- Equation(s):
-- \Add8~5_combout\ = (total_money(6) $ ((!(!\Add8~17\ & \Add8~12\) # (\Add8~17\ & \Add8~12COUT1_56\))))
-- \Add8~7\ = CARRY(((total_money(6) & !\Add8~12\)))
-- \Add8~7COUT1_58\ = CARRY(((total_money(6) & !\Add8~12COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => total_money(6),
	cin => \Add8~17\,
	cin0 => \Add8~12\,
	cin1 => \Add8~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~5_combout\,
	cout0 => \Add8~7\,
	cout1 => \Add8~7COUT1_58\);

-- Location: LC_X6_Y8_N5
\total_money~6\ : maxv_lcell
-- Equation(s):
-- \total_money~6_combout\ = (\total_money[0]~1_combout\ & ((\total_money[4]~0_combout\) # ((\Add9~5_combout\)))) # (!\total_money[0]~1_combout\ & (!\total_money[4]~0_combout\ & ((\Add8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[0]~1_combout\,
	datab => \total_money[4]~0_combout\,
	datac => \Add9~5_combout\,
	datad => \Add8~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money~6_combout\);

-- Location: LC_X6_Y8_N6
\total_money[6]\ : maxv_lcell
-- Equation(s):
-- total_money(6) = DFFEAS((\total_money[4]~0_combout\ & ((\total_money~6_combout\ & ((\Add11~5_combout\))) # (!\total_money~6_combout\ & (\Add10~5_combout\)))) # (!\total_money[4]~0_combout\ & (((\total_money~6_combout\)))), GLOBAL(\clk~combout\), VCC, , 
-- \total_money[7]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[4]~0_combout\,
	datab => \Add10~5_combout\,
	datac => \Add11~5_combout\,
	datad => \total_money~6_combout\,
	aclr => GND,
	ena => \total_money[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(6));

-- Location: LC_X6_Y7_N7
\Add9~0\ : maxv_lcell
-- Equation(s):
-- \Add9~0_combout\ = (((!\Add9~17\ & \Add9~7\) # (\Add9~17\ & \Add9~7COUT1_50\) $ (!total_money(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => total_money(7),
	cin => \Add9~17\,
	cin0 => \Add9~7\,
	cin1 => \Add9~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~0_combout\);

-- Location: LC_X3_Y8_N7
\Add11~0\ : maxv_lcell
-- Equation(s):
-- \Add11~0_combout\ = (((!\Add11~17\ & \Add11~7\) # (\Add11~17\ & \Add11~7COUT1_50\) $ (!total_money(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => total_money(7),
	cin => \Add11~17\,
	cin0 => \Add11~7\,
	cin1 => \Add11~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~0_combout\);

-- Location: LC_X5_Y9_N7
\Add10~0\ : maxv_lcell
-- Equation(s):
-- \Add10~0_combout\ = (((!\Add10~17\ & \Add10~7\) # (\Add10~17\ & \Add10~7COUT1_58\) $ (total_money(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => total_money(7),
	cin => \Add10~17\,
	cin0 => \Add10~7\,
	cin1 => \Add10~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~0_combout\);

-- Location: LC_X5_Y7_N7
\Add8~0\ : maxv_lcell
-- Equation(s):
-- \Add8~0_combout\ = (((!\Add8~17\ & \Add8~7\) # (\Add8~17\ & \Add8~7COUT1_58\) $ (total_money(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => total_money(7),
	cin => \Add8~17\,
	cin0 => \Add8~7\,
	cin1 => \Add8~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~0_combout\);

-- Location: LC_X6_Y7_N9
\total_money~2\ : maxv_lcell
-- Equation(s):
-- \total_money~2_combout\ = (\total_money[4]~0_combout\ & ((\total_money[0]~1_combout\) # ((\Add10~0_combout\)))) # (!\total_money[4]~0_combout\ & (!\total_money[0]~1_combout\ & ((\Add8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[4]~0_combout\,
	datab => \total_money[0]~1_combout\,
	datac => \Add10~0_combout\,
	datad => \Add8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_money~2_combout\);

-- Location: LC_X6_Y7_N8
\total_money[7]\ : maxv_lcell
-- Equation(s):
-- total_money(7) = DFFEAS((\total_money[0]~1_combout\ & ((\total_money~2_combout\ & ((\Add11~0_combout\))) # (!\total_money~2_combout\ & (\Add9~0_combout\)))) # (!\total_money[0]~1_combout\ & (((\total_money~2_combout\)))), GLOBAL(\clk~combout\), VCC, , 
-- \total_money[7]~5_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \total_money[0]~1_combout\,
	datab => \Add9~0_combout\,
	datac => \Add11~0_combout\,
	datad => \total_money~2_combout\,
	aclr => GND,
	ena => \total_money[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_money(7));

-- Location: LC_X5_Y6_N7
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = (selected_quantity(1) $ (((selected_quantity(0) & selected_quantity(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5fa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: LC_X5_Y6_N9
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = (selected_quantity(2) $ (((!selected_quantity(0) & selected_quantity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\);

-- Location: LC_X2_Y6_N9
\Add7~1\ : maxv_lcell
-- Equation(s):
-- \Add7~1_combout\ = ((!selected_quantity(0) & ((selected_quantity(2)) # (selected_quantity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => selected_quantity(0),
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~1_combout\);

-- Location: LC_X4_Y6_N1
\total_cost[4]\ : maxv_lcell
-- Equation(s):
-- total_cost(4) = DFFEAS((\selected_product.10~regout\ & (\Add4~0_combout\)) # (!\selected_product.10~regout\ & (((\Add7~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \main_fsm_state.state_selectQuantity~regout\, \Add2~0_combout\, , 
-- \main_fsm_state~23_combout\, \selected_product.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add4~0_combout\,
	datab => \selected_product.10~regout\,
	datac => \Add2~0_combout\,
	datad => \Add7~1_combout\,
	aclr => GND,
	sclr => \main_fsm_state~23_combout\,
	sload => \selected_product.01~regout\,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_cost(4));

-- Location: LC_X3_Y7_N5
\Add4~1\ : maxv_lcell
-- Equation(s):
-- \Add4~1_combout\ = (selected_quantity(2) $ ((selected_quantity(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => selected_quantity(2),
	datac => selected_quantity(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~1_combout\);

-- Location: LC_X5_Y6_N6
\Add2~1\ : maxv_lcell
-- Equation(s):
-- \Add2~1_combout\ = ((selected_quantity(0) $ (selected_quantity(1))))

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
	datac => selected_quantity(0),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~1_combout\);

-- Location: LC_X5_Y6_N1
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = (selected_quantity(0)) # (((selected_quantity(2)) # (selected_quantity(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\);

-- Location: LC_X4_Y6_N2
\total_cost[3]\ : maxv_lcell
-- Equation(s):
-- total_cost(3) = DFFEAS((\selected_product.10~regout\ & (\Add4~1_combout\)) # (!\selected_product.10~regout\ & (((\Add6~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \main_fsm_state.state_selectQuantity~regout\, \Add2~1_combout\, , 
-- \main_fsm_state~23_combout\, \selected_product.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add4~1_combout\,
	datab => \selected_product.10~regout\,
	datac => \Add2~1_combout\,
	datad => \Add6~0_combout\,
	aclr => GND,
	sclr => \main_fsm_state~23_combout\,
	sload => \selected_product.01~regout\,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_cost(3));

-- Location: LC_X4_Y6_N3
\Add6~1\ : maxv_lcell
-- Equation(s):
-- \Add6~1_combout\ = (selected_quantity(2) $ (((selected_quantity(0)) # (selected_quantity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => selected_quantity(0),
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~1_combout\);

-- Location: LC_X4_Y6_N0
\total_cost[2]\ : maxv_lcell
-- Equation(s):
-- total_cost(2) = DFFEAS((\selected_product.10~regout\ & (((selected_quantity(1))))) # (!\selected_product.10~regout\ & (\Add6~1_combout\)), GLOBAL(\clk~combout\), VCC, , \main_fsm_state.state_selectQuantity~regout\, selected_quantity(0), , 
-- \main_fsm_state~23_combout\, \selected_product.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add6~1_combout\,
	datab => \selected_product.10~regout\,
	datac => selected_quantity(0),
	datad => selected_quantity(1),
	aclr => GND,
	sclr => \main_fsm_state~23_combout\,
	sload => \selected_product.01~regout\,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_cost(2));

-- Location: LC_X4_Y8_N2
\total_cost~6\ : maxv_lcell
-- Equation(s):
-- \total_cost~6_combout\ = (\total_cost~1_combout\ & (selected_quantity(0) $ ((selected_quantity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datab => selected_quantity(1),
	datac => \total_cost~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_cost~6_combout\);

-- Location: LC_X4_Y8_N3
\total_cost[1]\ : maxv_lcell
-- Equation(s):
-- total_cost(1) = DFFEAS((\selected_product.10~regout\ & (selected_quantity(0) & (!\LessThan1~1_combout\))) # (!\selected_product.10~regout\ & (((\total_cost~6_combout\)))), GLOBAL(\clk~combout\), VCC, , \main_fsm_state.state_selectQuantity~regout\, , , 
-- \selected_product.01~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => selected_quantity(0),
	datab => \selected_product.10~regout\,
	datac => \LessThan1~1_combout\,
	datad => \total_cost~6_combout\,
	aclr => GND,
	sclr => \selected_product.01~regout\,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_cost(1));

-- Location: LC_X4_Y8_N0
\total_cost[0]\ : maxv_lcell
-- Equation(s):
-- total_cost(0) = DFFEAS((selected_quantity(0) & (((\total_cost~1_combout\)))), GLOBAL(\clk~combout\), VCC, , \main_fsm_state.state_selectQuantity~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => selected_quantity(0),
	datac => \total_cost~1_combout\,
	aclr => GND,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_cost(0));

-- Location: LC_X5_Y8_N0
\LessThan4~37\ : maxv_lcell
-- Equation(s):
-- \LessThan4~37_cout0\ = CARRY((total_cost(0) & (!total_money(0))))
-- \LessThan4~37COUT1_48\ = CARRY((total_cost(0) & (!total_money(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_cost(0),
	datab => total_money(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~35\,
	cout0 => \LessThan4~37_cout0\,
	cout1 => \LessThan4~37COUT1_48\);

-- Location: LC_X5_Y8_N1
\LessThan4~32\ : maxv_lcell
-- Equation(s):
-- \LessThan4~32_cout0\ = CARRY((total_money(1) & ((!\LessThan4~37_cout0\) # (!total_cost(1)))) # (!total_money(1) & (!total_cost(1) & !\LessThan4~37_cout0\)))
-- \LessThan4~32COUT1_50\ = CARRY((total_money(1) & ((!\LessThan4~37COUT1_48\) # (!total_cost(1)))) # (!total_money(1) & (!total_cost(1) & !\LessThan4~37COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(1),
	datab => total_cost(1),
	cin0 => \LessThan4~37_cout0\,
	cin1 => \LessThan4~37COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~30\,
	cout0 => \LessThan4~32_cout0\,
	cout1 => \LessThan4~32COUT1_50\);

-- Location: LC_X5_Y8_N2
\LessThan4~27\ : maxv_lcell
-- Equation(s):
-- \LessThan4~27_cout0\ = CARRY((total_money(2) & (total_cost(2) & !\LessThan4~32_cout0\)) # (!total_money(2) & ((total_cost(2)) # (!\LessThan4~32_cout0\))))
-- \LessThan4~27COUT1_52\ = CARRY((total_money(2) & (total_cost(2) & !\LessThan4~32COUT1_50\)) # (!total_money(2) & ((total_cost(2)) # (!\LessThan4~32COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(2),
	datab => total_cost(2),
	cin0 => \LessThan4~32_cout0\,
	cin1 => \LessThan4~32COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~25\,
	cout0 => \LessThan4~27_cout0\,
	cout1 => \LessThan4~27COUT1_52\);

-- Location: LC_X5_Y8_N3
\LessThan4~22\ : maxv_lcell
-- Equation(s):
-- \LessThan4~22_cout0\ = CARRY((total_cost(3) & (total_money(3) & !\LessThan4~27_cout0\)) # (!total_cost(3) & ((total_money(3)) # (!\LessThan4~27_cout0\))))
-- \LessThan4~22COUT1_54\ = CARRY((total_cost(3) & (total_money(3) & !\LessThan4~27COUT1_52\)) # (!total_cost(3) & ((total_money(3)) # (!\LessThan4~27COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_cost(3),
	datab => total_money(3),
	cin0 => \LessThan4~27_cout0\,
	cin1 => \LessThan4~27COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~20\,
	cout0 => \LessThan4~22_cout0\,
	cout1 => \LessThan4~22COUT1_54\);

-- Location: LC_X5_Y8_N4
\LessThan4~17\ : maxv_lcell
-- Equation(s):
-- \LessThan4~17_cout\ = CARRY((total_money(4) & (total_cost(4) & !\LessThan4~22COUT1_54\)) # (!total_money(4) & ((total_cost(4)) # (!\LessThan4~22COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(4),
	datab => total_cost(4),
	cin0 => \LessThan4~22_cout0\,
	cin1 => \LessThan4~22COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~15\,
	cout => \LessThan4~17_cout\);

-- Location: LC_X5_Y6_N0
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = ((selected_quantity(2) & ((selected_quantity(0)) # (selected_quantity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~0_combout\);

-- Location: LC_X5_Y6_N3
\total_cost~3\ : maxv_lcell
-- Equation(s):
-- \total_cost~3_combout\ = (((selected_quantity(2) & selected_quantity(1))))

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
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_cost~3_combout\);

-- Location: LC_X5_Y6_N8
\total_cost~2\ : maxv_lcell
-- Equation(s):
-- \total_cost~2_combout\ = (selected_quantity(0) & (((selected_quantity(2) & selected_quantity(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => selected_quantity(0),
	datac => selected_quantity(2),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_cost~2_combout\);

-- Location: LC_X4_Y6_N9
\total_cost[6]\ : maxv_lcell
-- Equation(s):
-- total_cost(6) = DFFEAS((\selected_product.10~regout\ & (((\total_cost~2_combout\)))) # (!\selected_product.10~regout\ & (\Add7~0_combout\)), GLOBAL(\clk~combout\), VCC, , \main_fsm_state.state_selectQuantity~regout\, \total_cost~3_combout\, , 
-- \main_fsm_state~23_combout\, \selected_product.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add7~0_combout\,
	datab => \selected_product.10~regout\,
	datac => \total_cost~3_combout\,
	datad => \total_cost~2_combout\,
	aclr => GND,
	sclr => \main_fsm_state~23_combout\,
	sload => \selected_product.01~regout\,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_cost(6));

-- Location: LC_X5_Y6_N4
\total_cost~5\ : maxv_lcell
-- Equation(s):
-- \total_cost~5_combout\ = (\selected_product.10~regout\ & (selected_quantity(2) & ((!selected_quantity(0)) # (!selected_quantity(1))))) # (!\selected_product.10~regout\ & ((selected_quantity(1) & ((selected_quantity(0)))) # (!selected_quantity(1) & 
-- (selected_quantity(2) & !selected_quantity(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "64b0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \selected_product.10~regout\,
	datab => selected_quantity(1),
	datac => selected_quantity(2),
	datad => selected_quantity(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_cost~5_combout\);

-- Location: LC_X5_Y6_N2
\total_cost~4\ : maxv_lcell
-- Equation(s):
-- \total_cost~4_combout\ = (((selected_quantity(0) & selected_quantity(1))))

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
	datac => selected_quantity(0),
	datad => selected_quantity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \total_cost~4_combout\);

-- Location: LC_X5_Y6_N5
\total_cost[5]\ : maxv_lcell
-- Equation(s):
-- total_cost(5) = DFFEAS((selected_quantity(2) & (!selected_quantity(1))) # (!selected_quantity(2) & (((\total_cost~4_combout\)))), GLOBAL(\clk~combout\), VCC, , \main_fsm_state.state_selectQuantity~regout\, \total_cost~5_combout\, , 
-- \main_fsm_state~23_combout\, !\selected_product.01~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7722",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => selected_quantity(2),
	datab => selected_quantity(1),
	datac => \total_cost~5_combout\,
	datad => \total_cost~4_combout\,
	aclr => GND,
	sclr => \main_fsm_state~23_combout\,
	sload => \ALT_INV_selected_product.01~regout\,
	ena => \main_fsm_state.state_selectQuantity~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => total_cost(5));

-- Location: LC_X5_Y8_N5
\LessThan4~12\ : maxv_lcell
-- Equation(s):
-- \LessThan4~12_cout0\ = CARRY((total_cost(5) & (total_money(5) & !\LessThan4~17_cout\)) # (!total_cost(5) & ((total_money(5)) # (!\LessThan4~17_cout\))))
-- \LessThan4~12COUT1_56\ = CARRY((total_cost(5) & (total_money(5) & !\LessThan4~17_cout\)) # (!total_cost(5) & ((total_money(5)) # (!\LessThan4~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_cost(5),
	datab => total_money(5),
	cin => \LessThan4~17_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~10\,
	cout0 => \LessThan4~12_cout0\,
	cout1 => \LessThan4~12COUT1_56\);

-- Location: LC_X5_Y8_N6
\LessThan4~7\ : maxv_lcell
-- Equation(s):
-- \LessThan4~7_cout0\ = CARRY((total_money(6) & (total_cost(6) & !\LessThan4~12_cout0\)) # (!total_money(6) & ((total_cost(6)) # (!\LessThan4~12_cout0\))))
-- \LessThan4~7COUT1_58\ = CARRY((total_money(6) & (total_cost(6) & !\LessThan4~12COUT1_56\)) # (!total_money(6) & ((total_cost(6)) # (!\LessThan4~12COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => total_money(6),
	datab => total_cost(6),
	cin => \LessThan4~17_cout\,
	cin0 => \LessThan4~12_cout0\,
	cin1 => \LessThan4~12COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~5\,
	cout0 => \LessThan4~7_cout0\,
	cout1 => \LessThan4~7COUT1_58\);

-- Location: LC_X5_Y8_N7
\LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = ((((!\LessThan4~17_cout\ & \LessThan4~7_cout0\) # (\LessThan4~17_cout\ & \LessThan4~7COUT1_58\) & !total_money(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => total_money(7),
	cin => \LessThan4~17_cout\,
	cin0 => \LessThan4~7_cout0\,
	cin1 => \LessThan4~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: LC_X4_Y7_N8
\Selector14~0\ : maxv_lcell
-- Equation(s):
-- \Selector14~0_combout\ = (!\LessThan4~0_combout\ & (((!\fiveRs~combout\) # (!\tenRs~combout\)) # (!\total_money[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "007f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \total_money[4]~0_combout\,
	datab => \tenRs~combout\,
	datac => \fiveRs~combout\,
	datad => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector14~0_combout\);

-- Location: LC_X4_Y7_N6
\main_fsm_state.state_payment\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state.state_payment~regout\ = DFFEAS((\main_fsm_state.state_selectQuantity~regout\ & (((\main_fsm_state.state_payment~regout\ & !\Selector14~0_combout\)) # (!\main_fsm_state~23_combout\))) # (!\main_fsm_state.state_selectQuantity~regout\ & 
-- (\main_fsm_state.state_payment~regout\ & ((!\Selector14~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ace",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \main_fsm_state.state_selectQuantity~regout\,
	datab => \main_fsm_state.state_payment~regout\,
	datac => \main_fsm_state~23_combout\,
	datad => \Selector14~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_fsm_state.state_payment~regout\);

-- Location: LC_X4_Y7_N9
\main_fsm_state.state_transactionStatus\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state.state_transactionStatus~regout\ = DFFEAS(((\main_fsm_state.state_payment~regout\ & ((\Selector14~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \main_fsm_state.state_payment~regout\,
	datad => \Selector14~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_fsm_state.state_transactionStatus~regout\);

-- Location: LC_X6_Y5_N4
\main_fsm_state.state_endMessage\ : maxv_lcell
-- Equation(s):
-- \main_fsm_state.state_endMessage~regout\ = DFFEAS(((\main_fsm_state.state_transactionStatus~regout\) # ((\main_fsm_state.state_endMessage~regout\ & !\always0~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \main_fsm_state.state_transactionStatus~regout\,
	datac => \main_fsm_state.state_endMessage~regout\,
	datad => \always0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \main_fsm_state.state_endMessage~regout\);

-- Location: LC_X6_Y5_N3
\Selector0~0\ : maxv_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (!\main_fsm_state.state_endMessage~regout\ & (((\main_fsm_state.state_idle~regout\ & !\main_fsm_state.state_idle2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \main_fsm_state.state_endMessage~regout\,
	datac => \main_fsm_state.state_idle~regout\,
	datad => \main_fsm_state.state_idle2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X6_Y5_N9
qLED1 : maxv_lcell
-- Equation(s):
-- \qLED1~regout\ = DFFEAS((\quantity1~combout\ & ((\main_fsm_state.state_endMessage~regout\) # ((\qLED1~regout\ & \Selector0~0_combout\)))) # (!\quantity1~combout\ & (\qLED1~regout\ & ((\Selector0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \quantity1~combout\,
	datab => \qLED1~regout\,
	datac => \main_fsm_state.state_endMessage~regout\,
	datad => \Selector0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \qLED1~regout\);

-- Location: LC_X6_Y5_N2
qLED2 : maxv_lcell
-- Equation(s):
-- \qLED2~regout\ = DFFEAS((\Selector0~0_combout\ & ((\qLED2~regout\) # ((\quantity2~combout\ & \main_fsm_state.state_endMessage~regout\)))) # (!\Selector0~0_combout\ & (\quantity2~combout\ & (\main_fsm_state.state_endMessage~regout\))), 
-- GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \Selector0~0_combout\,
	datab => \quantity2~combout\,
	datac => \main_fsm_state.state_endMessage~regout\,
	datad => \qLED2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \qLED2~regout\);

-- Location: LC_X6_Y5_N0
qLED3 : maxv_lcell
-- Equation(s):
-- \qLED3~regout\ = DFFEAS((\quantity3~combout\ & ((\main_fsm_state.state_endMessage~regout\) # ((\qLED3~regout\ & \Selector0~0_combout\)))) # (!\quantity3~combout\ & (\qLED3~regout\ & ((\Selector0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \quantity3~combout\,
	datab => \qLED3~regout\,
	datac => \main_fsm_state.state_endMessage~regout\,
	datad => \Selector0~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \qLED3~regout\);

-- Location: LC_X14_Y8_N5
\lcd_instance|Selector12~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector12~0_combout\ = ((!\lcd_instance|count_cmd\(1) & (\lcd_instance|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|count_cmd\(1),
	datac => \lcd_instance|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector12~0_combout\);

-- Location: LC_X13_Y7_N8
\lcd_instance|lcd_dat[0]~7\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_dat[0]~7_combout\ = (!\lcd_instance|state\(2) & (\lcd_instance|state\(0) & (!\lcd_instance|state\(1) & !\lcd_instance|flag~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|state\(2),
	datab => \lcd_instance|state\(0),
	datac => \lcd_instance|state\(1),
	datad => \lcd_instance|flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd_dat[0]~7_combout\);

-- Location: LC_X13_Y7_N9
\lcd_instance|lcd_dat[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_dat\(0) = DFFEAS((\lcd_instance|lcd_char\(0) & (((\lcd_instance|lcd_char\(6)) # (!\lcd_instance|Equal3~0_combout\)) # (!\lcd_instance|lcd_char\(5)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_dat[0]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|lcd_char\(5),
	datab => \lcd_instance|lcd_char\(6),
	datac => \lcd_instance|Equal3~0_combout\,
	datad => \lcd_instance|lcd_char\(0),
	aclr => GND,
	ena => \lcd_instance|lcd_dat[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_dat\(0));

-- Location: LC_X16_Y8_N9
\lcd_instance|WideOr4~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|WideOr4~0_combout\ = ((\lcd_instance|lcd_state.S3~regout\) # ((\lcd_instance|lcd_state.S5~regout\) # (\lcd_instance|lcd_state.S4~regout\)))

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
	datab => \lcd_instance|lcd_state.S3~regout\,
	datac => \lcd_instance|lcd_state.S5~regout\,
	datad => \lcd_instance|lcd_state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|WideOr4~0_combout\);

-- Location: LC_X15_Y8_N2
\lcd_instance|lcd[0]~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd[0]~0_combout\ = (((!\lcd_instance|reset~regout\ & !\lcd_instance|Selector14~0_combout\)))

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
	datac => \lcd_instance|reset~regout\,
	datad => \lcd_instance|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd[0]~0_combout\);

-- Location: LC_X15_Y8_N5
\lcd_instance|lcd[0]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(0) = DFFEAS((\lcd_instance|WideOr4~0_combout\ & (((\lcd_instance|lcd_dat\(0))))) # (!\lcd_instance|WideOr4~0_combout\ & (\lcd_instance|Selector12~0_combout\ & (!\lcd_instance|count_cmd\(2)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , 
-- \lcd_instance|lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|Selector12~0_combout\,
	datab => \lcd_instance|count_cmd\(2),
	datac => \lcd_instance|lcd_dat\(0),
	datad => \lcd_instance|WideOr4~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(0));

-- Location: LC_X14_Y8_N3
\lcd_instance|LessThan2~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|LessThan2~0_combout\ = ((\lcd_instance|count_cmd\(1)) # ((\lcd_instance|count_cmd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|count_cmd\(1),
	datac => \lcd_instance|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|LessThan2~0_combout\);

-- Location: LC_X13_Y7_N2
\lcd_instance|lcd_dat[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_dat\(1) = DFFEAS((!\lcd_instance|Equal3~1_combout\ & (((\lcd_instance|lcd_char\(1))))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_dat[0]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Equal3~1_combout\,
	datac => \lcd_instance|lcd_char\(1),
	aclr => GND,
	ena => \lcd_instance|lcd_dat[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_dat\(1));

-- Location: LC_X14_Y8_N0
\lcd_instance|lcd_cmd~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_cmd~0_combout\ = (((!\lcd_instance|count_cmd\(0))) # (!\lcd_instance|count_cmd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \lcd_instance|count_cmd\(1),
	datac => \lcd_instance|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd_cmd~0_combout\);

-- Location: LC_X15_Y8_N8
\lcd_instance|lcd[1]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd[1]~COMBOUT\ = (\lcd_instance|count_cmd\(2) & (!\lcd_instance|LessThan2~0_combout\)) # (!\lcd_instance|count_cmd\(2) & (((!\lcd_instance|lcd_cmd~0_combout\))))
-- \lcd_instance|lcd\(1) = DFFEAS(\lcd_instance|lcd[1]~COMBOUT\, GLOBAL(\lcd_instance|clk10~regout\), VCC, , \lcd_instance|lcd[0]~0_combout\, \lcd_instance|lcd_dat\(1), , , \lcd_instance|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2277",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|count_cmd\(2),
	datab => \lcd_instance|LessThan2~0_combout\,
	datac => \lcd_instance|lcd_dat\(1),
	datad => \lcd_instance|lcd_cmd~0_combout\,
	aclr => GND,
	sload => \lcd_instance|WideOr4~0_combout\,
	ena => \lcd_instance|lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd[1]~COMBOUT\,
	regout => \lcd_instance|lcd\(1));

-- Location: LC_X13_Y7_N1
\lcd_instance|lcd_dat[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_dat\(2) = DFFEAS((((\lcd_instance|lcd_char\(2)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_dat[0]~7_combout\, , , , )

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
	datad => \lcd_instance|lcd_char\(2),
	aclr => GND,
	ena => \lcd_instance|lcd_dat[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_dat\(2));

-- Location: LC_X15_Y8_N9
\lcd_instance|lcd[2]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(2) = DFFEAS(((\lcd_instance|WideOr4~0_combout\ & (\lcd_instance|lcd_dat\(2))) # (!\lcd_instance|WideOr4~0_combout\ & ((\lcd_instance|lcd[1]~COMBOUT\)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , \lcd_instance|lcd[0]~0_combout\, , , , 
-- )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	datab => \lcd_instance|WideOr4~0_combout\,
	datac => \lcd_instance|lcd_dat\(2),
	datad => \lcd_instance|lcd[1]~COMBOUT\,
	aclr => GND,
	ena => \lcd_instance|lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(2));

-- Location: LC_X13_Y8_N4
\lcd_instance|lcd_dat[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector9~0\ = ((\lcd_instance|lcd_state.000~regout\ & ((B1_lcd_dat[3]))) # (!\lcd_instance|lcd_state.000~regout\ & (\lcd_instance|lcd\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \lcd_instance|lcd\(3),
	datac => \lcd_instance|lcd_char\(3),
	datad => \lcd_instance|lcd_state.000~regout\,
	aclr => GND,
	sload => VCC,
	ena => \lcd_instance|lcd_dat[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector9~0\,
	regout => \lcd_instance|lcd_dat\(3));

-- Location: LC_X13_Y8_N9
\lcd_instance|lcd_cmd~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_cmd~1_combout\ = ((\lcd_instance|count_cmd\(1) $ (\lcd_instance|count_cmd\(0))))

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
	datac => \lcd_instance|count_cmd\(1),
	datad => \lcd_instance|count_cmd\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|lcd_cmd~1_combout\);

-- Location: LC_X14_Y8_N7
\lcd_instance|Selector9~1\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector9~1_combout\ = (\lcd_instance|lcd_state.000~regout\ & ((\lcd_instance|lcd_state.S2~regout\) # ((\lcd_instance|lcd_state.S1~regout\)))) # (!\lcd_instance|lcd_state.000~regout\ & (((\lcd_instance|LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \lcd_instance|lcd_state.S2~regout\,
	datab => \lcd_instance|lcd_state.S1~regout\,
	datac => \lcd_instance|lcd_state.000~regout\,
	datad => \lcd_instance|LessThan2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector9~1_combout\);

-- Location: LC_X14_Y8_N8
\lcd_instance|lcd[3]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(3) = DFFEAS((\lcd_instance|Selector9~1_combout\ & (!\lcd_instance|count_cmd\(2) & ((!\lcd_instance|lcd_cmd~1_combout\)))) # (!\lcd_instance|Selector9~1_combout\ & (((\lcd_instance|Selector9~0\)))), GLOBAL(\lcd_instance|clk10~regout\), 
-- VCC, , !\lcd_instance|reset~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "05cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|count_cmd\(2),
	datab => \lcd_instance|Selector9~0\,
	datac => \lcd_instance|lcd_cmd~1_combout\,
	datad => \lcd_instance|Selector9~1_combout\,
	aclr => GND,
	ena => \lcd_instance|ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(3));

-- Location: LC_X12_Y7_N6
\lcd_instance|hundreds[5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|hundreds\(5) = DFFEAS(VCC, GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|hundreds\(5));

-- Location: LC_X13_Y7_N5
\lcd_instance|lcd_dat[4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_dat\(4) = DFFEAS((\lcd_instance|Equal0~1_combout\ & (((\lcd_instance|hundreds\(5))))) # (!\lcd_instance|Equal0~1_combout\ & ((\lcd_instance|lcd_char\(4)) # ((\lcd_instance|Equal3~1_combout\)))), GLOBAL(\clk~combout\), VCC, , 
-- \lcd_instance|lcd_dat[0]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|lcd_char\(4),
	datab => \lcd_instance|hundreds\(5),
	datac => \lcd_instance|Equal0~1_combout\,
	datad => \lcd_instance|Equal3~1_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd_dat[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_dat\(4));

-- Location: LC_X15_Y8_N3
\lcd_instance|Selector5~0\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|Selector5~0_combout\ = (!\lcd_instance|count_cmd\(0) & (!\lcd_instance|count_cmd\(2) & (!\lcd_instance|WideOr4~0_combout\)))

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
	dataa => \lcd_instance|count_cmd\(0),
	datab => \lcd_instance|count_cmd\(2),
	datac => \lcd_instance|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lcd_instance|Selector5~0_combout\);

-- Location: LC_X15_Y8_N0
\lcd_instance|lcd[4]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(4) = DFFEAS((\lcd_instance|lcd_dat\(4) & ((\lcd_instance|WideOr4~0_combout\) # ((!\lcd_instance|count_cmd\(1) & \lcd_instance|Selector5~0_combout\)))) # (!\lcd_instance|lcd_dat\(4) & (((!\lcd_instance|count_cmd\(1) & 
-- \lcd_instance|Selector5~0_combout\)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , \lcd_instance|lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_dat\(4),
	datab => \lcd_instance|WideOr4~0_combout\,
	datac => \lcd_instance|count_cmd\(1),
	datad => \lcd_instance|Selector5~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(4));

-- Location: LC_X13_Y7_N0
\lcd_instance|lcd_dat[5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_dat\(5) = DFFEAS((\lcd_instance|lcd_char\(5)) # ((\lcd_instance|Equal0~1_combout\ & (\lcd_instance|hundreds\(5)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_dat[0]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|Equal0~1_combout\,
	datab => \lcd_instance|hundreds\(5),
	datac => \lcd_instance|lcd_char\(5),
	aclr => GND,
	ena => \lcd_instance|lcd_dat[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_dat\(5));

-- Location: LC_X15_Y8_N4
\lcd_instance|lcd[5]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(5) = DFFEAS((\lcd_instance|lcd_dat\(5) & ((\lcd_instance|WideOr4~0_combout\) # ((!\lcd_instance|count_cmd\(1) & \lcd_instance|Selector5~0_combout\)))) # (!\lcd_instance|lcd_dat\(5) & (((!\lcd_instance|count_cmd\(1) & 
-- \lcd_instance|Selector5~0_combout\)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , \lcd_instance|lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_dat\(5),
	datab => \lcd_instance|WideOr4~0_combout\,
	datac => \lcd_instance|count_cmd\(1),
	datad => \lcd_instance|Selector5~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(5));

-- Location: LC_X13_Y7_N3
\lcd_instance|lcd_dat[6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_dat\(6) = DFFEAS((\lcd_instance|lcd_char\(6) & ((\lcd_instance|lcd_char\(0)) # ((\lcd_instance|lcd_char\(5)) # (!\lcd_instance|Equal0~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \lcd_instance|lcd_dat[0]~7_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c8cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \lcd_instance|lcd_char\(0),
	datab => \lcd_instance|lcd_char\(6),
	datac => \lcd_instance|lcd_char\(5),
	datad => \lcd_instance|Equal0~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd_dat[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_dat\(6));

-- Location: LC_X15_Y7_N2
\lcd_instance|lcd[6]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(6) = DFFEAS((\lcd_instance|lcd_dat\(6) & ((\lcd_instance|WideOr4~0_combout\) # ((\lcd_instance|lcd\(6) & \lcd_instance|Selector14~0_combout\)))) # (!\lcd_instance|lcd_dat\(6) & (\lcd_instance|lcd\(6) & 
-- ((\lcd_instance|Selector14~0_combout\)))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , !\lcd_instance|reset~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_dat\(6),
	datab => \lcd_instance|lcd\(6),
	datac => \lcd_instance|WideOr4~0_combout\,
	datad => \lcd_instance|Selector14~0_combout\,
	aclr => GND,
	ena => \lcd_instance|ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(6));

-- Location: LC_X15_Y8_N7
\lcd_instance|lcd[7]\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd\(7) = DFFEAS((!\lcd_instance|count_cmd\(0) & (!\lcd_instance|count_cmd\(2) & (\lcd_instance|count_cmd\(1) & !\lcd_instance|WideOr4~0_combout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , \lcd_instance|lcd[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|count_cmd\(0),
	datab => \lcd_instance|count_cmd\(2),
	datac => \lcd_instance|count_cmd\(1),
	datad => \lcd_instance|WideOr4~0_combout\,
	aclr => GND,
	ena => \lcd_instance|lcd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd\(7));

-- Location: LC_X14_Y8_N4
\lcd_instance|lcd_rs\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_rs~regout\ = DFFEAS(((\lcd_instance|WideOr4~0_combout\) # ((\lcd_instance|lcd_rs~regout\ & \lcd_instance|Selector14~0_combout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , !\lcd_instance|reset~regout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_rs~regout\,
	datac => \lcd_instance|WideOr4~0_combout\,
	datad => \lcd_instance|Selector14~0_combout\,
	aclr => GND,
	ena => \lcd_instance|ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_rs~regout\);

-- Location: LC_X14_Y8_N6
\lcd_instance|lcd_en\ : maxv_lcell
-- Equation(s):
-- \lcd_instance|lcd_en~regout\ = DFFEAS((\lcd_instance|lcd_state.S1~regout\) # ((\lcd_instance|lcd_state.S4~regout\) # ((\lcd_instance|lcd_en~regout\ & \lcd_instance|Selector14~0_combout\))), GLOBAL(\lcd_instance|clk10~regout\), VCC, , 
-- !\lcd_instance|reset~regout\, , , , )

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
	clk => \lcd_instance|clk10~regout\,
	dataa => \lcd_instance|lcd_en~regout\,
	datab => \lcd_instance|lcd_state.S1~regout\,
	datac => \lcd_instance|lcd_state.S4~regout\,
	datad => \lcd_instance|Selector14~0_combout\,
	aclr => GND,
	ena => \lcd_instance|ALT_INV_reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \lcd_instance|lcd_en~regout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oqLED1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \qLED1~regout\,
	oe => VCC,
	padio => ww_oqLED1);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oqLED2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \qLED2~regout\,
	oe => VCC,
	padio => ww_oqLED2);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\oqLED3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \qLED3~regout\,
	oe => VCC,
	padio => ww_oqLED3);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\start_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_start~regout\,
	oe => VCC,
	padio => ww_start_1);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\done_1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|done~regout\,
	oe => VCC,
	padio => ww_done_1);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\refill~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_refill);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(1));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(2));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(3));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(4));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(5));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(6));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\changeAmount[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_changeAmount(7));

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(0),
	oe => VCC,
	padio => ww_lcd(0));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(1),
	oe => VCC,
	padio => ww_lcd(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(2),
	oe => VCC,
	padio => ww_lcd(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(3),
	oe => VCC,
	padio => ww_lcd(3));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(4),
	oe => VCC,
	padio => ww_lcd(4));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(5),
	oe => VCC,
	padio => ww_lcd(5));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(6),
	oe => VCC,
	padio => ww_lcd(6));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd\(7),
	oe => VCC,
	padio => ww_lcd(7));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lcd_rs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lcd_instance|lcd_rs~regout\,
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
	datain => \lcd_instance|lcd_en~regout\,
	oe => VCC,
	padio => ww_lcd_en);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst);
END structure;


