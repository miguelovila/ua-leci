library ieee;
use ieee.std_logic_1164.all;

entity bin7segdecoder is
	port (bininput  : in  std_logic_vector(3 downto 0);
	      binoutput : out std_logic_vector(6 downto 0));
end bin7segdecoder;

architecture behavioral of bin7segdecoder is
begin
	binoutput <= "1111001" when (bininput = "0001") else  --1 
                "0100100" when (bininput = "0010") else  --2 
                "0110000" when (bininput = "0011") else  --3 
                "0011001" when (bininput = "0100") else  --4 
                "0010010" when (bininput = "0101") else  --5 
                "0000010" when (bininput = "0110") else  --6 
                "1111000" when (bininput = "0111") else  --7 
                "0000000" when (bininput = "1000") else  --8 
                "0010000" when (bininput = "1001") else  --9 
                "0001000" when (bininput = "1010") else  --a 
                "0000011" when (bininput = "1011") else  --b 
                "1000110" when (bininput = "1100") else  --c 
                "0100001" when (bininput = "1101") else  --d 
                "0000110" when (bininput = "1110") else  --e 
                "0001110" when (bininput = "1111") else  --f 
                "1000000";                               --0 
end behavioral;