Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY INST is
	port(
		clock 	: in std_logic;
		cargaRI	: in std_logic;
		entrada  : in std_logic_vector(7 downto 0);
		saida 	: out std_logic_vector(7 downto 0)
	);
END INST;

ARCHITECTURE arc of INST is
	COMPONENT Reg8Bits
		port(
			clock : in std_logic;
			carga : in std_logic;
			dado  : in std_logic_vector(7 downto 0);
			saida : out std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	BEGIN
		CON: Reg8Bits port map (
			clock => clock,
			carga => cargaRI,
			dado  => entrada,
			saida => saida
		);
		
END arc;