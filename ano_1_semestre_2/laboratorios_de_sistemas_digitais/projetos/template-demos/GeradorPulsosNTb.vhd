library ieee; 
use ieee.std_logic_1164.all;

entity geradorpulsosntb is
end geradorpulsosntb;

architecture stimulus of geradorpulsosntb is
	signal s_entradaclock, s_saida : std_logic;
begin
	uut   : entity work.geradorpulsosn(behavioral)
			  port map(entradaclock  => s_entradaclock,
						  saidasinal    => s_saida  );
	process is
	begin
		s_entradaclock <= '0'; wait for 10 ns;
		s_entradaclock <= '1'; wait for 10 ns;
	end process;
end stimulus;