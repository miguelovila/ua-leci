library ieee;
use ieee.std_logic_1164.all;

entity notgate is
		 port(inport  : in std_logic;
				outport : out std_logic);
end notgate;

architecture behavioral of notgate is
begin
	outport <= not inport;
end behavioral;