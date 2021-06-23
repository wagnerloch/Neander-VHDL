library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY Neander IS
	PORT(
		clock 			: in 		STD_LOGIC;
		reset				: in 		STD_LOGIC;
		acumuladorOut	: out		STD_LOGIC_VECTOR (7 downto 0);		
		estadoAtual		: out		STD_LOGIC_VECTOR (3 downto 0)
	);
END Neander;

ARCHITECTURE Arc OF Neander IS

-- Declaraçao de Sinais

SIGNAL ulaOut				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL acOut				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL rdmOut				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL pcOut				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL muxOut				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL remOut				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL memIn				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL opcodeout			: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL memOut				: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL selULA				: STD_LOGIC_VECTOR(2 downto 0);
SIGNAL nzout				: STD_LOGIC_VECTOR(1 downto 0);
SIGNAL cargaAC				: STD_LOGIC;
SIGNAL cargaNZ 			: STD_LOGIC;
SIGNAL incrementaPC		: STD_LOGIC;
SIGNAL cargaPC				: STD_LOGIC;
SIGNAL sel					: STD_LOGIC;
SIGNAL cargaREM			: STD_LOGIC;
SIGNAL cargaRDM			: STD_LOGIC;
SIGNAL cargaRI 			: STD_LOGIC;
SIGNAL readSignal			: STD_LOGIC;
SIGNAL writeSignal		: STD_LOGIC;
SIGNAL negative			: STD_LOGIC;
SIGNAL zero					: STD_LOGIC;

-- Declaraçao de Estados e Instruções

TYPE T_STATE IS (t0, t1, t2, t3, t4, t5, t6, t7, hlt); 
SIGNAL estado, proximoEstado : T_STATE;
TYPE instrucoes IS (NOP,STA,LDA,ADD,OROP,ANDOP,NOTOP,JMP,JN,JZ,HLT);
SIGNAL instrucao : instrucoes;

-- Declaraçao de Componentes

