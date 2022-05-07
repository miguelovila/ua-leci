library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
	generic(khzclkfreq     : positive := 50000;
			  msecmininwidth : positive := 100;
			  inpolarity     : std_logic := '0';
			  outpolarity    : std_logic := '1');
	
	port(refclk    : in  std_logic;
        dirtyin   : in  std_logic;
		  pulsedout : out std_logic);
end debouncer;

architecture behavioral of debouncer is
	constant min_in_width_cycles : positive := msecmininwidth * khzclkfreq;
	subtype tcounter is natural range 0 to min_in_width_cycles;
	signal s_debouncecnt : tcounter := 0;
	signal s_dirtyin, s_previousin, s_pulsedout : std_logic;
begin
	in_sync_proc : process(refclk)
	begin
		if (rising_edge(refclk)) then
			if (inpolarity = '1') then
				s_dirtyin <= dirtyin;
			else
				s_dirtyin <= not dirtyin;
			end if;
			s_previousin <= s_dirtyin;
		end if;
	end process;
	
	count_proc : process(refclk)
	begin
		if (rising_edge(refclk)) then
			if ((s_dirtyin = '0') or (s_debouncecnt > min_in_width_cycles)) then
				s_debouncecnt <= 0;
				s_pulsedout <= '0';
			elsif (s_dirtyin = '1') then
				if (s_previousin = '0') then
					s_debouncecnt <= min_in_width_cycles;
					s_pulsedout <= '0';
				else
					if (s_debouncecnt >= 1) then
						s_debouncecnt <= s_debouncecnt - 1;
					end if;
					if (s_debouncecnt = 1) then
						s_pulsedout <= '1';
					else
						s_pulsedout <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;
	
	pulsedout <= s_pulsedout when (outpolarity = '1') else not s_pulsedout;
end behavioral;