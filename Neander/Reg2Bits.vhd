Library IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;

ENTITY Reg2Bits is
	port(
		clock : in std_logic;
		carga : in std_logic;
		clear : in std_logic;
		dado  : in std_logic_vector(1 downto 0);
		saida : out std_logic_vector(1 downto 0)
	);
END Reg2Bits;

ARCHITECTURE arc of Reg2Bits is

signal q_temp : std_logic_vector(1 downto 0);

begin
	PROCESS(clock, carga) begin
		if clear = '1' THEN
			q_temp <= (others=>'0');
		elsif clock'EVENT and clock='1' THEN
			if carga = '1' THEN
				q_temp <= dado;
			else
				q_temp <= q_temp;
			end if;
		end if;
	end PROCESS;
	saida <= q_temp;
end arc;