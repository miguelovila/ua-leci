library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity binudcntenrst4 is
	port(reset    : in  std_logic;
        clk      : in  std_logic;
		  enable   : in  std_logic;
		  updown_n : in  std_logic;
		  cntout   : out std_logic_vector(3 downto 0));
end binudcntenrst4;

architecture behavioral of binudcntenrst4 is
	signal s_cntvalue : unsigned(3 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_cntvalue <= (others => '0');
			elsif (enable = '1') then
				if (updown_n = '0') then
					s_cntvalue <= s_cntvalue - 1;
				else
					s_cntvalue <= s_cntvalue + 1;
				end if;
			end if;
		end if;
	end process;
	cntout <= std_logic_vector(s_cntvalue);
end behavioral;