library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timern is
	generic(n : positive := 6);
	port   (reset, start, enable, clock : in  std_logic;
			  timerout : out std_logic);
end timern;

architecture behavioral of timern is
	signal s_count : integer;
	signal startstate : std_logic;
begin
	process(clock)

	end process;
end behavioral;