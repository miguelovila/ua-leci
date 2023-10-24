library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity freqdivider is
	port(clkin  : in std_logic;
		  k      : in std_logic_vector(31 downto 0);
		  clkout : out std_logic);
end freqdivider;

architecture behavioral of freqdivider is
	signal s_counter : unsigned(31 downto 0);
	signal s_halfway : unsigned(31 downto 0);
begin
	s_halfway <= (unsigned(k) / 2);
	process(clkin)
	begin
		if (rising_edge(clkin)) then
			if (s_counter = s_halfway) then
				clkout <= '1';
			end if;
			if (s_counter = unsigned(k)-1) then
				s_counter <= (others => '0');
				clkout <= '0';
			end if;
			s_counter <= s_counter + 1;
		end if;
	end process;
end behavioral;