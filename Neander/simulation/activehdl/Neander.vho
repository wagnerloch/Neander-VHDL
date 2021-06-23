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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/15/2021 10:46:41"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Active-HDL (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Neander IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	saidaMemoria : OUT std_logic_vector(7 DOWNTO 0);
	saidaAcumulador : OUT std_logic_vector(7 DOWNTO 0)
	);
END Neander;

-- Design Ports Information
-- saidaMemoria[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[1]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[2]	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[3]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[4]	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[5]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[6]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[7]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[0]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[1]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[2]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[3]	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[4]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[5]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[6]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[7]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Neander IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_saidaMemoria : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saidaAcumulador : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Selector37~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector0~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector39~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UAL|Add0~8_combout\ : std_logic;
SIGNAL \UAL|Add0~12_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[0]~5\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[1]~9_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[1]~10\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[2]~11_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[2]~12\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[3]~13_combout\ : std_logic;
SIGNAL \selULA[1]~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[0]~4_combout\ : std_logic;
SIGNAL \estado.t2~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \estado.t2~regout\ : std_logic;
SIGNAL \estado.t3~regout\ : std_logic;
SIGNAL \UAL|Add0~1\ : std_logic;
SIGNAL \UAL|Add0~2_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \Selector37~2clkctrl_outclk\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \cargaRDM~combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~1clkctrl_outclk\ : std_logic;
SIGNAL \UAL|Mux2~0_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \UAL|Add0~3\ : std_logic;
SIGNAL \UAL|Add0~5\ : std_logic;
SIGNAL \UAL|Add0~7\ : std_logic;
SIGNAL \UAL|Add0~9\ : std_logic;
SIGNAL \UAL|Add0~10_combout\ : std_logic;
SIGNAL \UAL|Mux2~2_combout\ : std_logic;
SIGNAL \UAL|Mux2~3_combout\ : std_logic;
SIGNAL \UAL|Mux2~1_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \cargaNZ~2_combout\ : std_logic;
SIGNAL \cargaAC~combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \UAL|Mux1~0_combout\ : std_logic;
SIGNAL \UAL|Mux1~1_combout\ : std_logic;
SIGNAL \UAL|Mux1~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \UAL|Add0~11\ : std_logic;
SIGNAL \UAL|Add0~13\ : std_logic;
SIGNAL \UAL|Add0~14_combout\ : std_logic;
SIGNAL \UAL|Mux0~0_combout\ : std_logic;
SIGNAL \UAL|Mux0~1_combout\ : std_logic;
SIGNAL \UAL|Mux0~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \selMux~combout\ : std_logic;
SIGNAL \SELETOR|s[3]~3_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \UAL|Add0~4_combout\ : std_logic;
SIGNAL \UAL|Mux5~1_combout\ : std_logic;
SIGNAL \UAL|Mux5~0_combout\ : std_logic;
SIGNAL \UAL|Mux5~2_combout\ : std_logic;
SIGNAL \UAL|Add0~6_combout\ : std_logic;
SIGNAL \UAL|Mux4~1_combout\ : std_logic;
SIGNAL \UAL|Mux4~0_combout\ : std_logic;
SIGNAL \UAL|Mux4~2_combout\ : std_logic;
SIGNAL \UAL|Add0~0_combout\ : std_logic;
SIGNAL \UAL|Mux7~0_combout\ : std_logic;
SIGNAL \UAL|Mux7~1_combout\ : std_logic;
SIGNAL \UAL|Mux7~2_combout\ : std_logic;
SIGNAL \UAL|Equal0~0_combout\ : std_logic;
SIGNAL \ACUMULADOR|CON|q_temp[4]~feeder_combout\ : std_logic;
SIGNAL \UAL|Mux3~0_combout\ : std_logic;
SIGNAL \UAL|Mux3~1_combout\ : std_logic;
SIGNAL \UAL|Mux3~2_combout\ : std_logic;
SIGNAL \UAL|Equal0~1_combout\ : std_logic;
SIGNAL \UAL|Equal0~2_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \cargaREM~combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \SELETOR|s[2]~2_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \cargaRI~combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \UAL|Mux6~1_combout\ : std_logic;
SIGNAL \UAL|Mux6~0_combout\ : std_logic;
SIGNAL \UAL|Mux6~2_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \SELETOR|s[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \proximoEstado~2_combout\ : std_logic;
SIGNAL \proximoEstado~1_combout\ : std_logic;
SIGNAL \proximoEstado~0_combout\ : std_logic;
SIGNAL \proximoEstado~3_combout\ : std_logic;
SIGNAL \estado.t4~regout\ : std_logic;
SIGNAL \estado.t5~regout\ : std_logic;
SIGNAL \Selector34~10_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \cargaPC~combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[4]~7_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[4]~6_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[4]~8_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \SELETOR|s[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \Selector39~3_combout\ : std_logic;
SIGNAL \Selector39~3clkctrl_outclk\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \rdmIn[1]~0_combout\ : std_logic;
SIGNAL \proximoEstado.t6~0_combout\ : std_logic;
SIGNAL \estado.t6~regout\ : std_logic;
SIGNAL \estado.t7~regout\ : std_logic;
SIGNAL \Selector34~12_combout\ : std_logic;
SIGNAL \Selector34~8_combout\ : std_logic;
SIGNAL \Selector34~9_combout\ : std_logic;
SIGNAL \Selector34~11_combout\ : std_logic;
SIGNAL \estado.t0~regout\ : std_logic;
SIGNAL \estado.t1~0_combout\ : std_logic;
SIGNAL \estado.t1~regout\ : std_logic;
SIGNAL \Selector39~2_combout\ : std_logic;
SIGNAL \rw~combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \REGRDM|CON|q_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL memIn : std_logic_vector(7 DOWNTO 0);
SIGNAL \REGREM|CON|q_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OPCODE|CON|q_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL selULA : std_logic_vector(2 DOWNTO 0);
SIGNAL rdmIn : std_logic_vector(7 DOWNTO 0);
SIGNAL endMem : std_logic_vector(7 DOWNTO 0);
SIGNAL \ACUMULADOR|CON|q_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROGRAM_COUNTER|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \NEGATIVOZERO|CON|q_temp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_rw~combout\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
saidaMemoria <= ww_saidaMemoria;
saidaAcumulador <= ww_saidaAcumulador;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (memIn(7) & memIn(6) & memIn(5) & memIn(4) & memIn(3) & memIn(2) & memIn(1) & memIn(0));

\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (endMem(3) & endMem(2) & endMem(1) & endMem(0));

\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (endMem(3) & endMem(2) & endMem(1) & endMem(0));

\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\ <= \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\Selector37~2clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector37~2_combout\);

\Selector0~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector0~1_combout\);

\Selector39~3clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector39~3_combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\ALT_INV_rw~combout\ <= NOT \rw~combout\;

-- Location: LCCOMB_X27_Y4_N16
\UAL|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~8_combout\ = ((\ACUMULADOR|CON|q_temp\(4) $ (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\ $ (!\UAL|Add0~7\)))) # (GND)
-- \UAL|Add0~9\ = CARRY((\ACUMULADOR|CON|q_temp\(4) & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\) # (!\UAL|Add0~7\))) # (!\ACUMULADOR|CON|q_temp\(4) & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\ & !\UAL|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(4),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\,
	datad => VCC,
	cin => \UAL|Add0~7\,
	combout => \UAL|Add0~8_combout\,
	cout => \UAL|Add0~9\);

-- Location: LCCOMB_X27_Y4_N20
\UAL|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~12_combout\ = ((\ACUMULADOR|CON|q_temp\(6) $ (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ $ (!\UAL|Add0~11\)))) # (GND)
-- \UAL|Add0~13\ = CARRY((\ACUMULADOR|CON|q_temp\(6) & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\) # (!\UAL|Add0~11\))) # (!\ACUMULADOR|CON|q_temp\(6) & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ & !\UAL|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(6),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	datad => VCC,
	cin => \UAL|Add0~11\,
	combout => \UAL|Add0~12_combout\,
	cout => \UAL|Add0~13\);

-- Location: LCFF_X25_Y5_N3
\PROGRAM_COUNTER|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[1]~9_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(1));

