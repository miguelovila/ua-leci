library ieee;
use ieee.std_logic_1164.all;

entity debouncerunittb is
end debouncerunittb;

architecture stimulus of debouncerunittb is
	signal s_50mhzclock, s_entradanaotratada, s_sinaltratado: std_logic;
begin
	uut   : entity work.debouncerunit(behavioral)
			  port map(refclk  => s_50mhzclock,
						  dirtyin  => s_entradanaotratada,
						  pulsedout       => s_sinaltratado);
						  
	clock : process is
	begin
		s_50mhzclock <= '0'; wait for 10 ns;
		s_50mhzclock <= '1'; wait for 10 ns;
	end process;
	
	sinal : process is
	begin
		s_entradanaotratada <= '0'; wait for 1000 ns;
		s_entradanaotratada <= '1'; wait for 1000 ns;
		s_entradanaotratada <= '0'; wait for 1000 ns;
		s_entradanaotratada <= '1'; wait for 1000 ns;
		s_entradanaotratada <= '0'; wait for 1000 ns;
		s_entradanaotratada <= '1'; wait for 1000 ns;
		s_entradanaotratada <= '0';
	end process;
end stimulus;