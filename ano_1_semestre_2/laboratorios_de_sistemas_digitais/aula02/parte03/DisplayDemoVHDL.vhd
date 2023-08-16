library ieee;
use ieee.std_logic_1164.all;

entity displaydemovhdl is
	port (sw   : in  std_logic_vector(3 downto 0);
	      key  : in  std_logic_vector(0 downto 0);
		   hex0 : out std_logic_vector(6 downto 0);
			ledg : out std_logic_vector(3 downto 0);
			ledr : out std_logic_vector(6 downto 0));
end displaydemovhdl;

architecture shell of displaydemovhdl is
	signal signalout : std_logic_vector(6 downto 0);
begin
	system_core : entity work.bin7segdecoder(behavioral)
					  port map(bininput => sw,
								  enable => key(0),
								  decout_n => signalout);
	hex0 <= signalout;
	ledr <= signalout;
	ledg <= sw;
end shell;