-- Location: LCFF_X25_Y5_N5
\PROGRAM_COUNTER|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[2]~11_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(2));

-- Location: LCFF_X25_Y5_N7
\PROGRAM_COUNTER|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[3]~13_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(3));

-- Location: LCCOMB_X25_Y5_N0
\PROGRAM_COUNTER|count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[0]~4_combout\ = \PROGRAM_COUNTER|count\(0) $ (VCC)
-- \PROGRAM_COUNTER|count[0]~5\ = CARRY(\PROGRAM_COUNTER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|count\(0),
	datad => VCC,
	combout => \PROGRAM_COUNTER|count[0]~4_combout\,
	cout => \PROGRAM_COUNTER|count[0]~5\);

-- Location: LCCOMB_X25_Y5_N2
\PROGRAM_COUNTER|count[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[1]~9_combout\ = (\PROGRAM_COUNTER|count\(1) & (!\PROGRAM_COUNTER|count[0]~5\)) # (!\PROGRAM_COUNTER|count\(1) & ((\PROGRAM_COUNTER|count[0]~5\) # (GND)))
-- \PROGRAM_COUNTER|count[1]~10\ = CARRY((!\PROGRAM_COUNTER|count[0]~5\) # (!\PROGRAM_COUNTER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count\(1),
	datad => VCC,
	cin => \PROGRAM_COUNTER|count[0]~5\,
	combout => \PROGRAM_COUNTER|count[1]~9_combout\,
	cout => \PROGRAM_COUNTER|count[1]~10\);

-- Location: LCCOMB_X25_Y5_N4
\PROGRAM_COUNTER|count[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[2]~11_combout\ = (\PROGRAM_COUNTER|count\(2) & (\PROGRAM_COUNTER|count[1]~10\ $ (GND))) # (!\PROGRAM_COUNTER|count\(2) & (!\PROGRAM_COUNTER|count[1]~10\ & VCC))
-- \PROGRAM_COUNTER|count[2]~12\ = CARRY((\PROGRAM_COUNTER|count\(2) & !\PROGRAM_COUNTER|count[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count\(2),
	datad => VCC,
	cin => \PROGRAM_COUNTER|count[1]~10\,
	combout => \PROGRAM_COUNTER|count[2]~11_combout\,
	cout => \PROGRAM_COUNTER|count[2]~12\);

-- Location: LCCOMB_X25_Y5_N6
\PROGRAM_COUNTER|count[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[3]~13_combout\ = \PROGRAM_COUNTER|count[2]~12\ $ (\PROGRAM_COUNTER|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \PROGRAM_COUNTER|count\(3),
	cin => \PROGRAM_COUNTER|count[2]~12\,
	combout => \PROGRAM_COUNTER|count[3]~13_combout\);

-- Location: LCCOMB_X26_Y5_N8
\selULA[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \selULA[1]~0_combout\ = (!\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(6) & \OPCODE|CON|q_temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(6),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \selULA[1]~0_combout\);

-- Location: LCCOMB_X24_Y5_N6
\Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\estado.t0~regout\ & (!\estado.t6~regout\ & !\estado.t3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t0~regout\,
	datac => \estado.t6~regout\,
	datad => \estado.t3~regout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X24_Y4_N24
\Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = ((\estado.t4~regout\) # ((\process_2~0_combout\ & \estado.t5~regout\))) # (!\Selector32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \Selector32~0_combout\,
	datac => \estado.t4~regout\,
	datad => \estado.t5~regout\,
	combout => \Selector32~1_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G2
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y5_N28
\estado.t2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.t2~feeder_combout\ = \estado.t1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.t1~regout\,
	combout => \estado.t2~feeder_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G6
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X27_Y5_N29
\estado.t2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \estado.t2~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t2~regout\);

-- Location: LCFF_X27_Y5_N15
\estado.t3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t2~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t3~regout\);

-- Location: LCCOMB_X27_Y4_N8
\UAL|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~0_combout\ = (\ACUMULADOR|CON|q_temp\(0) & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (VCC))) # (!\ACUMULADOR|CON|q_temp\(0) & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ & VCC))
-- \UAL|Add0~1\ = CARRY((\ACUMULADOR|CON|q_temp\(0) & \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(0),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => VCC,
	combout => \UAL|Add0~0_combout\,
	cout => \UAL|Add0~1\);

-- Location: LCCOMB_X27_Y4_N10
\UAL|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~2_combout\ = (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & ((\ACUMULADOR|CON|q_temp\(1) & (\UAL|Add0~1\ & VCC)) # (!\ACUMULADOR|CON|q_temp\(1) & (!\UAL|Add0~1\)))) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & 
-- ((\ACUMULADOR|CON|q_temp\(1) & (!\UAL|Add0~1\)) # (!\ACUMULADOR|CON|q_temp\(1) & ((\UAL|Add0~1\) # (GND)))))
-- \UAL|Add0~3\ = CARRY((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & (!\ACUMULADOR|CON|q_temp\(1) & !\UAL|Add0~1\)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & ((!\UAL|Add0~1\) # (!\ACUMULADOR|CON|q_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	datab => \ACUMULADOR|CON|q_temp\(1),
	datad => VCC,
	cin => \UAL|Add0~1\,
	combout => \UAL|Add0~2_combout\,
	cout => \UAL|Add0~3\);

-- Location: LCCOMB_X25_Y5_N10
\Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (!\OPCODE|CON|q_temp\(7) & (\OPCODE|CON|q_temp\(6) $ (\OPCODE|CON|q_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(6),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X24_Y5_N0
\Selector37~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\estado.t6~regout\ & ((\Selector37~0_combout\) # (\Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t6~regout\,
	datab => \Selector37~0_combout\,
	datac => \Mux0~3_combout\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X26_Y5_N28
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(4) & (!\OPCODE|CON|q_temp\(5) & \OPCODE|CON|q_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(4),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(7),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X25_Y5_N24
\Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\estado.t4~regout\ & ((\process_2~0_combout\) # ((\Mux0~0_combout\) # (\rdmIn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \Mux0~0_combout\,
	datac => \rdmIn[1]~0_combout\,
	datad => \estado.t4~regout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X24_Y5_N10
\Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector37~1_combout\) # ((\estado.t1~regout\) # (\Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector37~1_combout\,
	datac => \estado.t1~regout\,
	datad => \Selector39~0_combout\,
	combout => \Selector37~2_combout\);

-- Location: CLKCTRL_G5
\Selector37~2clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector37~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector37~2clkctrl_outclk\);

-- Location: LCCOMB_X22_Y4_N20
\memIn[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(1) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(1))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memIn(1),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(1),
	combout => memIn(1));

-- Location: LCCOMB_X21_Y4_N22
\memIn[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(2) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(2))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(2),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(2),
	combout => memIn(2));

-- Location: LCCOMB_X22_Y4_N26
\memIn[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(3) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(3))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(3),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(3),
	combout => memIn(3));

-- Location: LCCOMB_X22_Y4_N22
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(4))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(4),
	datab => \estado.t6~regout\,
	datac => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\,
	datad => \Mux0~3_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X22_Y4_N6
\rdmIn[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(4) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector6~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdmIn(4),
	datac => \Selector37~2clkctrl_outclk\,
	datad => \Selector6~0_combout\,
	combout => rdmIn(4));

-- Location: LCCOMB_X24_Y5_N28
\Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ((\estado.t6~regout\ & \Mux0~3_combout\)) # (!\estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t0~regout\,
	datac => \estado.t6~regout\,
	datad => \Mux0~3_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X21_Y4_N24
cargaRDM : cycloneii_lcell_comb
-- Equation(s):
-- \cargaRDM~combout\ = (\Selector33~0_combout\ & ((\estado.t6~regout\))) # (!\Selector33~0_combout\ & (\cargaRDM~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cargaRDM~combout\,
	datac => \estado.t6~regout\,
	datad => \Selector33~0_combout\,
	combout => \cargaRDM~combout\);

-- Location: LCFF_X22_Y4_N7
\REGRDM|CON|q_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(4),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(4));

-- Location: LCCOMB_X22_Y4_N16
\memIn[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(4) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(4))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memIn(4),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(4),
	combout => memIn(4));

-- Location: LCCOMB_X26_Y5_N22
\Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\selULA[1]~0_combout\ $ (!\Mux0~4_combout\)) # (!\estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selULA[1]~0_combout\,
	datac => \Mux0~4_combout\,
	datad => \estado.t7~regout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X26_Y5_N16
\process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (!\OPCODE|CON|q_temp\(7) & ((\OPCODE|CON|q_temp\(6) & ((!\OPCODE|CON|q_temp\(5)))) # (!\OPCODE|CON|q_temp\(6) & ((\OPCODE|CON|q_temp\(4)) # (\OPCODE|CON|q_temp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(4),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(7),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X26_Y5_N6
\Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(4) & (\OPCODE|CON|q_temp\(5) & !\OPCODE|CON|q_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(4),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(7),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X26_Y5_N10
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\Mux0~0_combout\ & (\estado.t3~regout\ & (!\process_2~0_combout\ & \Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \estado.t3~regout\,
	datac => \process_2~0_combout\,
	datad => \Mux0~5_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X25_Y5_N26
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & (((\Mux0~3_combout\) # (!\Selector37~0_combout\)) # (!\estado.t7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t7~regout\,
	datab => \Mux0~3_combout\,
	datac => \Selector0~0_combout\,
	datad => \Selector37~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: CLKCTRL_G7
\Selector0~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~1clkctrl_outclk\);

-- Location: LCCOMB_X26_Y4_N30
\selULA[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- selULA(0) = (GLOBAL(\Selector0~1clkctrl_outclk\) & (selULA(0))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & ((\Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selULA(0),
	datac => \Selector35~0_combout\,
	datad => \Selector0~1clkctrl_outclk\,
	combout => selULA(0));

-- Location: LCCOMB_X25_Y4_N26
\UAL|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~0_combout\ = (selULA(0) & (((\ACUMULADOR|CON|q_temp\(5))))) # (!selULA(0) & ((selULA(1) & ((\ACUMULADOR|CON|q_temp\(5)))) # (!selULA(1) & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	datab => selULA(0),
	datac => \ACUMULADOR|CON|q_temp\(5),
	datad => selULA(1),
	combout => \UAL|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y5_N0
\Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\OPCODE|CON|q_temp\(5) & (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(7) & !\OPCODE|CON|q_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(5),
	datab => \OPCODE|CON|q_temp\(6),
	datac => \OPCODE|CON|q_temp\(7),
	datad => \OPCODE|CON|q_temp\(4),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X25_Y4_N8
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\estado.t7~regout\ & \Mux0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.t7~regout\,
	datad => \Mux0~6_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X26_Y4_N6
\selULA[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- selULA(2) = (GLOBAL(\Selector0~1clkctrl_outclk\) & (selULA(2))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & ((\Selector28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datac => \Selector0~1clkctrl_outclk\,
	datad => \Selector28~0_combout\,
	combout => selULA(2));

-- Location: LCCOMB_X27_Y4_N12
\UAL|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~4_combout\ = ((\ACUMULADOR|CON|q_temp\(2) $ (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\ $ (!\UAL|Add0~3\)))) # (GND)
-- \UAL|Add0~5\ = CARRY((\ACUMULADOR|CON|q_temp\(2) & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\) # (!\UAL|Add0~3\))) # (!\ACUMULADOR|CON|q_temp\(2) & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\ & !\UAL|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(2),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	datad => VCC,
	cin => \UAL|Add0~3\,
	combout => \UAL|Add0~4_combout\,
	cout => \UAL|Add0~5\);

-- Location: LCCOMB_X27_Y4_N14
\UAL|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~6_combout\ = (\ACUMULADOR|CON|q_temp\(3) & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ & (\UAL|Add0~5\ & VCC)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ & (!\UAL|Add0~5\)))) # (!\ACUMULADOR|CON|q_temp\(3) & 
-- ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ & (!\UAL|Add0~5\)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ & ((\UAL|Add0~5\) # (GND)))))
-- \UAL|Add0~7\ = CARRY((\ACUMULADOR|CON|q_temp\(3) & (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ & !\UAL|Add0~5\)) # (!\ACUMULADOR|CON|q_temp\(3) & ((!\UAL|Add0~5\) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(3),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	datad => VCC,
	cin => \UAL|Add0~5\,
	combout => \UAL|Add0~6_combout\,
	cout => \UAL|Add0~7\);

-- Location: LCCOMB_X27_Y4_N18
\UAL|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~10_combout\ = (\ACUMULADOR|CON|q_temp\(5) & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & (\UAL|Add0~9\ & VCC)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & (!\UAL|Add0~9\)))) # (!\ACUMULADOR|CON|q_temp\(5) & 
-- ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & (!\UAL|Add0~9\)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & ((\UAL|Add0~9\) # (GND)))))
-- \UAL|Add0~11\ = CARRY((\ACUMULADOR|CON|q_temp\(5) & (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & !\UAL|Add0~9\)) # (!\ACUMULADOR|CON|q_temp\(5) & ((!\UAL|Add0~9\) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(5),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	datad => VCC,
	cin => \UAL|Add0~9\,
	combout => \UAL|Add0~10_combout\,
	cout => \UAL|Add0~11\);

-- Location: LCCOMB_X25_Y4_N10
\UAL|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~2_combout\ = (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & ((\ACUMULADOR|CON|q_temp\(5) $ (selULA(1))) # (!selULA(0)))) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & (selULA(0) $ (((\ACUMULADOR|CON|q_temp\(5)) # 
-- (!selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	datab => \ACUMULADOR|CON|q_temp\(5),
	datac => selULA(1),
	datad => selULA(0),
	combout => \UAL|Mux2~2_combout\);

-- Location: LCCOMB_X25_Y4_N0
\UAL|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~3_combout\ = (\UAL|Mux2~2_combout\ & ((selULA(1)) # ((selULA(0)) # (\UAL|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => selULA(0),
	datac => \UAL|Add0~10_combout\,
	datad => \UAL|Mux2~2_combout\,
	combout => \UAL|Mux2~3_combout\);

-- Location: LCCOMB_X25_Y4_N18
\UAL|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~1_combout\ = (selULA(2) & (\UAL|Mux2~0_combout\)) # (!selULA(2) & ((\UAL|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UAL|Mux2~0_combout\,
	datac => selULA(2),
	datad => \UAL|Mux2~3_combout\,
	combout => \UAL|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y5_N12
\Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\estado.t4~regout\) # ((!\estado.t0~regout\) # (!\Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t4~regout\,
	datab => \Selector0~1_combout\,
	datad => \estado.t0~regout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X25_Y4_N14
\cargaNZ~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cargaNZ~2_combout\ = (\estado.t4~regout\) # (!\estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.t4~regout\,
	datad => \estado.t0~regout\,
	combout => \cargaNZ~2_combout\);

-- Location: LCCOMB_X26_Y4_N2
cargaAC : cycloneii_lcell_comb
-- Equation(s):
-- \cargaAC~combout\ = (\Selector46~0_combout\ & ((!\cargaNZ~2_combout\))) # (!\Selector46~0_combout\ & (\cargaAC~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector46~0_combout\,
	datac => \cargaAC~combout\,
	datad => \cargaNZ~2_combout\,
	combout => \cargaAC~combout\);

-- Location: LCFF_X25_Y4_N19
\ACUMULADOR|CON|q_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux2~1_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(5));

-- Location: LCCOMB_X25_Y4_N22
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(5))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t6~regout\,
	datab => \ACUMULADOR|CON|q_temp\(5),
	datac => \Mux0~3_combout\,
	datad => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X25_Y4_N20
\rdmIn[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(5) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector5~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdmIn(5),
	datac => \Selector37~2clkctrl_outclk\,
	datad => \Selector5~0_combout\,
	combout => rdmIn(5));

-- Location: LCFF_X25_Y4_N21
\REGRDM|CON|q_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(5),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(5));

-- Location: LCCOMB_X24_Y4_N12
\memIn[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(5) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(5))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memIn(5),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(5),
	combout => memIn(5));

-- Location: LCCOMB_X27_Y4_N24
\UAL|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux1~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(6)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(6),
	datac => selULA(0),
	datad => selULA(2),
	combout => \UAL|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y4_N30
\UAL|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux1~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(6) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(6) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(6),
	datac => selULA(0),
	datad => selULA(2),
	combout => \UAL|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y4_N26
\UAL|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux1~2_combout\ = (\UAL|Mux1~0_combout\ & (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ & !\UAL|Mux1~1_combout\)))) # (!\UAL|Mux1~0_combout\ & ((\UAL|Add0~12_combout\) # ((\UAL|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Add0~12_combout\,
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	datac => \UAL|Mux1~0_combout\,
	datad => \UAL|Mux1~1_combout\,
	combout => \UAL|Mux1~2_combout\);

-- Location: LCFF_X27_Y4_N27
\ACUMULADOR|CON|q_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux1~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(6));

-- Location: LCCOMB_X25_Y4_N28
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(6))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t6~regout\,
	datab => \ACUMULADOR|CON|q_temp\(6),
	datac => \Mux0~3_combout\,
	datad => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X25_Y4_N30
\rdmIn[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(6) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector4~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rdmIn(6),
	datac => \Selector37~2clkctrl_outclk\,
	datad => \Selector4~0_combout\,
	combout => rdmIn(6));

-- Location: LCFF_X25_Y4_N31
\REGRDM|CON|q_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(6),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(6));

-- Location: LCCOMB_X24_Y4_N22
\memIn[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(6) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(6))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(6),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(6),
	combout => memIn(6));

-- Location: LCCOMB_X27_Y4_N22
\UAL|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~14_combout\ = \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\ $ (\UAL|Add0~13\ $ (\ACUMULADOR|CON|q_temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	datad => \ACUMULADOR|CON|q_temp\(7),
	cin => \UAL|Add0~13\,
	combout => \UAL|Add0~14_combout\);

-- Location: LCCOMB_X27_Y4_N0
\UAL|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux0~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(7)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(7),
	datac => selULA(0),
	datad => selULA(2),
	combout => \UAL|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y4_N2
\UAL|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux0~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(7) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(7) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(7),
	datac => selULA(0),
	datad => selULA(2),
	combout => \UAL|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y4_N0
\UAL|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux0~2_combout\ = (\UAL|Mux0~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\ & ((!\UAL|Mux0~1_combout\)))) # (!\UAL|Mux0~0_combout\ & (((\UAL|Add0~14_combout\) # (\UAL|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	datab => \UAL|Add0~14_combout\,
	datac => \UAL|Mux0~0_combout\,
	datad => \UAL|Mux0~1_combout\,
	combout => \UAL|Mux0~2_combout\);

-- Location: LCFF_X26_Y4_N1
\ACUMULADOR|CON|q_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux0~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(7));

-- Location: LCCOMB_X22_Y4_N24
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(7))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t6~regout\,
	datab => \ACUMULADOR|CON|q_temp\(7),
	datac => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	datad => \Mux0~3_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X22_Y4_N0
\rdmIn[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(7) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector3~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdmIn(7),
	datac => \Selector3~0_combout\,
	datad => \Selector37~2clkctrl_outclk\,
	combout => rdmIn(7));

-- Location: LCFF_X22_Y4_N1
\REGRDM|CON|q_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(7),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(7));

-- Location: LCCOMB_X22_Y4_N18
\memIn[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(7) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(7))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(7),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(7),
	combout => memIn(7));

-- Location: M4K_X23_Y4
\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:MEMORIA|altsyncram:MEMORY_rtl_0|altsyncram_qhd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \rw~combout\,
	portbrewe => VCC,
	clk0 => \clock~clkctrl_outclk\,
	clk1 => \clock~clkctrl_outclk\,
	ena0 => \rw~combout\,
	ena1 => \ALT_INV_rw~combout\,
	portadatain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y4_N8
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(3))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(3),
	datab => \estado.t6~regout\,
	datac => \Mux0~3_combout\,
	datad => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X22_Y4_N28
