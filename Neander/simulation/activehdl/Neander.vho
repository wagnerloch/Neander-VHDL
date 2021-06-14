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

-- DATE "06/14/2021 10:21:50"

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
-- saidaMemoria[0]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[1]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[2]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[3]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[5]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[6]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaMemoria[7]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[0]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[1]	=>  Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[2]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[3]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[4]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[5]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[6]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- saidaAcumulador[7]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Selector0~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector28~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \UAL|Add0~10_combout\ : std_logic;
SIGNAL \UAL|Mux0~0_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector24~9_combout\ : std_logic;
SIGNAL \Selector24~10_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \estado.hlt~regout\ : std_logic;
SIGNAL \Selector24~12_combout\ : std_logic;
SIGNAL \estado.hlt~6_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[0]~4_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[0]~5\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[1]~9_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[1]~10\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[2]~11_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[2]~12\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[3]~13_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \UAL|Mux5~0_combout\ : std_logic;
SIGNAL \UAL|Mux5~1_combout\ : std_logic;
SIGNAL \UAL|Add0~1\ : std_logic;
SIGNAL \UAL|Add0~3\ : std_logic;
SIGNAL \UAL|Add0~4_combout\ : std_logic;
SIGNAL \UAL|Mux5~2_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \UAL|Mux1~1_combout\ : std_logic;
SIGNAL \UAL|Mux1~0_combout\ : std_logic;
SIGNAL \UAL|Mux2~0_combout\ : std_logic;
SIGNAL \UAL|Mux2~2_combout\ : std_logic;
SIGNAL \UAL|Mux2~3_combout\ : std_logic;
SIGNAL \UAL|Mux2~1_combout\ : std_logic;
SIGNAL \UAL|Add0~5\ : std_logic;
SIGNAL \UAL|Add0~7\ : std_logic;
SIGNAL \UAL|Add0~9\ : std_logic;
SIGNAL \UAL|Add0~11\ : std_logic;
SIGNAL \UAL|Add0~12_combout\ : std_logic;
SIGNAL \UAL|Mux1~2_combout\ : std_logic;
SIGNAL \UAL|Add0~0_combout\ : std_logic;
SIGNAL \UAL|Mux7~1_combout\ : std_logic;
SIGNAL \UAL|Mux7~0_combout\ : std_logic;
SIGNAL \UAL|Mux7~2_combout\ : std_logic;
SIGNAL \UAL|Mux4~0_combout\ : std_logic;
SIGNAL \UAL|Mux4~1_combout\ : std_logic;
SIGNAL \UAL|Add0~6_combout\ : std_logic;
SIGNAL \UAL|Mux4~2_combout\ : std_logic;
SIGNAL \UAL|Equal0~0_combout\ : std_logic;
SIGNAL \UAL|Mux3~1_combout\ : std_logic;
SIGNAL \UAL|Add0~8_combout\ : std_logic;
SIGNAL \UAL|Mux3~0_combout\ : std_logic;
SIGNAL \UAL|Mux3~2_combout\ : std_logic;
SIGNAL \UAL|Equal0~1_combout\ : std_logic;
SIGNAL \UAL|Equal0~2_combout\ : std_logic;
SIGNAL \UAL|Add0~13\ : std_logic;
SIGNAL \UAL|Add0~14_combout\ : std_logic;
SIGNAL \UAL|Mux0~1_combout\ : std_logic;
SIGNAL \UAL|Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \endMem[1]~0_combout\ : std_logic;
SIGNAL \Selector24~8_combout\ : std_logic;
SIGNAL \Selector24~11_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \estado.t0~regout\ : std_logic;
SIGNAL \estado.t1~0_combout\ : std_logic;
SIGNAL \estado.t1~regout\ : std_logic;
SIGNAL \estado.t2~regout\ : std_logic;
SIGNAL \estado.t3~regout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \cargaNZ~2_combout\ : std_logic;
SIGNAL \cargaAC~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \cargaRI~combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~5clkctrl_outclk\ : std_logic;
SIGNAL \selULA[1]~0_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \UAL|Mux6~0_combout\ : std_logic;
SIGNAL \UAL|Mux6~1_combout\ : std_logic;
SIGNAL \UAL|Add0~2_combout\ : std_logic;
SIGNAL \UAL|Mux6~2_combout\ : std_logic;
SIGNAL \ACUMULADOR|CON|q_temp[1]~feeder_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[0]~7_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[0]~6_combout\ : std_logic;
SIGNAL \PROGRAM_COUNTER|count[0]~8_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector33~1_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \selMux~combout\ : std_logic;
SIGNAL \SELETOR|s[3]~3_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \Selector32~3_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \cargaREM~combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \SELETOR|s[2]~2_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \SELETOR|s[1]~1_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \proximoEstado~0_combout\ : std_logic;
SIGNAL \proximoEstado~2_combout\ : std_logic;
SIGNAL \proximoEstado~1_combout\ : std_logic;
SIGNAL \proximoEstado~3_combout\ : std_logic;
SIGNAL \proximoEstado~4_combout\ : std_logic;
SIGNAL \estado.t4~regout\ : std_logic;
SIGNAL \estado.t5~regout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \cargaPC~combout\ : std_logic;
SIGNAL \SELETOR|s[0]~0_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \endMem[1]~1_combout\ : std_logic;
SIGNAL \Selector28~3_combout\ : std_logic;
SIGNAL \Selector28~3clkctrl_outclk\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \process_2~0_combout\ : std_logic;
SIGNAL \proximoEstado.t6~0_combout\ : std_logic;
SIGNAL \estado.t6~regout\ : std_logic;
SIGNAL \estado.t7~regout\ : std_logic;
SIGNAL \rw~combout\ : std_logic;
SIGNAL \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ACUMULADOR|CON|q_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PROGRAM_COUNTER|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \NEGATIVOZERO|CON|q_temp\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \REGREM|CON|q_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL memIn : std_logic_vector(7 DOWNTO 0);
SIGNAL \OPCODE|CON|q_temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL selULA : std_logic_vector(2 DOWNTO 0);
SIGNAL endMem : std_logic_vector(7 DOWNTO 0);
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

\Selector0~5clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector0~5_combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\Selector28~3clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector28~3_combout\);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);
\ALT_INV_rw~combout\ <= NOT \rw~combout\;

