library ieee;
use ieee.std_logic_1164.all;

entity shiftregistern is
	generic (n		 : positive := 4);
	port(serialin, clockin : in std_logic;
		  dataout : out std_logic_vector((n-1) downto 0));
end shiftregistern;

architecture behavioral of shiftregistern is
	signal sdataout : std_logic_vector((n-1) downto 0);
begin
	process(clockin)
	begin
		if (rising_edge(clockin)) then
			sdataout((n-1) downto 1) <= sdataout((n-2) downto 0);
			sdataout(0) <= serialin;
		end if;
	end process;
	dataout <= sdataout;
end behavioral;