\rdmIn[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(3) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector7~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdmIn(3),
	datac => \Selector7~0_combout\,
	datad => \Selector37~2clkctrl_outclk\,
	combout => rdmIn(3));

-- Location: LCFF_X22_Y4_N29
\REGRDM|CON|q_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(3),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(3));

-- Location: LCCOMB_X24_Y4_N0
selMux : cycloneii_lcell_comb
-- Equation(s):
-- \selMux~combout\ = (\Selector32~1_combout\ & ((\estado.t5~regout\))) # (!\Selector32~1_combout\ & (\selMux~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~1_combout\,
	datab => \selMux~combout\,
	datad => \estado.t5~regout\,
	combout => \selMux~combout\);

-- Location: LCCOMB_X24_Y4_N2
\SELETOR|s[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[3]~3_combout\ = (\selMux~combout\ & ((\REGRDM|CON|q_temp\(3)))) # (!\selMux~combout\ & (\PROGRAM_COUNTER|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|count\(3),
	datab => \REGRDM|CON|q_temp\(3),
	datad => \selMux~combout\,
	combout => \SELETOR|s[3]~3_combout\);

-- Location: LCCOMB_X26_Y5_N20
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\estado.t3~regout\ & (!\process_2~0_combout\ & !\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t3~regout\,
	datac => \process_2~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCFF_X26_Y4_N27
\ACUMULADOR|CON|q_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux5~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(2));

