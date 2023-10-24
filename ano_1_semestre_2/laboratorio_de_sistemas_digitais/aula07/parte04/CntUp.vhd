library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cntup is
	port(clk, reset, enable: in std_logic;
		  cntval : out std_logic_vector(29 downto 0));
end cntup;

architecture behavioral of cntup is
	signal s_cntval : unsigned(29 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_cntval <= (others => '0');
			elsif (enable = '1') then
				s_cntval <= s_cntval + 1;
			end if;
		end if;
	end process;
	cntval <= std_logic_vector(s_cntval);
end behavioral;