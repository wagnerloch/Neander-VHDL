Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY NZ is
	port(
		clock 	: in std_logic;
		cargaNZ	: in std_logic;
		N  		: in std_logic;
		Z			: in std_logic;
		saida 	: out std_logic_vector(1 downto 0)
	);
END NZ;

ARCHITECTURE arc of NZ is
	COMPONENT Reg2Bits
		port(
			clock : in std_logic;
			carga : in std_logic;
			dado  : in std_logic_vector(1 downto 0);
			saida : out std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	BEGIN
		CON: Reg2Bits port map (
			clock 	=> clock,
			carga 	=> cargaNZ,
			dado(0)  => N,
			dado(1)	=> Z,
			saida 	=> saida
		);
		
END arc;