-- Location: LCCOMB_X22_Y12_N10
\UAL|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~10_combout\ = (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & ((\ACUMULADOR|CON|q_temp\(5) & (\UAL|Add0~9\ & VCC)) # (!\ACUMULADOR|CON|q_temp\(5) & (!\UAL|Add0~9\)))) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & 
-- ((\ACUMULADOR|CON|q_temp\(5) & (!\UAL|Add0~9\)) # (!\ACUMULADOR|CON|q_temp\(5) & ((\UAL|Add0~9\) # (GND)))))
-- \UAL|Add0~11\ = CARRY((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & (!\ACUMULADOR|CON|q_temp\(5) & !\UAL|Add0~9\)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & ((!\UAL|Add0~9\) # (!\ACUMULADOR|CON|q_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	datab => \ACUMULADOR|CON|q_temp\(5),
	datad => VCC,
	cin => \UAL|Add0~9\,
	combout => \UAL|Add0~10_combout\,
	cout => \UAL|Add0~11\);

-- Location: LCCOMB_X21_Y12_N0
\UAL|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux0~0_combout\ = (selULA(2) & (((!selULA(0) & !selULA(1))) # (!\ACUMULADOR|CON|q_temp\(7)))) # (!selULA(2) & (selULA(0) $ (((!\ACUMULADOR|CON|q_temp\(7) & selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(7),
	datab => selULA(0),
	datac => selULA(1),
	datad => selULA(2),
	combout => \UAL|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ((\estado.t7~regout\ & \Mux0~0_combout\)) # (!\estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t0~regout\,
	datab => \estado.t7~regout\,
	datad => \Mux0~0_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!\Mux0~0_combout\ & (\estado.t7~regout\ & \Selector28~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \estado.t7~regout\,
	datad => \Selector28~1_combout\,
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X21_Y11_N26
\Selector24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~9_combout\ = (\NEGATIVOZERO|CON|q_temp\(1) & (\Mux0~4_combout\ & (!\ACUMULADOR|CON|q_temp\(7)))) # (!\NEGATIVOZERO|CON|q_temp\(1) & ((\Mux0~3_combout\) # ((\Mux0~4_combout\ & !\ACUMULADOR|CON|q_temp\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NEGATIVOZERO|CON|q_temp\(1),
	datab => \Mux0~4_combout\,
	datac => \ACUMULADOR|CON|q_temp\(7),
	datad => \Mux0~3_combout\,
	combout => \Selector24~9_combout\);

-- Location: LCCOMB_X21_Y11_N0
\Selector24~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~10_combout\ = (\estado.t3~regout\ & ((\Mux0~6_combout\) # ((\Selector24~9_combout\) # (\Selector24~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \Selector24~9_combout\,
	datac => \Selector24~12_combout\,
	datad => \estado.t3~regout\,
	combout => \Selector24~10_combout\);

-- Location: LCCOMB_X19_Y11_N10
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\OPCODE|CON|q_temp\(7) & ((\OPCODE|CON|q_temp\(6)) # ((\OPCODE|CON|q_temp\(4) & \OPCODE|CON|q_temp\(5))))) # (!\OPCODE|CON|q_temp\(7) & (\OPCODE|CON|q_temp\(4) & (\OPCODE|CON|q_temp\(5) & \OPCODE|CON|q_temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(4),
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(6),
	combout => \Mux10~0_combout\);

-- Location: LCFF_X20_Y11_N17
\estado.hlt\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.hlt~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.hlt~regout\);

-- Location: LCCOMB_X21_Y11_N28
\Selector24~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~12_combout\ = (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(4) & !\OPCODE|CON|q_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(4),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \Selector24~12_combout\);

-- Location: LCCOMB_X19_Y11_N4
\estado.hlt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.hlt~6_combout\ = (\estado.hlt~regout\) # ((\Mux10~0_combout\ & \estado.t3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datac => \estado.hlt~regout\,
	datad => \estado.t3~regout\,
	combout => \estado.hlt~6_combout\);

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

-- Location: LCCOMB_X24_Y12_N12
\PROGRAM_COUNTER|count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[0]~4_combout\ = \PROGRAM_COUNTER|count\(0) $ (VCC)
-- \PROGRAM_COUNTER|count[0]~5\ = CARRY(\PROGRAM_COUNTER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count\(0),
	datad => VCC,
	combout => \PROGRAM_COUNTER|count[0]~4_combout\,
	cout => \PROGRAM_COUNTER|count[0]~5\);

-- Location: LCCOMB_X24_Y12_N14
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

-- Location: LCCOMB_X24_Y12_N16
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

-- Location: LCCOMB_X24_Y12_N18
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

-- Location: LCCOMB_X20_Y12_N2
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\estado.t7~regout\ & \Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.t7~regout\,
	datad => \Mux0~1_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X20_Y12_N16
\selULA[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- selULA(2) = (GLOBAL(\Selector0~5clkctrl_outclk\) & (selULA(2))) # (!GLOBAL(\Selector0~5clkctrl_outclk\) & ((\Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => \Selector0~5clkctrl_outclk\,
	datad => \Selector20~0_combout\,
	combout => selULA(2));

-- Location: LCCOMB_X20_Y12_N22
\UAL|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux5~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(2)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(2),
	datac => selULA(2),
	datad => selULA(0),
	combout => \UAL|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y12_N30
\UAL|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux5~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(2) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(2) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(2),
	datac => selULA(2),
	datad => selULA(0),
	combout => \UAL|Mux5~1_combout\);

-- Location: LCCOMB_X22_Y12_N0
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

-- Location: LCCOMB_X22_Y12_N2
\UAL|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~2_combout\ = (\ACUMULADOR|CON|q_temp\(1) & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & (\UAL|Add0~1\ & VCC)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & (!\UAL|Add0~1\)))) # (!\ACUMULADOR|CON|q_temp\(1) & 
-- ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & (!\UAL|Add0~1\)) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & ((\UAL|Add0~1\) # (GND)))))
-- \UAL|Add0~3\ = CARRY((\ACUMULADOR|CON|q_temp\(1) & (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & !\UAL|Add0~1\)) # (!\ACUMULADOR|CON|q_temp\(1) & ((!\UAL|Add0~1\) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(1),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	cin => \UAL|Add0~1\,
	combout => \UAL|Add0~2_combout\,
	cout => \UAL|Add0~3\);

-- Location: LCCOMB_X22_Y12_N4
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

-- Location: LCCOMB_X21_Y12_N4
\UAL|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux5~2_combout\ = (\UAL|Mux5~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\ & (!\UAL|Mux5~1_combout\))) # (!\UAL|Mux5~0_combout\ & (((\UAL|Mux5~1_combout\) # (\UAL|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	datab => \UAL|Mux5~0_combout\,
	datac => \UAL|Mux5~1_combout\,
	datad => \UAL|Add0~4_combout\,
	combout => \UAL|Mux5~2_combout\);

-- Location: LCFF_X22_Y12_N27
\ACUMULADOR|CON|q_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux1~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(6));

