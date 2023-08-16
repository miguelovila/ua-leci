library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counterdown4 is
	port(clk   : in  std_logic;
		  count : out std_logic_vector(3 downto 0));
end counterdown4;

architecture behavioral of counterdown4 is
	signal s_count : unsigned(3 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			s_count <= s_count-1;
		end if;
	end process;
	count <= std_logic_vector(s_count);
end behavioral;