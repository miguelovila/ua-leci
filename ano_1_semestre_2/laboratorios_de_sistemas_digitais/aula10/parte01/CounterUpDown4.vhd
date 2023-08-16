library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counterupdown4 is
	port (reset : in std_logic;
			updow : in std_logic;
			clock : in std_logic;
			count : out std_logic_vector(3 downto 0));
end counterupdown4;

architecture behavioral of counterupdown4 is
	signal snum : unsigned(3 downto 0);
begin
	process(clock)
	begin
		if (rising_edge(clock)) then
			if (reset = '1') then
				snum <= (others => '0');
			else
				if (updow = '0') then
					snum <= snum + 1;
				else
					snum <= snum - 1;
				end if;
			end if;
		end if;
	end process;
	count <= std_logic_vector(snum);
end behavioral;