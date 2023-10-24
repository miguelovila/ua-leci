library ieee;
use ieee.std_logic_1164.all;

entity flipflopd is
	port(clk   :  in std_logic;
		  reset :  in std_logic;
		  set   :  in std_logic;
        d     :  in std_logic;
		  q     : out std_logic);
end flipflopd;

architecture behavioral of flipflopd is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				q <= '0';
			elsif (set = '1') then
				q <= d;
			end if;
		end if;
	end process;
end behavioral;

architecture asyncbehavioral of flipflopd is
begin
	process(clk, reset, set)
	begin
		if (reset = '1') then
			q <= '0';
		elsif (set = '1') then
			q <= d;
		elsif (rising_edge(clk)) then
			q <= d;
		end if;
	end process;
end asyncbehavioral;