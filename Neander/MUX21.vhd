LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_signed.ALL;

ENTITY MUX21 IS
	PORT (
		a: 	in std_logic_vector(7 downto 0);
		b: 	in std_logic_vector(7 downto 0);
		sel: 	in std_logic;
		s: 	out std_logic_vector(7 downto 0)
	);
end MUX21;

ARCHITECTURE arq_Mux21 of MUX21 is
BEGIN
	with sel select
		s <= 
			a when '0',
			b when '1';
END arq_Mux21;
		