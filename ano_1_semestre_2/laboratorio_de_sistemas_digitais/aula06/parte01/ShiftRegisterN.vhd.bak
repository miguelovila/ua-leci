library ieee;
use ieee.std_logic_1164.all;

entity shiftregister4 is
	port(serialin, clockin : in std_logic;
		  dataout : out std_logic_vector(3 downto 0));
end shiftregister4;

architecture behavioral of shiftregister4 is
	signal sdataout : std_logic_vector(3 downto 0);
begin
	process(clockin)
	begin
		if (rising_edge(clockin)) then
			sdataout(3 downto 1) <= sdataout(2 downto 0);
			sdataout(0) <= serialin;
		end if;
	end process;
	dataout <= sdataout;
end behavioral;