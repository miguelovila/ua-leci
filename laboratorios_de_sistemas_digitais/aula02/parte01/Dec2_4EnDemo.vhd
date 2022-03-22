library ieee;
use ieee.std_logic_1164.all;

entity dec2_4endemo is
	port(  sw : in  std_logic_vector(2 downto 0);
		  ledg : out std_logic_vector(3 downto 0));
end dec2_4endemo;

architecture shell of dec2_4endemo is
begin
	system_core : entity work.dec2_4en(behavproc) --behavequations ou behavproc ou behavassign dependendo da implementacao que se queira usar
	port map(enable => sw(2),
				inputs => sw(1 downto 0),
				outputs => ledg(3 downto 0));
end shell;