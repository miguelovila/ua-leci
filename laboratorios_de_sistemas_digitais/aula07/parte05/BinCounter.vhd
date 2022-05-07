library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bincounter is
	generic (n		 : positive := 4);
	port(start, stop, clock : in std_logic;
		  countval : out std_logic_vector((n-1) downto 0));
end bincounter;

architecture behavioral of bincounter is
	signal s_startstate : std_logic;
	signal s_countval : unsigned((n-1) downto 0);
begin
	process(start)
	begin
		if (falling_edge(start)) then
			if (s_startstate = '0') then
				s_startstate <= '1';
			else
				null;
			end if;
		end if;
	end process;

	process(clock)
	begin
		if (s_startstate = '1') then
			if (rising_edge(clock)) then
				s_countval <= s_countval+1;
			else
				null;
			end if;
		else
			null;
		end if;
	end process;
	countval <= std_logic_vector(s_countval);
end behavioral;