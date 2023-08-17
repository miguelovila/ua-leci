library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

/*
gerador de pulsos que, por defeito, quando o clock recebido
tem frequenci 50MHz gera um impulso de frequencia 2Hz
*/

entity geradorpulsosn is
    generic(iteracoes : positive := 25_000_000);
	 port(entradaclock   : in  std_logic;
	      resetar : in  std_logic := '0';
			saidasinal : out std_logic := '0');
end geradorpulsosn;

architecture behavioral of geradorpulsosn is
    signal s_contador : natural range 0 to iteracoes-1;
begin
    count_proc : process(entradaclock)
	 begin
	     if (rising_edge(entradaclock)) then
		      if (resetar = '1') or (s_contador >= iteracoes-1) then
				    s_contador <= 0;
			   else
				    s_contador <= s_contador + 1;
				end if;
				
				if (s_contador >= (iteracoes/2)) then
				    saidasinal <= '1';
			   else
				    saidasinal <= '0';
			   end if;
		   end if;
    end process;
end behavioral;