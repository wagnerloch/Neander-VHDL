LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_signed.ALL;

ENTITY ULA IS
	PORT (
		selUAL	: in std_logic_vector (2 downto 0);
		X			: in std_logic_vector (7 downto 0);
		Y			: in std_logic_vector (7 downto 0);
		saida 	: out std_logic_vector(7 downto 0);
		negativo	: out std_logic;
		zero		: out std_logic
	);
END ULA;

ARCHITECTURE ULA_ARQ of ULA is

signal sig_saida : std_logic_vector (7 downto 0);

BEGIN	
	process(selUAL, X, Y)
		begin
			case selUAL is
				when "000"  => sig_saida <= X+Y;
				when "001"  => sig_saida <= not(X nand Y);
				when "010"  => sig_saida <= not(X nor Y);
				when "011"  => sig_saida <= not(X);
				when "100" 	=> sig_saida <= Y;
				when others => sig_saida <= X;
			end case;
			
			if signed(sig_saida) < 0 then
				negativo <= '1';
			else
				negativo <= '0';
			end if;
			
			if sig_saida = 0 then
				zero <= '1';
			else
				zero <= '0';
			end if;
		end process;
		
	saida <= sig_saida;
	
END ULA_ARQ;