-- Location: LCCOMB_X26_Y4_N20
\UAL|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux5~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(2) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(2) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => selULA(1),
	datac => \ACUMULADOR|CON|q_temp\(2),
	datad => selULA(0),
	combout => \UAL|Mux5~1_combout\);

-- Location: LCCOMB_X26_Y4_N22
\UAL|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux5~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(2)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => selULA(1),
	datac => \ACUMULADOR|CON|q_temp\(2),
	datad => selULA(0),
	combout => \UAL|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y4_N26
\UAL|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux5~2_combout\ = (\UAL|Mux5~1_combout\ & (((!\UAL|Mux5~0_combout\)))) # (!\UAL|Mux5~1_combout\ & ((\UAL|Mux5~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\)) # (!\UAL|Mux5~0_combout\ & ((\UAL|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	datab => \UAL|Add0~4_combout\,
	datac => \UAL|Mux5~1_combout\,
	datad => \UAL|Mux5~0_combout\,
	combout => \UAL|Mux5~2_combout\);

-- Location: LCCOMB_X26_Y4_N16
\UAL|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux4~1_combout\ = (selULA(2) & (((selULA(1)) # (selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(3) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(3) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(3),
	datab => selULA(1),
	datac => selULA(2),
	datad => selULA(0),
	combout => \UAL|Mux4~1_combout\);

-- Location: LCCOMB_X26_Y4_N10
\UAL|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux4~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(3)))) # (!selULA(2) & (selULA(0) $ (((!\ACUMULADOR|CON|q_temp\(3) & selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(3),
	datab => selULA(1),
	datac => selULA(2),
	datad => selULA(0),
	combout => \UAL|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y4_N8