-- Location: LCCOMB_X20_Y12_N28
\Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (!\OPCODE|CON|q_temp\(5) & (!\OPCODE|CON|q_temp\(4) & (\OPCODE|CON|q_temp\(6) & !\OPCODE|CON|q_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(5),
	datab => \OPCODE|CON|q_temp\(4),
	datac => \OPCODE|CON|q_temp\(6),
	datad => \OPCODE|CON|q_temp\(7),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X20_Y12_N12
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Mux0~5_combout\) # (!\estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.t7~regout\,
	datad => \Mux0~5_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X20_Y12_N20
\selULA[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- selULA(1) = (GLOBAL(\Selector0~5clkctrl_outclk\) & (selULA(1))) # (!GLOBAL(\Selector0~5clkctrl_outclk\) & ((\Selector21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datac => \Selector0~5clkctrl_outclk\,
	datad => \Selector21~0_combout\,
	combout => selULA(1));

-- Location: LCCOMB_X22_Y12_N22
\UAL|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux1~1_combout\ = (selULA(2) & ((selULA(0)) # ((selULA(1))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(6) & ((selULA(1)))) # (!\ACUMULADOR|CON|q_temp\(6) & (selULA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(0),
	datab => \ACUMULADOR|CON|q_temp\(6),
	datac => selULA(1),
	datad => selULA(2),
	combout => \UAL|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y12_N20
\UAL|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux1~0_combout\ = (selULA(2) & (((!selULA(0) & !selULA(1))) # (!\ACUMULADOR|CON|q_temp\(6)))) # (!selULA(2) & (selULA(0) $ (((!\ACUMULADOR|CON|q_temp\(6) & selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(0),
	datab => \ACUMULADOR|CON|q_temp\(6),
	datac => selULA(1),
	datad => selULA(2),
	combout => \UAL|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y12_N18
\UAL|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~0_combout\ = (selULA(0) & (((\ACUMULADOR|CON|q_temp\(5))))) # (!selULA(0) & ((selULA(1) & ((\ACUMULADOR|CON|q_temp\(5)))) # (!selULA(1) & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	datab => \ACUMULADOR|CON|q_temp\(5),
	datac => selULA(0),
	datad => selULA(1),
	combout => \UAL|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\UAL|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~2_combout\ = (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & ((\ACUMULADOR|CON|q_temp\(5) $ (selULA(1))) # (!selULA(0)))) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\ & (selULA(0) $ (((\ACUMULADOR|CON|q_temp\(5)) # 
-- (!selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	datab => \ACUMULADOR|CON|q_temp\(5),
	datac => selULA(0),
	datad => selULA(1),
	combout => \UAL|Mux2~2_combout\);

-- Location: LCCOMB_X22_Y12_N30
\UAL|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~3_combout\ = (\UAL|Mux2~2_combout\ & ((\UAL|Add0~10_combout\) # ((selULA(0)) # (selULA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Add0~10_combout\,
	datab => selULA(0),
	datac => selULA(1),
	datad => \UAL|Mux2~2_combout\,
	combout => \UAL|Mux2~3_combout\);

-- Location: LCCOMB_X22_Y12_N24
\UAL|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux2~1_combout\ = (selULA(2) & (\UAL|Mux2~0_combout\)) # (!selULA(2) & ((\UAL|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selULA(2),
	datac => \UAL|Mux2~0_combout\,
	datad => \UAL|Mux2~3_combout\,
	combout => \UAL|Mux2~1_combout\);

-- Location: LCFF_X22_Y12_N25
\ACUMULADOR|CON|q_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux2~1_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(5));

-- Location: LCCOMB_X22_Y12_N6
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

-- Location: LCCOMB_X22_Y12_N8
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

-- Location: LCCOMB_X22_Y12_N12
\UAL|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~12_combout\ = ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ $ (\ACUMULADOR|CON|q_temp\(6) $ (!\UAL|Add0~11\)))) # (GND)
-- \UAL|Add0~13\ = CARRY((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ & ((\ACUMULADOR|CON|q_temp\(6)) # (!\UAL|Add0~11\))) # (!\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\ & (\ACUMULADOR|CON|q_temp\(6) & !\UAL|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	datab => \ACUMULADOR|CON|q_temp\(6),
	datad => VCC,
	cin => \UAL|Add0~11\,
	combout => \UAL|Add0~12_combout\,
	cout => \UAL|Add0~13\);

-- Location: LCCOMB_X22_Y12_N26
\UAL|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux1~2_combout\ = (\UAL|Mux1~1_combout\ & (((!\UAL|Mux1~0_combout\)))) # (!\UAL|Mux1~1_combout\ & ((\UAL|Mux1~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\)) # (!\UAL|Mux1~0_combout\ & ((\UAL|Add0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	datab => \UAL|Mux1~1_combout\,
	datac => \UAL|Mux1~0_combout\,
	datad => \UAL|Add0~12_combout\,
	combout => \UAL|Mux1~2_combout\);

-- Location: LCFF_X21_Y12_N23
\ACUMULADOR|CON|q_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux7~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(0));

-- Location: LCCOMB_X20_Y12_N0
\UAL|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux7~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(0) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(0) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(0),
	datac => selULA(2),
	datad => selULA(0),
	combout => \UAL|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y12_N10
\UAL|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux7~0_combout\ = (selULA(2) & (((!selULA(0) & !selULA(1))) # (!\ACUMULADOR|CON|q_temp\(0)))) # (!selULA(2) & (selULA(0) $ (((!\ACUMULADOR|CON|q_temp\(0) & selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(0),
	datab => selULA(0),
	datac => selULA(1),
	datad => selULA(2),
	combout => \UAL|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y12_N22
\UAL|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux7~2_combout\ = (\UAL|Mux7~1_combout\ & (((!\UAL|Mux7~0_combout\)))) # (!\UAL|Mux7~1_combout\ & ((\UAL|Mux7~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\UAL|Mux7~0_combout\ & ((\UAL|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \UAL|Add0~0_combout\,
	datac => \UAL|Mux7~1_combout\,
	datad => \UAL|Mux7~0_combout\,
	combout => \UAL|Mux7~2_combout\);

-- Location: LCFF_X21_Y12_N19
\ACUMULADOR|CON|q_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux4~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(3));

-- Location: LCCOMB_X21_Y12_N2
\UAL|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux4~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(3)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => selULA(0),
	datac => \ACUMULADOR|CON|q_temp\(3),
	datad => selULA(2),
	combout => \UAL|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y12_N6
\UAL|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux4~1_combout\ = (selULA(2) & ((selULA(1)) # ((selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(3) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(3) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(3),
	datac => selULA(2),
	datad => selULA(0),
	combout => \UAL|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y12_N18
\UAL|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux4~2_combout\ = (\UAL|Mux4~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\ & (!\UAL|Mux4~1_combout\))) # (!\UAL|Mux4~0_combout\ & (((\UAL|Mux4~1_combout\) # (\UAL|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	datab => \UAL|Mux4~0_combout\,
	datac => \UAL|Mux4~1_combout\,
	datad => \UAL|Add0~6_combout\,
	combout => \UAL|Mux4~2_combout\);

-- Location: LCCOMB_X21_Y12_N8
\UAL|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Equal0~0_combout\ = (!\UAL|Mux6~2_combout\ & (!\UAL|Mux7~2_combout\ & (!\UAL|Mux5~2_combout\ & !\UAL|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Mux6~2_combout\,
	datab => \UAL|Mux7~2_combout\,
	datac => \UAL|Mux5~2_combout\,
	datad => \UAL|Mux4~2_combout\,
	combout => \UAL|Equal0~0_combout\);

-- Location: LCFF_X21_Y12_N25
\ACUMULADOR|CON|q_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \UAL|Mux3~2_combout\,
	sload => VCC,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(4));

-- Location: LCCOMB_X20_Y12_N24
\UAL|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux3~1_combout\ = (selULA(2) & (((selULA(1)) # (selULA(0))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(4) & (selULA(1))) # (!\ACUMULADOR|CON|q_temp\(4) & ((selULA(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => \ACUMULADOR|CON|q_temp\(4),
	datac => selULA(1),
	datad => selULA(0),
	combout => \UAL|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y12_N14
\UAL|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux3~0_combout\ = (selULA(2) & (((!selULA(1) & !selULA(0))) # (!\ACUMULADOR|CON|q_temp\(4)))) # (!selULA(2) & (selULA(0) $ (((selULA(1) & !\ACUMULADOR|CON|q_temp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(1),
	datab => \ACUMULADOR|CON|q_temp\(4),
	datac => selULA(2),
	datad => selULA(0),
	combout => \UAL|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y12_N20
\UAL|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux3~2_combout\ = (\UAL|Mux3~1_combout\ & (((!\UAL|Mux3~0_combout\)))) # (!\UAL|Mux3~1_combout\ & ((\UAL|Mux3~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\)) # (!\UAL|Mux3~0_combout\ & ((\UAL|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\,
	datab => \UAL|Mux3~1_combout\,
	datac => \UAL|Add0~8_combout\,
	datad => \UAL|Mux3~0_combout\,
	combout => \UAL|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y12_N28
\UAL|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Equal0~1_combout\ = (!\UAL|Mux3~2_combout\ & ((selULA(2) & (!\UAL|Mux2~0_combout\)) # (!selULA(2) & ((!\UAL|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selULA(2),
	datab => \UAL|Mux2~0_combout\,
	datac => \UAL|Mux3~2_combout\,
	datad => \UAL|Mux2~3_combout\,
	combout => \UAL|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y12_N6
\UAL|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Equal0~2_combout\ = (!\UAL|Mux0~2_combout\ & (!\UAL|Mux1~2_combout\ & (\UAL|Equal0~0_combout\ & \UAL|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Mux0~2_combout\,
	datab => \UAL|Mux1~2_combout\,
	datac => \UAL|Equal0~0_combout\,
	datad => \UAL|Equal0~1_combout\,
	combout => \UAL|Equal0~2_combout\);

-- Location: LCFF_X21_Y12_N7
\NEGATIVOZERO|CON|q_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \UAL|Equal0~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \NEGATIVOZERO|CON|q_temp\(1));

-- Location: LCCOMB_X22_Y12_N14
\UAL|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Add0~14_combout\ = \ACUMULADOR|CON|q_temp\(7) $ (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\ $ (\UAL|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(7),
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	cin => \UAL|Add0~13\,
	combout => \UAL|Add0~14_combout\);

-- Location: LCCOMB_X21_Y12_N14
\UAL|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux0~1_combout\ = (selULA(2) & (((selULA(0)) # (selULA(1))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(7) & ((selULA(1)))) # (!\ACUMULADOR|CON|q_temp\(7) & (selULA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(7),
	datab => selULA(0),
	datac => selULA(1),
	datad => selULA(2),
	combout => \UAL|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y12_N16
\UAL|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux0~2_combout\ = (\UAL|Mux0~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\ & ((!\UAL|Mux0~1_combout\)))) # (!\UAL|Mux0~0_combout\ & (((\UAL|Add0~14_combout\) # (\UAL|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UAL|Mux0~0_combout\,
	datab => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	datac => \UAL|Add0~14_combout\,
	datad => \UAL|Mux0~1_combout\,
	combout => \UAL|Mux0~2_combout\);

-- Location: LCFF_X22_Y12_N17
\ACUMULADOR|CON|q_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \UAL|Mux0~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(7));

-- Location: LCCOMB_X21_Y11_N10
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(4) & \OPCODE|CON|q_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(7),
	datab => \OPCODE|CON|q_temp\(6),
	datac => \OPCODE|CON|q_temp\(4),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X21_Y11_N8
\endMem[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \endMem[1]~0_combout\ = (\Mux0~4_combout\ & ((\ACUMULADOR|CON|q_temp\(7)) # ((\NEGATIVOZERO|CON|q_temp\(1) & \Mux0~3_combout\)))) # (!\Mux0~4_combout\ & (\NEGATIVOZERO|CON|q_temp\(1) & ((\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \NEGATIVOZERO|CON|q_temp\(1),
	datac => \ACUMULADOR|CON|q_temp\(7),
	datad => \Mux0~3_combout\,
	combout => \endMem[1]~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\Selector24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~8_combout\ = (!\process_2~0_combout\ & (\estado.t5~regout\ & ((\Mux0~2_combout\) # (\endMem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \process_2~0_combout\,
	datac => \estado.t5~regout\,
	datad => \endMem[1]~0_combout\,
	combout => \Selector24~8_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Selector24~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~11_combout\ = (!\Selector24~10_combout\ & (!\estado.t7~regout\ & !\Selector24~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~10_combout\,
	datab => \estado.t7~regout\,
	datad => \Selector24~8_combout\,
	combout => \Selector24~11_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCFF_X19_Y12_N31
\estado.t0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector24~11_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t0~regout\);

-- Location: LCCOMB_X18_Y12_N0
\estado.t1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado.t1~0_combout\ = !\estado.t0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado.t0~regout\,
	combout => \estado.t1~0_combout\);

-- Location: LCFF_X19_Y12_N1
\estado.t1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t1~regout\);

-- Location: LCFF_X20_Y11_N9
\estado.t2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t1~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t2~regout\);

-- Location: LCFF_X20_Y11_N25
\estado.t3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t2~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t3~regout\);

-- Location: LCCOMB_X20_Y11_N26
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(5) & (\OPCODE|CON|q_temp\(7) & !\OPCODE|CON|q_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(5),
	datac => \OPCODE|CON|q_temp\(7),
	datad => \OPCODE|CON|q_temp\(4),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X20_Y11_N30
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Mux0~6_combout\ & (!\process_2~0_combout\ & (\estado.t3~regout\ & !\Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \process_2~0_combout\,
	datac => \estado.t3~regout\,
	datad => \Mux0~2_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X19_Y12_N12
\Selector37~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector0~3_combout\) # ((\Selector0~2_combout\) # ((\estado.t4~regout\) # (!\estado.t0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~2_combout\,
	datac => \estado.t4~regout\,
	datad => \estado.t0~regout\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X19_Y12_N2
\cargaNZ~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cargaNZ~2_combout\ = (!\estado.t4~regout\ & \estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t4~regout\,
	datad => \estado.t0~regout\,
	combout => \cargaNZ~2_combout\);

-- Location: LCCOMB_X19_Y12_N26
cargaAC : cycloneii_lcell_comb
-- Equation(s):
-- \cargaAC~combout\ = (\Selector37~2_combout\ & ((\cargaNZ~2_combout\))) # (!\Selector37~2_combout\ & (\cargaAC~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector37~2_combout\,
	datac => \cargaAC~combout\,
	datad => \cargaNZ~2_combout\,
	combout => \cargaAC~combout\);

-- Location: LCFF_X21_Y12_N5
\ACUMULADOR|CON|q_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \UAL|Mux5~2_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(2));

-- Location: LCCOMB_X25_Y12_N10
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\ACUMULADOR|CON|q_temp\(2) & \estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ACUMULADOR|CON|q_temp\(2),
	datad => \estado.t7~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X25_Y12_N20
\memIn[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(2) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector9~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(2),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \Selector9~0_combout\,
	combout => memIn(2));

-- Location: LCCOMB_X25_Y12_N18
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\ACUMULADOR|CON|q_temp\(3) & \estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACUMULADOR|CON|q_temp\(3),
	datad => \estado.t7~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X25_Y12_N16
\memIn[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(3) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector8~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memIn(3),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \Selector8~0_combout\,
	combout => memIn(3));

-- Location: LCCOMB_X25_Y12_N0
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\ACUMULADOR|CON|q_temp\(4) & \estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ACUMULADOR|CON|q_temp\(4),
	datad => \estado.t7~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X25_Y12_N8
\memIn[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(4) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector7~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memIn(4),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \Selector7~0_combout\,
	combout => memIn(4));

-- Location: LCCOMB_X25_Y12_N12
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\ACUMULADOR|CON|q_temp\(5) & \estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(5),
	datad => \estado.t7~regout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X25_Y12_N6
\memIn[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(5) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector6~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memIn(5),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \Selector6~0_combout\,
	combout => memIn(5));

-- Location: LCCOMB_X19_Y12_N20
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\estado.t7~regout\ & \ACUMULADOR|CON|q_temp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.t7~regout\,
	datad => \ACUMULADOR|CON|q_temp\(6),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X19_Y12_N8
\memIn[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(6) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector5~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => memIn(6),
	datac => \Selector5~0_combout\,
	datad => \Selector28~3clkctrl_outclk\,
	combout => memIn(6));

-- Location: LCCOMB_X26_Y12_N28
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\ACUMULADOR|CON|q_temp\(7) & \estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ACUMULADOR|CON|q_temp\(7),
	datad => \estado.t7~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X26_Y12_N22
\memIn[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(7) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector4~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(7),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \Selector4~0_combout\,
	combout => memIn(7));

-- Location: M4K_X23_Y12
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

-- Location: LCCOMB_X20_Y11_N18
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\estado.t2~regout\) # ((\estado.t3~regout\) # (!\estado.t0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t2~regout\,
	datab => \estado.t3~regout\,
	datad => \estado.t0~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X20_Y11_N24
cargaRI : cycloneii_lcell_comb
-- Equation(s):
-- \cargaRI~combout\ = (\WideOr1~0_combout\ & (\estado.t2~regout\)) # (!\WideOr1~0_combout\ & ((\cargaRI~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr1~0_combout\,
	datac => \estado.t2~regout\,
	datad => \cargaRI~combout\,
	combout => \cargaRI~combout\);

-- Location: LCFF_X20_Y12_N17
\OPCODE|CON|q_temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a6\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(6));

-- Location: LCCOMB_X19_Y12_N24
\Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (!\OPCODE|CON|q_temp\(7) & (\OPCODE|CON|q_temp\(5) $ (\OPCODE|CON|q_temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(6),
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X20_Y12_N8
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(5) & \OPCODE|CON|q_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(4),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X19_Y12_N16
\Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (!\Selector0~2_combout\ & (((\Mux0~0_combout\) # (!\Selector28~1_combout\)) # (!\estado.t7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t7~regout\,
	datab => \Selector28~1_combout\,
	datac => \Selector0~2_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector0~5_combout\);

-- Location: CLKCTRL_G6
\Selector0~5clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector0~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector0~5clkctrl_outclk\);

-- Location: LCCOMB_X20_Y12_N4
\selULA[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \selULA[1]~0_combout\ = (!\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(7) & \OPCODE|CON|q_temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OPCODE|CON|q_temp\(6),
	datac => \OPCODE|CON|q_temp\(7),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \selULA[1]~0_combout\);

-- Location: LCCOMB_X20_Y12_N10
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\selULA[1]~0_combout\ $ (!\Mux0~5_combout\)) # (!\estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t7~regout\,
	datac => \selULA[1]~0_combout\,
	datad => \Mux0~5_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X20_Y12_N26
\selULA[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- selULA(0) = (GLOBAL(\Selector0~5clkctrl_outclk\) & (selULA(0))) # (!GLOBAL(\Selector0~5clkctrl_outclk\) & ((\Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selULA(0),
	datac => \Selector0~5clkctrl_outclk\,
	datad => \Selector25~0_combout\,
	combout => selULA(0));

-- Location: LCCOMB_X21_Y12_N30
\UAL|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux6~0_combout\ = (selULA(2) & (((!selULA(0) & !selULA(1))) # (!\ACUMULADOR|CON|q_temp\(1)))) # (!selULA(2) & (selULA(0) $ (((!\ACUMULADOR|CON|q_temp\(1) & selULA(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(1),
	datab => selULA(0),
	datac => selULA(1),
	datad => selULA(2),
	combout => \UAL|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y12_N16
\UAL|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux6~1_combout\ = (selULA(2) & (((selULA(0)) # (selULA(1))))) # (!selULA(2) & ((\ACUMULADOR|CON|q_temp\(1) & ((selULA(1)))) # (!\ACUMULADOR|CON|q_temp\(1) & (selULA(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(1),
	datab => selULA(0),
	datac => selULA(1),
	datad => selULA(2),
	combout => \UAL|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y12_N26
\UAL|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UAL|Mux6~2_combout\ = (\UAL|Mux6~0_combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\ & (!\UAL|Mux6~1_combout\))) # (!\UAL|Mux6~0_combout\ & (((\UAL|Mux6~1_combout\) # (\UAL|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	datab => \UAL|Mux6~0_combout\,
	datac => \UAL|Mux6~1_combout\,
	datad => \UAL|Add0~2_combout\,
	combout => \UAL|Mux6~2_combout\);

-- Location: LCCOMB_X21_Y12_N12
\ACUMULADOR|CON|q_temp[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ACUMULADOR|CON|q_temp[1]~feeder_combout\ = \UAL|Mux6~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UAL|Mux6~2_combout\,
	combout => \ACUMULADOR|CON|q_temp[1]~feeder_combout\);

-- Location: LCFF_X21_Y12_N13
\ACUMULADOR|CON|q_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \ACUMULADOR|CON|q_temp[1]~feeder_combout\,
	ena => \cargaAC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ACUMULADOR|CON|q_temp\(1));

-- Location: LCCOMB_X25_Y12_N22
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\ACUMULADOR|CON|q_temp\(1) & \estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ACUMULADOR|CON|q_temp\(1),
	datad => \estado.t7~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\memIn[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(1) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector10~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(1),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \Selector10~0_combout\,
	combout => memIn(1));

-- Location: LCCOMB_X21_Y11_N20
\Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\OPCODE|CON|q_temp\(7) & (!\OPCODE|CON|q_temp\(6) & (\OPCODE|CON|q_temp\(4) & !\OPCODE|CON|q_temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(7),
	datab => \OPCODE|CON|q_temp\(6),
	datac => \OPCODE|CON|q_temp\(4),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X21_Y11_N16
\PROGRAM_COUNTER|count[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[0]~7_combout\ = (\Mux0~4_combout\ & (!\ACUMULADOR|CON|q_temp\(7))) # (!\Mux0~4_combout\ & (((!\NEGATIVOZERO|CON|q_temp\(1) & \Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(7),
	datab => \Mux0~4_combout\,
	datac => \NEGATIVOZERO|CON|q_temp\(1),
	datad => \Mux0~3_combout\,
	combout => \PROGRAM_COUNTER|count[0]~7_combout\);

-- Location: LCCOMB_X20_Y11_N8
\Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\estado.t3~regout\ & (!\Mux0~2_combout\ & !\process_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t3~regout\,
	datab => \Mux0~2_combout\,
	datad => \process_2~0_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X24_Y12_N28
\PROGRAM_COUNTER|count[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[0]~6_combout\ = (\estado.t1~regout\) # ((\cargaPC~combout\) # ((\process_2~0_combout\ & \estado.t4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \estado.t1~regout\,
	datac => \estado.t4~regout\,
	datad => \cargaPC~combout\,
	combout => \PROGRAM_COUNTER|count[0]~6_combout\);

-- Location: LCCOMB_X24_Y12_N30
\PROGRAM_COUNTER|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \PROGRAM_COUNTER|count[0]~8_combout\ = (\PROGRAM_COUNTER|count[0]~6_combout\) # ((\PROGRAM_COUNTER|count[0]~7_combout\ & \Selector0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count[0]~7_combout\,
	datac => \Selector0~4_combout\,
	datad => \PROGRAM_COUNTER|count[0]~6_combout\,
	combout => \PROGRAM_COUNTER|count[0]~8_combout\);

-- Location: LCFF_X24_Y12_N19
\PROGRAM_COUNTER|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[3]~13_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(3));

-- Location: LCCOMB_X20_Y11_N20
\Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\OPCODE|CON|q_temp\(6) & (\OPCODE|CON|q_temp\(5) & (!\OPCODE|CON|q_temp\(7) & !\OPCODE|CON|q_temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(5),
	datac => \OPCODE|CON|q_temp\(7),
	datad => \OPCODE|CON|q_temp\(4),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X21_Y11_N14
\Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\Mux0~4_combout\ & (\ACUMULADOR|CON|q_temp\(7))) # (!\Mux0~4_combout\ & (((\NEGATIVOZERO|CON|q_temp\(1) & \Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ACUMULADOR|CON|q_temp\(7),
	datab => \NEGATIVOZERO|CON|q_temp\(1),
	datac => \Mux0~4_combout\,
	datad => \Mux0~3_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X20_Y11_N28
\Selector33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~1_combout\ = (\process_2~0_combout\) # ((\Mux0~2_combout\) # ((!\Mux0~6_combout\ & \Selector32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_2~0_combout\,
	datab => \Mux0~6_combout\,
	datac => \Selector32~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \Selector33~1_combout\);

-- Location: LCCOMB_X20_Y11_N10
\Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\estado.t6~regout\) # (((\estado.t5~regout\ & \process_2~0_combout\)) # (!\cargaNZ~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t6~regout\,
	datab => \estado.t5~regout\,
	datac => \process_2~0_combout\,
	datad => \cargaNZ~2_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X20_Y11_N12
\Selector33~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\Selector33~0_combout\) # ((\Selector33~1_combout\ & \estado.t3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector33~1_combout\,
	datac => \estado.t3~regout\,
	datad => \Selector33~0_combout\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X25_Y12_N30
selMux : cycloneii_lcell_comb
-- Equation(s):
-- \selMux~combout\ = (\Selector33~2_combout\ & ((\estado.t5~regout\))) # (!\Selector33~2_combout\ & (\selMux~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selMux~combout\,
	datac => \estado.t5~regout\,
	datad => \Selector33~2_combout\,
	combout => \selMux~combout\);

-- Location: LCCOMB_X24_Y12_N10
\SELETOR|s[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[3]~3_combout\ = (\selMux~combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\))) # (!\selMux~combout\ & (\PROGRAM_COUNTER|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count\(3),
	datac => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a3\,
	datad => \selMux~combout\,
	combout => \SELETOR|s[3]~3_combout\);

-- Location: LCCOMB_X20_Y11_N22
\Selector32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (!\estado.hlt~regout\ & (!\estado.t2~regout\ & !\estado.t7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.hlt~regout\,
	datac => \estado.t2~regout\,
	datad => \estado.t7~regout\,
	combout => \Selector32~1_combout\);

-- Location: LCCOMB_X20_Y11_N2
\Selector32~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = ((\Mux0~2_combout\) # ((\Selector32~0_combout\ & !\Mux0~6_combout\))) # (!\estado.t3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datab => \Mux0~6_combout\,
	datac => \estado.t3~regout\,
	datad => \Mux0~2_combout\,
	combout => \Selector32~2_combout\);

-- Location: LCCOMB_X20_Y11_N6
\Selector32~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~3_combout\ = (\Selector32~1_combout\ & ((\process_2~0_combout\) # ((!\estado.t5~regout\ & \Selector32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t5~regout\,
	datab => \Selector32~1_combout\,
	datac => \Selector32~2_combout\,
	datad => \process_2~0_combout\,
	combout => \Selector32~3_combout\);

-- Location: LCCOMB_X19_Y12_N10
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\estado.t1~regout\) # ((\estado.t6~regout\) # (\estado.t4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t1~regout\,
	datac => \estado.t6~regout\,
	datad => \estado.t4~regout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X24_Y12_N24
cargaREM : cycloneii_lcell_comb
-- Equation(s):
-- \cargaREM~combout\ = (\Selector32~3_combout\ & ((!\WideOr6~0_combout\))) # (!\Selector32~3_combout\ & (\cargaREM~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector32~3_combout\,
	datac => \cargaREM~combout\,
	datad => \WideOr6~0_combout\,
	combout => \cargaREM~combout\);

-- Location: LCFF_X24_Y12_N11
\REGREM|CON|q_temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[3]~3_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(3));

-- Location: LCCOMB_X24_Y12_N6
\endMem[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(3) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\REGREM|CON|q_temp\(3)))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (endMem(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => endMem(3),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \REGREM|CON|q_temp\(3),
	combout => endMem(3));

-- Location: LCFF_X24_Y12_N17
\PROGRAM_COUNTER|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[2]~11_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(2));

-- Location: LCCOMB_X24_Y12_N0
\SELETOR|s[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[2]~2_combout\ = (\selMux~combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\))) # (!\selMux~combout\ & (\PROGRAM_COUNTER|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count\(2),
	datac => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a2\,
	datad => \selMux~combout\,
	combout => \SELETOR|s[2]~2_combout\);

-- Location: LCFF_X24_Y12_N1
\REGREM|CON|q_temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[2]~2_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(2));

-- Location: LCCOMB_X24_Y12_N8
\endMem[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(2) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\REGREM|CON|q_temp\(2)))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (endMem(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => endMem(2),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \REGREM|CON|q_temp\(2),
	combout => endMem(2));

-- Location: LCFF_X24_Y12_N15
\PROGRAM_COUNTER|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[1]~9_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(1));

-- Location: LCCOMB_X24_Y12_N22
\SELETOR|s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[1]~1_combout\ = (\selMux~combout\ & ((\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\))) # (!\selMux~combout\ & (\PROGRAM_COUNTER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROGRAM_COUNTER|count\(1),
	datac => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a1\,
	datad => \selMux~combout\,
	combout => \SELETOR|s[1]~1_combout\);

-- Location: LCFF_X24_Y12_N23
\REGREM|CON|q_temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[1]~1_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(1));

-- Location: LCCOMB_X24_Y12_N26
\endMem[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(1) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\REGREM|CON|q_temp\(1)))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (endMem(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => endMem(1),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \REGREM|CON|q_temp\(1),
	combout => endMem(1));

-- Location: LCFF_X20_Y12_N5
\OPCODE|CON|q_temp[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a7\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(7));

-- Location: LCCOMB_X19_Y11_N28
\proximoEstado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~0_combout\ = (\OPCODE|CON|q_temp\(4) & ((\OPCODE|CON|q_temp\(7)) # ((\OPCODE|CON|q_temp\(5) & \OPCODE|CON|q_temp\(6))))) # (!\OPCODE|CON|q_temp\(4) & (\OPCODE|CON|q_temp\(7) & ((\OPCODE|CON|q_temp\(5)) # (\OPCODE|CON|q_temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(4),
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(5),
	datad => \OPCODE|CON|q_temp\(6),
	combout => \proximoEstado~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\proximoEstado~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~2_combout\ = (\OPCODE|CON|q_temp\(4) & (\ACUMULADOR|CON|q_temp\(7))) # (!\OPCODE|CON|q_temp\(4) & ((\NEGATIVOZERO|CON|q_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(4),
	datac => \ACUMULADOR|CON|q_temp\(7),
	datad => \NEGATIVOZERO|CON|q_temp\(1),
	combout => \proximoEstado~2_combout\);

-- Location: LCCOMB_X21_Y11_N30
\proximoEstado~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~1_combout\ = (\OPCODE|CON|q_temp\(7) & ((\OPCODE|CON|q_temp\(6)) # (\OPCODE|CON|q_temp\(4) $ (!\OPCODE|CON|q_temp\(5))))) # (!\OPCODE|CON|q_temp\(7) & ((\OPCODE|CON|q_temp\(4)) # (\OPCODE|CON|q_temp\(6) $ (\OPCODE|CON|q_temp\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(7),
	datac => \OPCODE|CON|q_temp\(4),
	datad => \OPCODE|CON|q_temp\(5),
	combout => \proximoEstado~1_combout\);

-- Location: LCCOMB_X21_Y11_N18
\proximoEstado~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~3_combout\ = (\estado.t3~regout\ & ((\proximoEstado~2_combout\) # (\proximoEstado~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \proximoEstado~2_combout\,
	datac => \estado.t3~regout\,
	datad => \proximoEstado~1_combout\,
	combout => \proximoEstado~3_combout\);

-- Location: LCCOMB_X19_Y11_N30
\proximoEstado~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado~4_combout\ = (\proximoEstado~3_combout\ & ((\proximoEstado~0_combout\ & ((!\proximoEstado~1_combout\) # (!\Mux10~0_combout\))) # (!\proximoEstado~0_combout\ & ((\proximoEstado~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \proximoEstado~0_combout\,
	datac => \proximoEstado~3_combout\,
	datad => \proximoEstado~1_combout\,
	combout => \proximoEstado~4_combout\);

-- Location: LCFF_X19_Y12_N29
\estado.t4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \proximoEstado~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t4~regout\);

-- Location: LCFF_X25_Y12_N25
\estado.t5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t4~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t5~regout\);

-- Location: LCCOMB_X19_Y12_N18
\Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\estado.t6~regout\) # (!\estado.t0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t0~regout\,
	datad => \estado.t6~regout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X20_Y11_N0
\Selector34~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Selector34~0_combout\) # ((\endMem[1]~1_combout\ & (\estado.t5~regout\ & !\process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \endMem[1]~1_combout\,
	datab => \estado.t5~regout\,
	datac => \Selector34~0_combout\,
	datad => \process_2~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X24_Y12_N2
cargaPC : cycloneii_lcell_comb
-- Equation(s):
-- \cargaPC~combout\ = (\Selector34~1_combout\ & ((\estado.t5~regout\))) # (!\Selector34~1_combout\ & (\cargaPC~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cargaPC~combout\,
	datac => \Selector34~1_combout\,
	datad => \estado.t5~regout\,
	combout => \cargaPC~combout\);

-- Location: LCFF_X24_Y12_N13
\PROGRAM_COUNTER|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \PROGRAM_COUNTER|count[0]~4_combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	sload => \cargaPC~combout\,
	ena => \PROGRAM_COUNTER|count[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PROGRAM_COUNTER|count\(0));

-- Location: LCCOMB_X24_Y12_N4
\SELETOR|s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \SELETOR|s[0]~0_combout\ = (\selMux~combout\ & (\MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\)) # (!\selMux~combout\ & ((\PROGRAM_COUNTER|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \PROGRAM_COUNTER|count\(0),
	datad => \selMux~combout\,
	combout => \SELETOR|s[0]~0_combout\);

-- Location: LCFF_X24_Y12_N5
\REGREM|CON|q_temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \SELETOR|s[0]~0_combout\,
	ena => \cargaREM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REGREM|CON|q_temp\(0));

-- Location: LCCOMB_X24_Y12_N20
\endMem[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- endMem(0) = (GLOBAL(\Selector28~3clkctrl_outclk\) & (\REGREM|CON|q_temp\(0))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & ((endMem(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector28~3clkctrl_outclk\,
	datac => \REGREM|CON|q_temp\(0),
	datad => endMem(0),
	combout => endMem(0));

-- Location: LCFF_X20_Y12_N19
\OPCODE|CON|q_temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a4\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(4));

-- Location: LCCOMB_X20_Y12_N18
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\OPCODE|CON|q_temp\(6) & (\OPCODE|CON|q_temp\(5) & (!\OPCODE|CON|q_temp\(4) & !\OPCODE|CON|q_temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(5),
	datac => \OPCODE|CON|q_temp\(4),
	datad => \OPCODE|CON|q_temp\(7),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X19_Y12_N0
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\estado.t1~regout\) # ((\estado.t7~regout\ & \Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.t7~regout\,
	datac => \estado.t1~regout\,
	datad => \Mux0~0_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X19_Y12_N22
\Selector28~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\Selector28~0_combout\) # ((\Selector28~1_combout\ & (\estado.t6~regout\ & !\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector28~1_combout\,
	datab => \estado.t6~regout\,
	datac => \Mux0~1_combout\,
	datad => \Selector28~0_combout\,
	combout => \Selector28~2_combout\);

-- Location: LCCOMB_X20_Y11_N16
\endMem[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \endMem[1]~1_combout\ = (\endMem[1]~0_combout\) # (\Mux0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \endMem[1]~0_combout\,
	datad => \Mux0~2_combout\,
	combout => \endMem[1]~1_combout\);

-- Location: LCCOMB_X20_Y11_N4
\Selector28~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~3_combout\ = (\Selector28~2_combout\) # ((\estado.t4~regout\ & ((\endMem[1]~1_combout\) # (\process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t4~regout\,
	datab => \Selector28~2_combout\,
	datac => \endMem[1]~1_combout\,
	datad => \process_2~0_combout\,
	combout => \Selector28~3_combout\);

-- Location: CLKCTRL_G4
\Selector28~3clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector28~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector28~3clkctrl_outclk\);

-- Location: LCCOMB_X25_Y12_N28
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\ACUMULADOR|CON|q_temp\(0) & \estado.t7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ACUMULADOR|CON|q_temp\(0),
	datad => \estado.t7~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X25_Y12_N2
\memIn[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- memIn(0) = (GLOBAL(\Selector28~3clkctrl_outclk\) & ((\Selector11~0_combout\))) # (!GLOBAL(\Selector28~3clkctrl_outclk\) & (memIn(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => memIn(0),
	datac => \Selector28~3clkctrl_outclk\,
	datad => \Selector11~0_combout\,
	combout => memIn(0));

-- Location: LCFF_X20_Y12_N9
\OPCODE|CON|q_temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \MEMORIA|MEMORY_rtl_0|auto_generated|ram_block1a5\,
	sload => VCC,
	ena => \cargaRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \OPCODE|CON|q_temp\(5));

-- Location: LCCOMB_X20_Y11_N14
\process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_2~0_combout\ = (!\OPCODE|CON|q_temp\(7) & ((\OPCODE|CON|q_temp\(6) & (!\OPCODE|CON|q_temp\(5))) # (!\OPCODE|CON|q_temp\(6) & ((\OPCODE|CON|q_temp\(5)) # (\OPCODE|CON|q_temp\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OPCODE|CON|q_temp\(6),
	datab => \OPCODE|CON|q_temp\(5),
	datac => \OPCODE|CON|q_temp\(7),
	datad => \OPCODE|CON|q_temp\(4),
	combout => \process_2~0_combout\);

-- Location: LCCOMB_X19_Y12_N4
\proximoEstado.t6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \proximoEstado.t6~0_combout\ = (\estado.t5~regout\ & ((\process_2~0_combout\) # ((!\Mux0~2_combout\ & !\endMem[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.t5~regout\,
	datab => \process_2~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \endMem[1]~0_combout\,
	combout => \proximoEstado.t6~0_combout\);

-- Location: LCFF_X19_Y12_N5
\estado.t6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	datain => \proximoEstado.t6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t6~regout\);

-- Location: LCFF_X19_Y12_N21
\estado.t7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~combout\,
	sdata => \estado.t6~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado.t7~regout\);

-- Location: LCCOMB_X19_Y12_N14
rw : cycloneii_lcell_comb
-- Equation(s):
-- \rw~combout\ = (\Selector27~0_combout\ & ((\estado.t7~regout\))) # (!\Selector27~0_combout\ & (\rw~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector27~0_combout\,
	datab => \rw~combout\,
	datac => \estado.t7~regout\,
	combout => \rw~combout\);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


