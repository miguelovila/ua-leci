library ieee;
use ieee.std_logic_1164.all;

entity shiftregister_demo is
	generic (n : positive := 8;
				d : positive := 50_000_000);
	port(sw : in std_logic_vector(0 downto 0);
		  clock_50 : in std_logic;
		  ledr : out std_logic_vector((n-1) downto 0));
end shiftregister_demo;

architecture behavioral of shiftregister_demo is
	signal sclock : std_logic;
begin
	freqd : entity work.clkdividern(behavioral)
	generic map (divfactor => d)
	port map(clkin => clock_50,
				clkout => sclock);

	shreg : entity work.shiftregistern(behavioral)
	generic map (n => n)
	port map(serialin => sw(0),
				clockin  => sclock,
			   dataout  => ledr);
end behavioral;