\UAL|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux4~2_combout\ = (\UAL|Mux4~1_combout\ & (((!\UAL|Mux4~0_combout\)))) # (!\UAL|Mux4~1_combout\ & ((\UAL|Mux4~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\)) # (!\UAL|Mux4~0_combout\ & ((\UAL|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	datab => \UAL|Add0~6_combout\,
	datac => \UAL|Mux4~1_combout\,
	datad => \UAL|Mux4~0_combout\,
	combout => \UAL|Mux4~2_combout\);

-- Location: LCCOMB_X27_Y4_N4
\UAL|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux7~0_combout\ = (selULA(2) & (((!selULA(0) & !selULA(1))) # (!\ACUMULADOR|CON|q_temp\(0)))) # (!selULA(2) & (selULA(0) $ (((!\ACUMULADOR|CON|q_temp\(0) & selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(0),
	datab => selULA(2),
	datac => selULA(0),
	datad => selULA(1),
	combout => \UAL|Mux7~0_combout\);

-- Location: LCCOMB_X27_Y4_N6
\UAL|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux7~1_combout\ = (selULA(2) & (((selULA(0)) # (selULA(1))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(0) & ((selULA(1)))) # (!\ACUMULADOR|CON|q_temp\(0) & (selULA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(0),
	datab => selULA(2),
	datac => selULA(0),
	datad => selULA(1),
	combout => \UAL|Mux7~1_combout\);

-- Location: LCCOMB_X27_Y4_N28
\UAL|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux7~2_combout\ = (\UAL|Mux7~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((!\UAL|Mux7~1_combout\)))) # (!\UAL|Mux7~0_combout\ & (((\UAL|Add0~0_combout\) # (\UAL|Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \UAL|Add0~0_combout\,
	datac => \UAL|Mux7~0_combout\,
	datad => \UAL|Mux7~1_combout\,
	combout => \UAL|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y4_N4
\UAL|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Equal0~0_combout\ = (!\UAL|Mux6~2_combout\ & (!\UAL|Mux5~2_combout\ & (!\UAL|Mux4~2_combout\ & !\UAL|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Mux6~2_combout\,
	datab => \UAL|Mux5~2_combout\,
	datac => \UAL|Mux4~2_combout\,
	datad => \UAL|Mux7~2_combout\,
	combout => \UAL|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y4_N4
\ACUMULADOR|CON|q_temp[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ACUMULADOR|CON|q_temp[4]~feeder_combout\ = \UAL|Mux3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UAL|Mux3~2_combout\,
	combout => \ACUMULADOR|CON|q_temp[4]~feeder_combout\);

-- Location: LCFF_X25_Y4_N5
\ACUMULADOR|CON|q_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ACUMULADOR|CON|q_temp[4]~feeder_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(4));

-- Location: LCCOMB_X25_Y4_N24
\UAL|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux3~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(4)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => selULA(1),
	datac => \ACUMULADOR|CON|q_temp\(4),
	datad => selULA(0),
	combout => \UAL|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y4_N6
\UAL|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux3~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(4) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(4) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => selULA(1),
	datac => \ACUMULADOR|CON|q_temp\(4),
	datad => selULA(0),
	combout => \UAL|Mux3~1_combout\);

-- Location: LCCOMB_X25_Y4_N12
\UAL|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux3~2_combout\ = (\UAL|Mux3~0_combout\ & (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\ & !\UAL|Mux3~1_combout\)))) # (!\UAL|Mux3~0_combout\ & ((\UAL|Add0~8_combout\) # ((\UAL|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Add0~8_combout\,
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\,
	datac => \UAL|Mux3~0_combout\,
	datad => \UAL|Mux3~1_combout\,
	combout => \UAL|Mux3~2_combout\);

