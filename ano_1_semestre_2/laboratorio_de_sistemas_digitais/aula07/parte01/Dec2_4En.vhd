library ieee; 
use ieee.std_logic_1164.all; 
 
entity dec2_4en is 
   port(enable  : in  std_logic; 
        inputs  : in  std_logic_vector(1 downto 0); 
        outputs : out std_logic_vector(3 downto 0)); 
end dec2_4en; 
 
architecture behavioral of dec2_4en is 
begin 
   process(enable, inputs) 
   begin 
      if (enable = '0') then 
         outputs <= "0000"; 
      else 
         if (inputs = "00") then 
            outputs <= "0001"; 
         elsif (inputs = "01") then 
            outputs <= "0010"; 
         elsif (inputs = "10") then 
            outputs <= "0100"; 
         else 
            outputs <= "1000"; 
         end if; 
      end if; 
   end process; 
end behavioral;