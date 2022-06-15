library ieee;
use ieee.std_logic_1164.all;

entity regn is
	generic (n       : positive := 4);
	port 	  (reset   : in std_logic; 
				enable  : in std_logic;
				clock   : in std_logic;
				datain  : in  std_logic_vector((n-1) downto 0);
				dataout : out std_logic_vector((n-1) downto 0));
end regn;

architecture behavioral of regn is
begin
	process(clock, reset)
	begin
		if (reset = '1') then
			dataout <= (others => '0');
		elsif(rising_edge(clock)) then
			if (enable = '1') then
				dataout <= datain;
			end if;
		end if;
	end process;
end behavioral;