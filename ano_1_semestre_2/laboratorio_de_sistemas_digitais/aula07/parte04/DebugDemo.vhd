library ieee;
use ieee.std_logic_1164.all;

entity debugdemo is
	port(clock_50 : in std_logic;
	     sw : in std_logic_vector(1 downto 0);
		  ledr : out std_logic_vector(17 downto 0));
end debugdemo;

architecture shell of debugdemo is
begin
	system_core : entity work.cntup(behavioral)
					  port map(clk => clock_50,
					           reset => sw(0),
								  enable => sw(1),
								  cntval(29 downto 12) => ledr);
end shell;