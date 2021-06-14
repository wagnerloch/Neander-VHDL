library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY Neander IS
	PORT(
		clock 			: in 		STD_LOGIC;
		reset				: in 		STD_LOGIC;
		saidaMemoria 	: out   	STD_LOGIC_VECTOR (7 downto 0);
		saidaAcumulador: out		STD_LOGIC_VECTOR (7 downto 0)
	);
END Neander;

ARCHITECTURE Arc OF Neander IS

-- Declaraçao de Sinais

SIGNAL ulaOut 		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL acOut		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL rdmOut		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL rdmIn		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL pcOut		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL muxOut		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL remOut		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL endMem		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL dadosMEM	: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL ramOut		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL opcodeout	: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL memIn		: STD_LOGIC_VECTOR(7 downto 0);
SIGNAL selULA		: STD_LOGIC_VECTOR(2 downto 0);
SIGNAL nzout		: STD_LOGIC_VECTOR(1 downto 0);
SIGNAL readSig		: STD_LOGIC;
SIGNAL writeSig	: STD_LOGIC;
SIGNAL cargaRDM	: STD_LOGIC;
SIGNAL cargaREM	: STD_LOGIC;
SIGNAL incPC		: STD_LOGIC;
SIGNAL selMux		: STD_LOGIC;
SIGNAL cargaPC		: STD_LOGIC;
SIGNAL cargaAC		: STD_LOGIC;
SIGNAL cargaNZ 	: STD_LOGIC;
SIGNAL cargaRI 	: STD_LOGIC;
SIGNAL negative	: STD_LOGIC;
SIGNAL zero			: STD_LOGIC;
SIGNAL rw			: STD_LOGIC;

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
		entrada  		: in std_logic_vector(7 downto 0);
		saida 			: out std_logic_vector(7 downto 0)
	);
END COMPONENT;

COMPONENT RAM PORT(		
		lerEscrever		: in std_logic;		
		clock				: in std_logic;
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
		Y					=> ramOut,
		saida				=> ulaOut,
		negativo 		=> negative,
		zero				=> zero
	);
	
	PROGRAM_COUNTER : PC PORT MAP (
		clock				=> clock,
		cargaPC			=> cargaPC,
		incrementaPC	=> incPC,
		entrada			=> ramOut,
		saida				=> pcOut
	);
	
	SELETOR : MUX21 PORT MAP (
		a					=> pcOut,
		b					=> ramOut,
		sel				=> selMux,
		s					=> muxOut
	);
	
	REGREM : REMReg PORT MAP (
		clock				=> clock,
		cargaREM			=> cargaREM,
		entrada			=> muxOut,
		saida				=> remOut
	);
	
	MEMORIA : RAM PORT MAP (
		lerEscrever		=> rw,
		clock				=> clock,
		entrada			=> memIn,
		endereco			=> endMem,
		saida				=> ramOut
	);
	
	REGRDM : RDM PORT MAP (
		clock				=> clock,
		cargaRDM			=> cargaRDM,
		entrada			=> rdmIn,
		saida				=> rdmOut
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
		entrada  		=> ramOut,
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
	
	PROCESS (cargaAC, cargaNZ, cargaRI, cargaPC, incPC, selMux, cargaREM, cargaRDM, rw) BEGIN
		CASE estado IS
			
			when t0 =>
				cargaAC 				<= '0';
				cargaNZ 				<= '0';
				cargaRI 				<= '0';
				cargaPC 				<= '0';
				incPC   				<= '0';
				selMux  				<= '0';
				cargaREM				<= '1';
				cargaRDM				<= '0';
				rw						<= '0';
				proximoEstado		<= t1;
				
			when t1 =>
				cargaREM				<= '0';
				memIn					<= rdmOut;
				endMem				<= remOut;
				incPC					<= '1';
				proximoEstado		<= t2;
				
			when t2 =>
				incPC					<= '0';
				cargaRI				<= '1';
				proximoEstado		<= t3;
				
			when t3 =>
				incPC					<= '0';
				cargaRI				<= '0';
				IF (instrucao = STA OR instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP OR instrucao = JMP) THEN
					selMux			<= '0';
					cargaREM			<= '1';
					proximoEstado	<= t4;
				ELSIF (instrucao = NOTOP) THEN
					selULA			<= "011";
					cargaAC			<= '1';
					cargaNZ			<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = JN AND nzout(0) = '0') THEN
					incPC				<= '1';
					proximoEstado 	<= t0;
				ELSIF (instrucao = JN AND nzout(0) = '1') THEN
					selMux			<= '0';
					cargaREM			<= '1';
					proximoEstado	<= t4;
				ELSIF (instrucao = JZ AND nzout(1) = '0') THEN
					incPC				<= '1';
					proximoEstado	<= t0;
				ELSIF (instrucao = JZ AND nzout(1) = '1') THEN
					selMux			<= '0';
					cargaREM			<= '1';
					proximoEstado	<= t4;
				ELSIF (instrucao = NOP) THEN
					proximoEstado	<= t0;
				ELSIF (instrucao = HLT) THEN
					incPC				<= '0';
					proximoEstado	<= hlt;
				ELSE
					proximoEstado <= t4;
				END IF;
				
			when t4 =>
				selMux				<= '0';
				incPC					<= '0';
				cargaAC				<= '0';
				cargaNZ				<= '0';
				cargaREM				<= '0';
				IF (instrucao = STA OR instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP) THEN
					memIn				<= rdmOut;
					endMem			<= remOut;
					incPC				<= '1';
					proximoEstado	<= t5;
				ELSIF (instrucao = JMP) THEN
					memIn				<= rdmOut;
					endMem			<= remOut;
					proximoEstado	<= t5;
				ELSIF (instrucao = JN AND nzout(0) = '1') THEN
					memIn				<= rdmOut;
					endMem			<= remOut;
					proximoEstado	<= t5;
				ELSIF (instrucao = JZ AND nzout(1) = '1') THEN
					memIn				<= rdmOut;
					endMem			<= remOut;
					proximoEstado	<= t5;
				ELSE
					proximoEstado	<= t5;
				END IF;
				
			when t5 =>
				incPC					<= '0';
				IF (instrucao = STA OR instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP) THEN
					selMux			<= '1';
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
				incPC					<= '0';
				selMux				<= '0';
				cargaREM				<= '0';
				cargaPC				<= '0';
				IF (instrucao = LDA) THEN
					cargaRDM			<= '1';
					proximoEstado	<= t7;
				ELSIF (instrucao = LDA OR instrucao = ADD OR instrucao = OROP OR instrucao = ANDOP) THEN
					memIn				<= rdmOut;
					endMem			<= remOut;
					proximoEstado	<= t7;
				ELSE
					proximoEstado	<= t7;
				END IF;
			
			when t7 =>
				cargaRDM				<= '0';
				incPC					<= '0';
				IF (instrucao = STA) THEN
					memIn				<= acOut;
					endMem			<= remOut;
					rw					<= '1';
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
				incPC					<= '0';
				proximoEstado		<= hlt;				
			
		END CASE;
	END PROCESS;
		
	saidaMemoria 		<= ramOut;
	saidaAcumulador 	<= acOut;
END Arc;
