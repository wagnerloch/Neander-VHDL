Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY RAM IS
	PORT(		
		clock				: in std_logic;
		ler				: in std_logic;
		escrever			: in std_logic;
		reset				: in std_logic;
		entrada			: in std_logic_vector(7 downto 0);
		endereco 		: in std_logic_vector(7 downto 0);
		saida				: out std_logic_vector(7 downto 0)
	);
END ENTITY;

ARCHITECTURE arc OF RAM IS
	TYPE MEM IS ARRAY (15 downto 0) OF std_logic_vector (7 downto 0);
	SIGNAL MEMORY : MEM;
	SIGNAL ADDR : INTEGER RANGE 0 TO 15;
	BEGIN
		PROCESS (clock)
			BEGIN
				ADDR <= CONV_INTEGER(endereco);
				IF reset = '1' THEN
					--CARREGA O PROGRAMA 1
					MEMORY(0)	<= "00100000"; --LDA				Carrega o endereço
					MEMORY(1)	<= "00001011"; --11				11 (que tem o valor 10)
					MEMORY(2)	<= "00110000"; --ADD				Somando com o endereço
					MEMORY(3)	<= "00001101"; --13				13 (que tem o valor 7)
					MEMORY(4)	<= "00010000"; --STA				Armazena o resultado no endereço
					MEMORY(5)	<= "00001100"; --12				12
					MEMORY(6)	<= "00100000"; --LDA				Carrega o valor do endereço
					MEMORY(7)	<= "00001110"; --14				14 (tem o valor -1)
					MEMORY(8)	<= "00110000"; --ADD				Soma com o valor do endereço
					MEMORY(9)	<= "00001100"; --12				12 (armazenado anteriormente)
					MEMORY(10)	<= "11110000"; --HLT				Finaliza a execução
					MEMORY(11) 	<= "00001010"; --10				ACUMULADOR DEVE ESTAR COM 16 NO FINAL DA EXECUÇAO
					MEMORY(13)  <= "00000111"; --7
					MEMORY(14)	<= "11111111"; -- -1

					
					--CARREGA O PROGRAMA 2
--					MEMORY(0)	<= "00100000"; --LDA				Carrega o endereço
--					MEMORY(1)	<= "00001011"; --11				11 (valor 5)
--					MEMORY(2)	<= "00110000"; --ADD				Soma com o valor do endereço
--					MEMORY(3)	<= "00001110"; --14				14 (valor -1)
--					MEMORY(4)	<= "10100000"; --JZ				Se o resultado for zero pula para o endereço
--					MEMORY(5)	<= "00001000"; --8				8, senão continua a execução
--					MEMORY(6)	<= "10000000"; --JMP				Pula de forma incondicional para o endereço
--					MEMORY(7)	<= "00000010"; --2				2
--					MEMORY(8)	<= "00100000"; --LDA				Carrega o valor do endereço 
--					MEMORY(9)	<= "00001101"; --13				13 para o acumulador
--					MEMORY(10)	<= "11110000"; --HLT				Finaliza a execução
--					MEMORY(11) 	<= "00000101"; --5				ACUMULADOR DEVE ESTAR COM 95 NO FINAL DA EXECUÇAO
--					MEMORY(13)  <= "01011111"; --95
--					MEMORY(14)	<= "11111111"; -- -1
					
					--CARREGA O PROGRAMA 3
--					MEMORY(0)	<= "00100000"; --LDA				Carrega o endereço
--					MEMORY(1)	<= "00001011"; --11				11 (valor -3)
--					MEMORY(2)	<= "00110000"; --ADD				Soma com o valor do endereço
--					MEMORY(3)	<= "00001110"; --14				14 (valor 1)
--					MEMORY(4)	<= "10010000"; --JN				Se o resultado for negativo pula para o endereço
--					MEMORY(5)	<= "00000010"; --2				2, senão continua a execução
--					MEMORY(6)	<= "00110000"; --ADD				Soma com o valor do endereço
--					MEMORY(7)	<= "00001101"; --13				13 (50)
--					MEMORY(8)	<= "00000000"; --NOP				Operaçao NOP
--					MEMORY(9)	<= "11110000"; --HLT				Finaliza a execução
--					MEMORY(11) 	<= "11111101"; -- -3				ACUMULADOR DEVE ESTAR COM 50 NO FINAL DA EXECUÇAO
--					MEMORY(13)  <= "00110010"; --50
--					MEMORY(14)	<= "00000001"; -- 1
					
				ELSIF clock'EVENT and clock = '1' THEN
					IF escrever = '1' THEN --escrever na memória
						MEMORY(ADDR) <= entrada;
					ELSIF ler = '1' THEN --ler da memória
						saida <= MEMORY(ADDR);
					ELSE
						saida <= "ZZZZZZZZ";
					END IF;
				END IF;
			END PROCESS;
END arc;