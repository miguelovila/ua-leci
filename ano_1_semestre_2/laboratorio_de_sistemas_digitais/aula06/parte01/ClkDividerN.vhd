library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
 
entity clkdividern is 
  generic(divfactor : positive := 10); 
  port(clkin        : in  std_logic; 
       clkout       : out std_logic); 
end clkdividern; 
 
architecture behavioral of clkdividern is 
 
  subtype tcounter is natural range 0 to divfactor - 1; 
  signal s_divcounter : tcounter := 0; 
 
begin 
  assert(divfactor >= 2); 
 
  process(clkin) 
  begin 
    if (rising_edge(clkin)) then 
      if (s_divcounter >= (divfactor - 1)) then 
        clkout       <= '0'; 
        s_divcounter <= 0; 
      else 
        if (s_divcounter = (divfactor / 2 - 1)) then 
          clkout <= '1'; 
        end if; 
        s_divcounter <= s_divcounter + 1; 
      end if; 
    end if; 
  end process; 
end behavioral;