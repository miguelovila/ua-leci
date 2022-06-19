library ieee;
use ieee.std_logic_1164.all;

entity and2gate is
	port(inport0 : in std_logic;
		  inport1 : in std_logic;
		  outport : out std_logic);
end and2gate;

architecture behavioral of and2gate is
begin
	outport <= inport0 and inport1;
end behavioral;