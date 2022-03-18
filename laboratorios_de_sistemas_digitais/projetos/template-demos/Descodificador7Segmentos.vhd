library ieee;
use ieee.std_logic_1164.all;

entity descodificador7segmentos is
	port (ativo           : in  std_logic := '1';
			entradabinaria  : in  std_logic_vector(3 downto 0);
	      saidabinaria    : out std_logic_vector(6 downto 0));
end descodificador7segmentos;

architecture behavioral of descodificador7segmentos is
begin
	saidabinaria <= "1111111" when (ativo          = '0'   ) else  --desligado 
	                "1111001" when (entradabinaria = "0001") else  --1 
                   "0100100" when (entradabinaria = "0010") else  --2 
                   "0110000" when (entradabinaria = "0011") else  --3 
                   "0011001" when (entradabinaria = "0100") else  --4 
                   "0010010" when (entradabinaria = "0101") else  --5 
                   "0000010" when (entradabinaria = "0110") else  --6 
                   "1111000" when (entradabinaria = "0111") else  --7 
                   "0000000" when (entradabinaria = "1000") else  --8 
                   "0010000" when (entradabinaria = "1001") else  --9 
                   "0001000" when (entradabinaria = "1010") else  --a 
                   "0000011" when (entradabinaria = "1011") else  --b 
                   "1000110" when (entradabinaria = "1100") else  --c 
                   "0100001" when (entradabinaria = "1101") else  --d 
                   "0000110" when (entradabinaria = "1110") else  --e 
                   "0001110" when (entradabinaria = "1111") else  --f 
                   "1000000";                                     --0 
end behavioral;