-- Location: LCCOMB_X25_Y4_N16
\UAL|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Equal0~1_combout\ = (!\UAL|Mux3~2_combout\ & ((selULA(2) & ((!\UAL|Mux2~0_combout\))) # (!selULA(2) & (!\UAL|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => \UAL|Mux2~3_combout\,
	datac => \UAL|Mux2~0_combout\,
	datad => \UAL|Mux3~2_combout\,
	combout => \UAL|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y4_N18
\UAL|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Equal0~2_combout\ = (!\UAL|Mux1~2_combout\ & (!\UAL|Mux0~2_combout\ & (\UAL|Equal0~0_combout\ & \UAL|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Mux1~2_combout\,
	datab => \UAL|Mux0~2_combout\,
	datac => \UAL|Equal0~0_combout\,
	datad => \UAL|Equal0~1_combout\,
	combout => \UAL|Equal0~2_combout\);

-- Location: LCFF_X26_Y4_N19
\NEGATIVOZERO|CON|q_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \UAL|Equal0~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEGATIVOZERO|CON|q_temp\(1));

-- Location: LCCOMB_X26_Y5_N12
\Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\Mux0~2_combout\ & (((\ACUMULADOR|CON|q_temp\(7))))) # (!\Mux0~2_combout\ & (\Mux0~1_combout\ & (\NEGATIVOZERO|CON|q_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~1_combout\,
	datac => \NEGATIVOZERO|CON|q_temp\(1),
	datad => \ACUMULADOR|CON|q_temp\(7),
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X26_Y5_N30
\Selector41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = ((!\Mux0~5_combout\ & \Selector41~0_combout\)) # (!\Selector0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datac => \Selector0~2_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X25_Y5_N16
\Selector41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (\Selector41~1_combout\ & ((\estado.t5~regout\ & ((\process_2~0_combout\))) # (!\estado.t5~regout\ & (!\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Selector41~1_combout\,
	datac => \process_2~0_combout\,
	datad => \estado.t5~regout\,
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X24_Y4_N14
cargaREM : cycloneii_lcell_comb
-- Equation(s):
-- \cargaREM~combout\ = (\Selector41~2_combout\ & ((!\estado.t6~regout\))) # (!\Selector41~2_combout\ & (\cargaREM~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cargaREM~combout\,
	datac => \estado.t6~regout\,
	datad => \Selector41~2_combout\,
	combout => \cargaREM~combout\);

-- Location: LCFF_X24_Y4_N3
\REGREM|CON|q_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[3]~3_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(3));

-- Location: LCCOMB_X24_Y4_N8
\endMem[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(3) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (endMem(3))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGREM|CON|q_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => endMem(3),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGREM|CON|q_temp\(3),
	combout => endMem(3));

-- Location: LCCOMB_X22_Y4_N30
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(2))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(2),
	datab => \estado.t6~regout\,
	datac => \Mux0~3_combout\,
	datad => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X21_Y4_N28
\rdmIn[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(2) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => rdmIn(2),
	datac => \Selector37~2clkctrl_outclk\,
	datad => \Selector8~0_combout\,
	combout => rdmIn(2));

-- Location: LCFF_X21_Y4_N29
\REGRDM|CON|q_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(2),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(2));

-- Location: LCCOMB_X24_Y4_N26
\SELETOR|s[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[2]~2_combout\ = (\selMux~combout\ & ((\REGRDM|CON|q_temp\(2)))) # (!\selMux~combout\ & (\PROGRAM_COUNTER|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|count\(2),
	datab => \REGRDM|CON|q_temp\(2),
	datad => \selMux~combout\,
	combout => \SELETOR|s[2]~2_combout\);

-- Location: LCFF_X24_Y4_N27
\REGREM|CON|q_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[2]~2_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(2));

-- Location: LCCOMB_X24_Y4_N16
\endMem[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(2) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (endMem(2))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGREM|CON|q_temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => endMem(2),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGREM|CON|q_temp\(2),
	combout => endMem(2));

-- Location: LCCOMB_X27_Y5_N16
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = ((\estado.t3~regout\) # (\estado.t2~regout\)) # (!\estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t0~regout\,
	datac => \estado.t3~regout\,
	datad => \estado.t2~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X27_Y5_N30
cargaRI : cycloneii_lcell_comb
-- Equation(s):
-- \cargaRI~combout\ = (\WideOr1~0_combout\ & ((\estado.t2~regout\))) # (!\WideOr1~0_combout\ & (\cargaRI~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cargaRI~combout\,
	datac => \WideOr1~0_combout\,
	datad => \estado.t2~regout\,
	combout => \cargaRI~combout\);

-- Location: LCFF_X26_Y5_N27
\OPCODE|CON|q_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(7));

-- Location: LCCOMB_X26_Y5_N2
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!\OPCODE|CON|q_temp\(5) & (!\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(4) & \OPCODE|CON|q_temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(5),
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(4),
	datad => \OPCODE|CON|q_temp\(6),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X26_Y5_N24
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Mux0~4_combout\) # (!\estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~4_combout\,
	datad => \estado.t7~regout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X26_Y4_N14
\selULA[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- selULA(1) = (GLOBAL(\Selector0~1clkctrl_outclk\) & (selULA(1))) # (!GLOBAL(\Selector0~1clkctrl_outclk\) & ((\Selector29~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selULA(1),
	datac => \Selector29~0_combout\,
	datad => \Selector0~1clkctrl_outclk\,
	combout => selULA(1));

-- Location: LCCOMB_X26_Y4_N24
\UAL|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux6~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(1) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(1) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => selULA(1),
	datac => \ACUMULADOR|CON|q_temp\(1),
	datad => selULA(0),
	combout => \UAL|Mux6~1_combout\);

-- Location: LCCOMB_X26_Y4_N28
\UAL|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux6~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(1)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => selULA(1),
	datac => \ACUMULADOR|CON|q_temp\(1),
	datad => selULA(0),
	combout => \UAL|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y4_N12
\UAL|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux6~2_combout\ = (\UAL|Mux6~1_combout\ & (((!\UAL|Mux6~0_combout\)))) # (!\UAL|Mux6~1_combout\ & ((\UAL|Mux6~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\)) # (!\UAL|Mux6~0_combout\ & ((\UAL|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	datab => \UAL|Add0~2_combout\,
	datac => \UAL|Mux6~1_combout\,
	datad => \UAL|Mux6~0_combout\,
	combout => \UAL|Mux6~2_combout\);

-- Location: LCFF_X26_Y4_N13
\ACUMULADOR|CON|q_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux6~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(1));

-- Location: LCCOMB_X22_Y4_N4
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(1))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t6~regout\,
	datab => \ACUMULADOR|CON|q_temp\(1),
	datac => \Mux0~3_combout\,
	datad => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X22_Y4_N2
\rdmIn[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(1) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector9~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rdmIn(1),
	datac => \Selector9~0_combout\,
	datad => \Selector37~2clkctrl_outclk\,
	combout => rdmIn(1));

-- Location: LCFF_X22_Y4_N3
\REGRDM|CON|q_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(1),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(1));

