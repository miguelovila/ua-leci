library ieee;
use ieee.std_logic_1164.all;

entity flipflopd_demo is
	port(sw   : in  std_logic_vector(2 downto 0);
		  key  : in  std_logic_vector(0 downto 0);
		  ledr : out std_logic_vector(0 downto 0));
end flipflopd_demo;
		  
architecture shell of flipflopd_demo is
begin
	ff_d : entity work.flipflopd(behavioral)
	port map(clk => key(0),
            d => sw(0),
				set => sw(1),
				reset => sw(2),
				q => ledr(0));
end shell;