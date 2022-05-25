library ieee; 
use ieee.std_logic_1164.all;

entity freqdividertb is
end freqdividertb;

architecture stimulus of freqdividertb is
	-- sinais de entrada e saida uut
	signal s_clkin, s_clkout : std_logic;
begin
	-- instanciação da uut
	uut : entity work.freqdivider(behavioral)
			port map(clock_in  => s_clkin,
						clock_out => s_clkout);
	-- process clock
	process
	begin
		s_clkin <= '0'; wait for 10 ns;
		s_clkin <= '1'; wait for 10 ns;
	end process;
end stimulus;