library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

/*
divisor de frequencia que, por defeito, quando o recebe um
sinal de frequencia 50MHz produz um sinal de frequencia 1Hz
*/

entity divisorfreqn is 
  generic(fatordivisao : positive := 50000000);
  port   (entradaclock :  in  std_logic; 
          saidaclock   :  out std_logic); 
end divisorfreqn; 
 
architecture behavioral of divisorfreqn is 
  subtype contador is natural range 0 to fatordivisao - 1; 
  signal s_contadordivisao : contador := 0;
  signal s_saidaclock : std_logic := '0'; 
begin 
  assert (fatordivisao >= 2);
  process(entradaclock) 
  begin 
    if (rising_edge(entradaclock)) then 
      if (s_contadordivisao >= (fatordivisao - 1)) then 
        s_saidaclock      <= '0'; 
        s_contadordivisao <=  0 ; 
      else 
        if (s_contadordivisao = (fatordivisao / 2 - 1)) then 
          s_saidaclock    <= '1'; 
        end if; 
        s_contadordivisao <= s_contadordivisao + 1; 
      end if; 
    end if; 
  end process;
  saidaclock <= s_saidaclock;
end behavioral;