library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
 
entity freqdivider is 
  port(clock_in        : in  std_logic; 
       clock_out       : out std_logic); 
end freqdivider;
 
architecture behavioral of freqdivider is 
  subtype tcounter is natural range 0 to 50000000 - 1; 
  signal s_counter : tcounter := 0; 
  signal s_clock_out : std_logic := '0'; 
begin 
  process(clock_in) 
  begin 
    if (rising_edge(clock_in)) then 
      if (s_counter >= (50000000 - 1)) then 
        s_clock_out <= '0'; 
        s_counter <= 0; 
      else 
        if (s_counter = (50000000 / 2 - 1)) then 
          s_clock_out <= '1'; 
        end if; 
        s_counter <= s_counter + 1; 
      end if; 
    end if; 
  end process; 
  clock_out <= s_clock_out;
end behavioral;