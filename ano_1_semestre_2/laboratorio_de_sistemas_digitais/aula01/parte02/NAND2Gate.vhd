library ieee;
use ieee.std_logic_1164.all;

entity nand2gate is
	port(inport0 : in std_logic;
		  inport1 : in std_logic;
		  outport : out std_logic);
end nand2gate;

architecture structural of nand2gate is
	signal andout : std_logic;
begin
	andgate : entity work.and2gate(behavioral)
				 port map(inport0 => inport0,
							 inport1 => inport1,
							 outport => andout);
	notgate : entity work.notgate(behavioral)
				 port map(inport => andout,
							 outport => outport);
end structural;