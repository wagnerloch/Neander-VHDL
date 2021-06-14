Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY RAM IS
	PORT(		
		lerEscrever		: in std_logic;		
		clock				: in std_logic;
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
				IF clock'EVENT and clock = '1' THEN
					IF lerEscrever = '1' THEN --escrever na memória
						MEMORY(ADDR) <= entrada;
					ELSIF lerEscrever = '0' THEN --ler da memória
						saida <= MEMORY(ADDR);
					ELSE
						saida <= "ZZZZZZZZ";
					END IF;
				END IF;
			END PROCESS;
END arc;