COMPONENT ACC PORT(
		clock 			: in std_logic;
		cargaAC 			: in std_logic;
		entrada  		: in std_logic_vector(7 downto 0);
		saida 			: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT INST PORT(
		clock 			: in std_logic;
		cargaRI			: in std_logic;
		entrada  		: in std_logic_vector(7 downto 0);
		saida 			: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT MUX21 PORT (
		a					: in std_logic_vector(7 downto 0);
		b					: in std_logic_vector(7 downto 0);
		sel				: in std_logic;
		s					: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT NZ PORT(
		clock 			: in std_logic;
		cargaNZ			: in std_logic;
		N  				: in std_logic;
		Z					: in std_logic;
		saida 			: out std_logic_vector(1 downto 0)
	);
END COMPONENT;

COMPONENT PC PORT(
		clock 			: in std_logic;
		cargaPC 			: in std_logic;
		incrementaPC 	: in std_logic;
		reset				: in std_logic;
		entrada  		: in std_logic_vector(7 downto 0);
		saida 			: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT RAM PORT(		
		ler				: in std_logic;	
		escrever			: in std_logic;
		clock				: in std_logic;
		reset				: in std_logic;
		entrada			: in std_logic_vector(7 downto 0);
		endereco 		: in std_logic_vector(7 downto 0);
		saida				: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT RDM PORT(
		clock 			: in std_logic;
		cargaRDM			: in std_logic;
		entrada  		: in std_logic_vector(7 downto 0);
		saida 			: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT REMReg PORT(
		clock 			: in std_logic;
		cargaREM			: in std_logic;
		entrada  		: in std_logic_vector(7 downto 0);
		saida 			: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT ULA PORT (
		selUAL			: in std_logic_vector (2 downto 0);
		X					: in std_logic_vector (7 downto 0);
		Y					: in std_logic_vector (7 downto 0);
		saida 			: out std_logic_vector(7 downto 0);
		negativo			: out std_logic;
		zero				: out std_logic
	);
END COMPONENT;

BEGIN	

	ACUMULADOR : ACC PORT MAP (
		clock 			=> clock,
		cargaAC			=> cargaAC,
		entrada			=> ulaOut,
		saida				=> acOut
	);
	
	UAL : ULA PORT MAP (
		selUAL			=> selULA,
		X					=> acOut,
		Y					=> memOut,
		saida				=> ulaOut,
		negativo 		=> negative,
		zero				=> zero
	);
	
	PROGRAM_COUNTER : PC PORT MAP (
		clock				=> clock,
		cargaPC			=> cargaPC,
		incrementaPC	=> incrementaPC,
		reset				=> reset,
		entrada			=> memOut,
		saida				=> pcOut
	);
	
	SELETOR : MUX21 PORT MAP (
		a					=> pcOut,
		b					=> memOut,
		sel				=> sel,
		s					=> muxOut
	);
	
	REGREM : REMReg PORT MAP (
		clock				=> clock,
		cargaREM			=> cargaREM,
		entrada			=> muxOut,
		saida				=> remOut
	);
	
	MEMORIA : RAM PORT MAP (
		ler				=> readSignal,
		escrever			=> writeSignal,
		clock				=> clock,
		reset				=> reset,
		entrada			=> memIn,
		endereco			=> remOut,
		saida				=> memOut
	);
	
	REGRDM : RDM PORT MAP (
		clock				=> clock,
		cargaRDM			=> cargaRDM,
		entrada			=> acOut,
		saida				=> memIn
	);
	
	NEGATIVOZERO : NZ PORT MAP (
		clock 			=> clock,	
		cargaNZ			=> cargaNZ,
		N  				=> negative,
		Z					=> zero,
		saida 			=> nzOut
	);
	
	OPCODE : INST PORT MAP (
		clock				=> clock, 	
		cargaRI			=> cargaRI,
		entrada  		=> memOut,
		saida 			=> opcodeout
	);
	
	-- Decodificador
	PROCESS (opcodeout) BEGIN  
		CASE  opcodeout(7 downto 4) IS
			
			when "0000"	=> instrucao <= NOP;
			when "0001" => instrucao <= STA;
			when "0010" => instrucao <= LDA;
			when "0011" => instrucao <= ADD;
			when "0100" => instrucao <= OROP;
			when "0101" => instrucao <= ANDOP;
			when "0110" => instrucao <= NOTOP;
			when "1000" => instrucao <= JMP;
			when "1001" => instrucao <= JN;
			when "1010" => instrucao <= JZ;
			when others => instrucao <= HLT;
				 
		END CASE;
	end process;
	
	
	--Unidade de Controle
	
	PROCESS (clock, reset) BEGIN
		IF (reset = '1') THEN
			estado <= t0;
		ELSIF (clock'EVENT AND clock = '1') THEN
			estado <= proximoEstado;
		END IF;
	END PROCESS;
	
	PROCESS (cargaAC, cargaNZ, cargaRI, cargaPC, incrementaPC, sel, cargaREM, cargaRDM, estado, readSignal, writeSignal, instrucao) BEGIN
		CASE estado IS
			
			when t0 =>
				estadoAtual			<= "0000";
				cargaAC 				<= '0';
				cargaNZ 				<= '0';
				cargaRI 				<= '0';
				cargaPC 				<= '0';
				incrementaPC 		<= '0';
				sel	  				<= '0';
				cargaREM				<= '1';
				cargaRDM				<= '0';
				readSignal			<= '0';
				writeSignal			<= '0';
				writeSignal			<= '0';
				proximoEstado		<= t1;
				
			when t1 =>
				estadoAtual			<= "0001";
				cargaREM				<= '0';
				incrementaPC		<= '1';
				readSignal			<= '1';
				proximoEstado		<= t2;
				
			when t2 =>
				estadoAtual			<= "0010";
				readSignal			<= '0';
				incrementaPC		<= '0';
				cargaRI				<= '1';
				proximoEstado		<= t3;
				
			when t3 =>
				estadoAtual			<= "0011";
				cargaRI				<= '0';
				IF (instrucao = STA OR instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP OR instrucao = JMP) THEN
					cargaREM			<= '1';
					sel				<= '0';
					proximoEstado	<= t4;
				ELSIF (instrucao = NOTOP) THEN
					selULA			<= "011";
					cargaAC			<= '1';
					cargaNZ			<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = JN AND nzout(0) = '0') THEN --Positivo
					incrementaPC	<= '1';
					proximoEstado 	<= t0;
				ELSIF (instrucao = JN AND nzout(0) = '1') THEN --Negativo
					sel				<= '0';
					cargaREM			<= '1';
					proximoEstado	<= t4;
				ELSIF (instrucao = JZ AND nzout(1) = '0') THEN --Diferente de Zero
					incrementaPC	<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = JZ AND nzout(1) = '1') THEN --Zero
					sel				<= '0';
					cargaREM			<= '1';
					proximoEstado	<= t4;
				ELSIF (instrucao = NOP) THEN
					proximoEstado	<= t0;
				ELSIF (instrucao = HLT) THEN
					proximoEstado	<= hlt;
				ELSE
					proximoEstado <= t4;
				END IF;
				
			when t4 =>
				estadoAtual			<= "0100";
				cargaREM				<= '0';
				sel					<= '0';
				incrementaPC		<= '0';
				cargaAC				<= '0';
				cargaNZ				<= '0';
				IF (instrucao = STA OR instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP) THEN
					readSignal		<= '1';
					incrementaPC	<= '1';
					proximoEstado	<= t5;
				ELSIF (instrucao = JMP) THEN
					readSignal		<= '1';
					proximoEstado	<= t5;
				ELSIF (instrucao = JN AND nzout(0) = '1') THEN
					readSignal		<= '1';
					proximoEstado	<= t5;
				ELSIF (instrucao = JZ AND nzout(1) = '1') THEN
					readSignal		<= '1';
					proximoEstado	<= t5;
				ELSE
					proximoEstado	<= t5;
				END IF;
				
			when t5 =>
				estadoAtual			<= "0101";
				readSignal			<= '0';
				incrementaPC		<= '0';
				IF (instrucao = STA OR instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP) THEN
					sel				<= '1';
					cargaREM			<= '1';
					proximoEstado	<= t6;
				ELSIF (instrucao = JMP) THEN
					cargaPC			<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = JN AND nzout(0) = '1') THEN
					cargaPC			<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = JZ AND nzout(1) = '1') THEN
					cargaPC			<= '1';
					proximoEstado	<= t0;
				ELSE
					proximoEstado	<= t6;
				END IF;
				
			when t6 =>
				estadoAtual			<= "0110";
				sel					<= '0';
				cargaREM				<= '0';
				IF (instrucao = STA) THEN
					cargaRDM			<= '1';
					proximoEstado	<= t7;
				ELSIF (instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP) THEN
					readSignal		<= '1'; --Ler da memória
					proximoEstado	<= t7;
				ELSE
					proximoEstado	<= t7;
				END IF;
			
			when t7 =>
				estadoAtual			<= "0111";
				readSignal			<= '0';
				cargaRDM				<= '0';
				IF (instrucao = STA) THEN
					writeSignal		<= '1'; --escrever na Memória
					proximoEstado	<= t0;
				ELSIF (instrucao = LDA) THEN
					selULA			<= "100";
					cargaAC			<= '1';					
					cargaNZ			<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = ADD) THEN
					selULA			<= "000";
					cargaAC			<= '1';
					cargaNZ			<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = OROP) THEN
					selULA			<= "010";
					cargaAC			<= '1';
					cargaNZ			<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = ANDOP) THEN
					selULA			<= "001";
					cargaAC			<= '1';
					cargaNZ			<= '1';
					proximoEstado	<= t0;
				ELSE
					proximoEstado 	<= t0;
				END IF;
				
			when hlt =>
				estadoAtual			<= "1111";
				incrementaPC		<= '0';
				proximoEstado		<= hlt;				
			
		END CASE;
	END PROCESS;
		
	acumuladorOut			<= acOut;
END Arc;
