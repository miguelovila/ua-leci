library ieee; 
use ieee.std_logic_1164.all; 
 
-- entidade sem portos 
entity dec2_4en_tb is 
end dec2_4en_tb; 
 
architecture stimulus of dec2_4en_tb is 
   -- sinais para ligar às entradas da uut 
   signal s_enable  : std_logic; 
   signal s_inputs  : std_logic_vector(1 downto 0); 
   
   -- sinal para ligar às saídas da uut 
   signal s_outputs : std_logic_vector(3 downto 0); 
 
begin 
   -- instanciação da unit under test (uut) 
   uut: entity work.dec2_4en(behavioral) 
        port map(enable  => s_enable, 
                 inputs  => s_inputs, 
                 outputs => s_outputs); 
   
   --process stim 
   stim_proc : process 
   begin   
      wait for 100 ns; 
      s_enable <= '0'; 
      wait for 100 ns; 
      s_enable <= '1'; 
      wait for 100 ns; 
      s_inputs <= "00"; 
      wait for 100 ns; 
      s_inputs <= "10"; 
      wait for 100 ns; 
      s_inputs <= "01"; 
      wait for 100 ns;  
      s_inputs <= "11"; 
      wait for 100 ns; 
   end process; 
end stimulus;