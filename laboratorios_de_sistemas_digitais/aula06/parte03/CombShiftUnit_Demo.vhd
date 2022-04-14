library ieee;
use ieee.std_logic_1164.all;

entity combshiftunit_demo is
	generic (d : positive := 50_000_000);
	port(sw : in std_logic_vector(11 downto 0);
		  clock_50 : in std_logic;
		  key  : in  std_logic_vector(2 downto 0);
		  ledr : out std_logic_vector(7 downto 0));
end combshiftunit_demo;

architecture behavioral of combshiftunit_demo is
	signal sclock : std_logic;
begin
	freqd : entity work.clockdividern(behavioral)
	generic map (divfactor => d)
	port map(clkin => clock_50,
				clkout => sclock);

	shreg : entity work.combshiftunit(behavioral)
	port map(datain => sw(7 downto 0),
				shamount => sw(11 downto 9),
				loaden => sw(8),
				rotate => key(0),
				dirleft => key(1),
				sharith => key(2),
				clk  => sclock,
			   dataout  => ledr);
end behavioral;