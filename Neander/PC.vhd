Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY PC is
	port(
		clock 			: in std_logic;
		cargaPC 			: in std_logic;
		incrementaPC 	: in std_logic;
		reset				: in std_logic;
		entrada  		: in std_logic_vector(7 downto 0);
		saida 			: out std_logic_vector(7 downto 0)
	);
END PC;

ARCHITECTURE arc of PC is
BEGIN
	process (clock)
	variable count : std_logic_vector(7 downto 0);
	BEGIN
		if reset = '1' then
			count := "00000000";
		elsif clock'EVENT and clock = '1' then
			if cargaPC = '1' then
				count := entrada;
			elsif incrementaPC = '1' then
				count := count + 1;
			else
				count := count;
			end if;
		end if;
		saida <= count;
	end process;
END arc;