-- Location: LCCOMB_X24_Y4_N30
\SELETOR|s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[1]~1_combout\ = (\selMux~combout\ & ((\REGRDM|CON|q_temp\(1)))) # (!\selMux~combout\ & (\PROGRAM_COUNTER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROGRAM_COUNTER|count\(1),
	datab => \REGRDM|CON|q_temp\(1),
	datad => \selMux~combout\,
	combout => \SELETOR|s[1]~1_combout\);

-- Location: LCFF_X24_Y4_N31
\REGREM|CON|q_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[1]~1_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(1));

-- Location: LCCOMB_X24_Y4_N20
\endMem[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(1) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (endMem(1))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGREM|CON|q_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => endMem(1),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGREM|CON|q_temp\(1),
	combout => endMem(1));

-- Location: LCFF_X26_Y5_N9
\OPCODE|CON|q_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(6));

-- Location: LCCOMB_X24_Y5_N22
\proximoEstado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~2_combout\ = (\estado.t3~regout\ & ((\OPCODE|CON|q_temp\(6) & ((!\OPCODE|CON|q_temp\(5)))) # (!\OPCODE|CON|q_temp\(6) & ((\OPCODE|CON|q_temp\(4)) # (\OPCODE|CON|q_temp\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(4),
	datab => \estado.t3~regout\,
	datac => \OPCODE|CON|q_temp\(6),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \proximoEstado~2_combout\);

-- Location: LCCOMB_X24_Y5_N24
\proximoEstado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~1_combout\ = (\estado.t3~regout\ & (\OPCODE|CON|q_temp\(5) $ (((\OPCODE|CON|q_temp\(6)) # (!\OPCODE|CON|q_temp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(4),
	datab => \estado.t3~regout\,
	datac => \OPCODE|CON|q_temp\(6),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \proximoEstado~1_combout\);

-- Location: LCCOMB_X26_Y5_N26
\proximoEstado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~0_combout\ = (\OPCODE|CON|q_temp\(5) & ((\NEGATIVOZERO|CON|q_temp\(1)))) # (!\OPCODE|CON|q_temp\(5) & (\ACUMULADOR|CON|q_temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(5),
	datab => \ACUMULADOR|CON|q_temp\(7),
	datad => \NEGATIVOZERO|CON|q_temp\(1),
	combout => \proximoEstado~0_combout\);

-- Location: LCCOMB_X24_Y4_N4
\proximoEstado~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~3_combout\ = (\OPCODE|CON|q_temp\(7) & ((\proximoEstado~2_combout\ & (!\proximoEstado~1_combout\ & \proximoEstado~0_combout\)) # (!\proximoEstado~2_combout\ & (\proximoEstado~1_combout\)))) # (!\OPCODE|CON|q_temp\(7) & 
-- (\proximoEstado~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(7),
	datab => \proximoEstado~2_combout\,
	datac => \proximoEstado~1_combout\,
	datad => \proximoEstado~0_combout\,
	combout => \proximoEstado~3_combout\);

-- Location: LCFF_X24_Y4_N5
\estado.t4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \proximoEstado~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t4~regout\);

-- Location: LCFF_X24_Y4_N7
\estado.t5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t4~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t5~regout\);

-- Location: LCCOMB_X25_Y5_N18
\Selector34~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~10_combout\ = (\estado.t5~regout\ & (!\process_2~0_combout\ & ((\rdmIn[1]~0_combout\) # (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rdmIn[1]~0_combout\,
	datab => \estado.t5~regout\,
	datac => \process_2~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector34~10_combout\);

-- Location: LCCOMB_X24_Y5_N4
\Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = ((\estado.t6~regout\) # (\Selector34~10_combout\)) # (!\estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t0~regout\,
	datac => \estado.t6~regout\,
	datad => \Selector34~10_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X25_Y5_N22
cargaPC : cycloneii_lcell_comb
-- Equation(s):
-- \cargaPC~combout\ = (\Selector43~0_combout\ & ((\estado.t5~regout\))) # (!\Selector43~0_combout\ & (\cargaPC~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cargaPC~combout\,
	datac => \Selector43~0_combout\,
	datad => \estado.t5~regout\,
	combout => \cargaPC~combout\);

-- Location: LCCOMB_X25_Y5_N8
\PROGRAM_COUNTER|count[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[4]~7_combout\ = (\Mux0~2_combout\ & (((!\ACUMULADOR|CON|q_temp\(7))))) # (!\Mux0~2_combout\ & (!\NEGATIVOZERO|CON|q_temp\(1) & (\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \NEGATIVOZERO|CON|q_temp\(1),
	datac => \Mux0~1_combout\,
	datad => \ACUMULADOR|CON|q_temp\(7),
	combout => \PROGRAM_COUNTER|count[4]~7_combout\);

-- Location: LCCOMB_X25_Y5_N28
\PROGRAM_COUNTER|count[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[4]~6_combout\ = (\estado.t1~regout\) # ((\cargaPC~combout\) # ((\estado.t4~regout\ & \process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t4~regout\,
	datab => \estado.t1~regout\,
	datac => \process_2~0_combout\,
	datad => \cargaPC~combout\,
	combout => \PROGRAM_COUNTER|count[4]~6_combout\);

-- Location: LCCOMB_X25_Y5_N30
\PROGRAM_COUNTER|count[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[4]~8_combout\ = (\PROGRAM_COUNTER|count[4]~6_combout\) # ((\Selector0~2_combout\ & \PROGRAM_COUNTER|count[4]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~2_combout\,
	datac => \PROGRAM_COUNTER|count[4]~7_combout\,
	datad => \PROGRAM_COUNTER|count[4]~6_combout\,
	combout => \PROGRAM_COUNTER|count[4]~8_combout\);

-- Location: LCFF_X25_Y5_N1
\PROGRAM_COUNTER|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[0]~4_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[4]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(0));

-- Location: LCFF_X27_Y4_N29
\ACUMULADOR|CON|q_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux7~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(0));

-- Location: LCCOMB_X22_Y4_N10
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\estado.t6~regout\ & ((\Mux0~3_combout\ & (\ACUMULADOR|CON|q_temp\(0))) # (!\Mux0~3_combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\))))) # (!\estado.t6~regout\ & 
-- (((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t6~regout\,
	datab => \ACUMULADOR|CON|q_temp\(0),
	datac => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => \Mux0~3_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X22_Y4_N12
\rdmIn[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- rdmIn(0) = (GLOBAL(\Selector37~2clkctrl_outclk\) & ((\Selector27~0_combout\))) # (!GLOBAL(\Selector37~2clkctrl_outclk\) & (rdmIn(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rdmIn(0),
	datac => \Selector37~2clkctrl_outclk\,
	datad => \Selector27~0_combout\,
	combout => rdmIn(0));

-- Location: LCFF_X22_Y4_N13
\REGRDM|CON|q_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => rdmIn(0),
	ena => \cargaRDM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGRDM|CON|q_temp\(0));

-- Location: LCCOMB_X24_Y4_N18
\SELETOR|s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[0]~0_combout\ = (\selMux~combout\ & ((\REGRDM|CON|q_temp\(0)))) # (!\selMux~combout\ & (\PROGRAM_COUNTER|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count\(0),
	datac => \REGRDM|CON|q_temp\(0),
	datad => \selMux~combout\,
	combout => \SELETOR|s[0]~0_combout\);

-- Location: LCFF_X24_Y4_N19
\REGREM|CON|q_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[0]~0_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(0));

-- Location: LCCOMB_X24_Y4_N10
\endMem[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(0) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (endMem(0))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGREM|CON|q_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => endMem(0),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGREM|CON|q_temp\(0),
	combout => endMem(0));

-- Location: LCFF_X26_Y5_N25
\OPCODE|CON|q_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(5));

-- Location: LCCOMB_X26_Y5_N18
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!\OPCODE|CON|q_temp\(6) & (\OPCODE|CON|q_temp\(4) & (!\OPCODE|CON|q_temp\(5) & !\OPCODE|CON|q_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(4),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(7),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X24_Y5_N14
\Selector39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\Mux0~3_combout\ & (((!\estado.t7~regout\)))) # (!\Mux0~3_combout\ & (((!\estado.t6~regout\)) # (!\Selector37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~0_combout\,
	datab => \estado.t7~regout\,
	datac => \estado.t6~regout\,
	datad => \Mux0~3_combout\,
	combout => \Selector39~1_combout\);

-- Location: LCCOMB_X24_Y5_N2
\Selector39~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~3_combout\ = (!\estado.t1~regout\ & (\Selector39~1_combout\ & !\Selector39~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t1~regout\,
	datac => \Selector39~1_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~3_combout\);

-- Location: CLKCTRL_G4
\Selector39~3clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector39~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector39~3clkctrl_outclk\);

-- Location: LCCOMB_X22_Y4_N14
\memIn[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(0) = (GLOBAL(\Selector39~3clkctrl_outclk\) & (memIn(0))) # (!GLOBAL(\Selector39~3clkctrl_outclk\) & ((\REGRDM|CON|q_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(0),
	datac => \Selector39~3clkctrl_outclk\,
	datad => \REGRDM|CON|q_temp\(0),
	combout => memIn(0));

-- Location: LCFF_X26_Y5_N3
\OPCODE|CON|q_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(4));

-- Location: LCCOMB_X26_Y5_N14
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(4) & (\OPCODE|CON|q_temp\(5) & \OPCODE|CON|q_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(4),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(7),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X26_Y5_N4
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(5) & \OPCODE|CON|q_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(7),
	datab => \OPCODE|CON|q_temp\(6),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(4),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X25_Y5_N20
\rdmIn[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rdmIn[1]~0_combout\ = (\ACUMULADOR|CON|q_temp\(7) & ((\Mux0~2_combout\) # ((\Mux0~1_combout\ & \NEGATIVOZERO|CON|q_temp\(1))))) # (!\ACUMULADOR|CON|q_temp\(7) & (\Mux0~1_combout\ & (\NEGATIVOZERO|CON|q_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(7),
	datab => \Mux0~1_combout\,
	datac => \NEGATIVOZERO|CON|q_temp\(1),
	datad => \Mux0~2_combout\,
	combout => \rdmIn[1]~0_combout\);

-- Location: LCCOMB_X24_Y5_N16
\proximoEstado.t6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado.t6~0_combout\ = (\estado.t5~regout\ & ((\process_2~0_combout\) # ((!\rdmIn[1]~0_combout\ & !\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t5~regout\,
	datab => \rdmIn[1]~0_combout\,
	datac => \Mux0~0_combout\,
	datad => \process_2~0_combout\,
	combout => \proximoEstado.t6~0_combout\);

-- Location: LCFF_X24_Y5_N17
\estado.t6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \proximoEstado.t6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t6~regout\);

-- Location: LCFF_X24_Y4_N1
\estado.t7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t6~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t7~regout\);

-- Location: LCCOMB_X24_Y5_N26
\Selector34~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~12_combout\ = (!\OPCODE|CON|q_temp\(4) & (!\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(6) & !\OPCODE|CON|q_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(4),
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(6),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \Selector34~12_combout\);

-- Location: LCCOMB_X25_Y5_N14
\Selector34~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~8_combout\ = (\Mux0~2_combout\ & (((!\NEGATIVOZERO|CON|q_temp\(1) & \Mux0~1_combout\)) # (!\ACUMULADOR|CON|q_temp\(7)))) # (!\Mux0~2_combout\ & (!\NEGATIVOZERO|CON|q_temp\(1) & (\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \NEGATIVOZERO|CON|q_temp\(1),
	datac => \Mux0~1_combout\,
	datad => \ACUMULADOR|CON|q_temp\(7),
	combout => \Selector34~8_combout\);

-- Location: LCCOMB_X24_Y5_N20
\Selector34~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~9_combout\ = (\estado.t3~regout\ & ((\Selector34~12_combout\) # ((\Selector34~8_combout\) # (\Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t3~regout\,
	datab => \Selector34~12_combout\,
	datac => \Selector34~8_combout\,
	datad => \Mux0~5_combout\,
	combout => \Selector34~9_combout\);

-- Location: LCCOMB_X24_Y5_N8
\Selector34~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~11_combout\ = (!\estado.t7~regout\ & (!\Selector34~9_combout\ & !\Selector34~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t7~regout\,
	datac => \Selector34~9_combout\,
	datad => \Selector34~10_combout\,
	combout => \Selector34~11_combout\);

-- Location: LCFF_X24_Y5_N9
\estado.t0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector34~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t0~regout\);

-- Location: LCCOMB_X24_Y5_N30
\estado.t1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.t1~0_combout\ = !\estado.t0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.t0~regout\,
	combout => \estado.t1~0_combout\);

-- Location: LCFF_X24_Y5_N31
\estado.t1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \estado.t1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t1~regout\);

-- Location: LCCOMB_X24_Y5_N18
\Selector39~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~2_combout\ = ((\estado.t1~regout\) # ((\Selector39~0_combout\) # (!\Selector39~1_combout\))) # (!\estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t0~regout\,
	datab => \estado.t1~regout\,
	datac => \Selector39~1_combout\,
	datad => \Selector39~0_combout\,
	combout => \Selector39~2_combout\);

-- Location: LCCOMB_X24_Y4_N28
rw : cycloneii_lcell_comb
-- Equation(s):
-- \rw~combout\ = (\Selector39~2_combout\ & ((\estado.t7~regout\))) # (!\Selector39~2_combout\ & (\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rw~combout\,
	datac => \Selector39~2_combout\,
	datad => \estado.t7~regout\,
	combout => \rw~combout\);

-- Location: LCFF_X26_Y4_N9
\ACUMULADOR|CON|q_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux4~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(3));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(0));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(1));

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(2));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(3));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(4));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(5));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(6));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaMemoria[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaMemoria(7));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(0));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(1));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(2));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(4));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(5));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(6));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\saidaAcumulador[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ACUMULADOR|CON|q_temp\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_saidaAcumulador(7));
END structure;


