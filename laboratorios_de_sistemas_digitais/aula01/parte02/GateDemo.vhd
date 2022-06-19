library ieee;
use ieee.std_logic_1164.all;

entity gatedemo is
	port (sw   : in std_logic_vector(1 downto 0);
			ledr : out std_logic_vector(0 downto 0));
end gatedemo;

architecture shell of gatedemo is
begin
	system_core : entity work.nand2gate(structural)
					  port map(inport0 => sw(0),
								  inport1 => sw(1),
								  outport => ledr(0));
end shell;