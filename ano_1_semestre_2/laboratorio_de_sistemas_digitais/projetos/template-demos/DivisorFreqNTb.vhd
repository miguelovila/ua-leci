library ieee; 
use ieee.std_logic_1164.all;

entity divisorfreqntb is
end divisorfreqntb;

architecture stimulus of divisorfreqntb is
	signal s_entradaclock, s_saidaclock : std_logic;
begin
	uut   : entity work.divisorfreqn(behavioral)
			  port map(entradaclock  => s_entradaclock,
						  saidaclock    => s_saidaclock  );
	process is
	begin
		s_entradaclock <= '0'; wait for 10 ns;
		s_entradaclock <= '1'; wait for 10 ns;
	end process;
end stimulus;