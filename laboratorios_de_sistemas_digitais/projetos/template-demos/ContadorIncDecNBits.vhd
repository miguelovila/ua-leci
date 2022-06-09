library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

/*
incrementador/decrementador que, por defeito de 4bits
*/

entity contadorincdecnbits is
   generic (n            : positive := 4);
	port    (resetar      : in std_logic := '0';
			   incdec       : in std_logic := '0' ;
			   entradaclock : in std_logic;
			   contagem     : out std_logic_vector((n-1) downto 0));
end contadorincdecnbits;

architecture behavioral of contadorincdecnbits is
	signal s_contagem : unsigned((n-1) downto 0) := (others => '0');
begin
	process(entradaclock)
	begin
		if (rising_edge(entradaclock)) then
			if (resetar = '1') then
				s_contagem <= (others => '0');
			else
				if (incdec = '0') then
					s_contagem <= s_contagem + 1;
				else
					s_contagem <= s_contagem - 1;
				end if;
			end if;
		end if;
	end process;
	contagem <= std_logic_vector(s_contagem);
end behavioral;